package com.glu.android;

import android.app.Application;
import android.content.Context;
import android.content.res.AssetManager;
import android.os.Process;
import android.util.Log;

import com.zettabridge.core.ZBridge;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;

/**
 * Runs the game's arm32 native code through the embedded ZettaBridge translator when this
 * process is 64-bit. On a device that installed the APK as 32-bit the original libraries load
 * natively and nothing here is used.
 *
 * Layout ZettaBridge expects (all under filesDir):
 *   zb/sysroot, zb/guest, zb/host       the arm32 runtime, from assets/zb
 *   plugins/PKG/lib/lib*.so             the game's arm32 libraries, from assets/zbgame
 *   plugins/PKG/proxy/libglujni.so      copy of the arm64 proxy that stands in for libglujni
 */
public final class ZbEmbed {
    static final String TAG = "SKOB2ZB";
    static final String[] GAME_LIBS = { "libglujni.so", "libskob2V2.so" };
    static final int TARGET_SDK = 4;

    static boolean translated;
    static File pluginLib;

    private ZbEmbed() {}

    /** Replaces System.loadLibrary in GameLet's static initializer. */
    public static void loadLibrary(String name) {
        if (!Process.is64Bit()) {
            System.loadLibrary(name);
            return;
        }
        try {
            Context app = currentApplication();
            File files = app.getFilesDir().getCanonicalFile();
            File root = new File(files, "plugins/" + app.getPackageName());
            String version = readAsset(app.getAssets(), "zb-version.txt").trim();
            installRuntime(app, files, version);
            installGame(app, root, version);

            File reports = new File(files, "zb-report.txt");
            ZBridge.setReportFile(reports.getPath());
            ZBridge.activatePlugin(root.getPath(), TARGET_SDK, ZbEmbed.class.getClassLoader());
            pluginLib = new File(root, "lib");
            translated = true;
            File proxy = new File(root, "proxy/lib" + name + ".so");
            Log.i(TAG, "loading " + name + " through ZettaBridge");
            System.load(proxy.getPath());
        } catch (Throwable t) {
            Log.e(TAG, "ZettaBridge load failed: " + ZBridge.lastLoadError(), t);
            throw new UnsatisfiedLinkError("ZettaBridge: " + t);
        }
    }

    /** GameLet hands libglujni an absolute path to the engine library; point it at our copy. */
    public static String mapLibPath(String path) {
        if (!translated) return path;
        return new File(pluginLib, new File(path).getName()).getPath();
    }

    static Context currentApplication() throws Exception {
        Class<?> at = Class.forName("android.app.ActivityThread");
        return (Application) at.getMethod("currentApplication").invoke(null);
    }

    static void installRuntime(Context app, File files, String version) throws IOException {
        File target = new File(files, "zb");
        File marker = new File(target, ".bundle-version");
        if (marker.isFile() && version.equals(readFile(marker))) return;
        deleteRecursive(target);
        try (BufferedReader list = new BufferedReader(new InputStreamReader(app.getAssets().open("zb-files.txt")))) {
            String asset;
            while ((asset = list.readLine()) != null) {
                if (asset.isEmpty()) continue;
                File out = new File(files, asset);
                copyAsset(app.getAssets(), asset, out);
                out.setReadOnly();
                if (asset.equals("zb/guest/zbhost") || asset.equals("zb/sysroot/system/bin/linker")) {
                    out.setExecutable(true, true);
                }
            }
        }
        writeFile(marker, version);
    }

    static void installGame(Context app, File root, String version) throws IOException {
        File marker = new File(root, ".game-version");
        if (marker.isFile() && version.equals(readFile(marker))) return;
        deleteRecursive(root);
        File lib = new File(root, "lib");
        File proxyDir = new File(root, "proxy");
        lib.mkdirs();
        proxyDir.mkdirs();
        for (String name : GAME_LIBS) {
            File out = new File(lib, name);
            copyAsset(app.getAssets(), "zbgame/" + name, out);
            Log.i(TAG, name + ": " + ZBridge.fixGuestLibrary(out.getPath()));
            out.setReadOnly();
        }
        // Only libglujni is loaded from Java; it dlopens the engine library itself.
        File proxyTemplate = new File(app.getFilesDir(), "zb/host/libzbproxy.so");
        try (InputStream in = new java.io.FileInputStream(proxyTemplate)) {
            File proxy = new File(proxyDir, "libglujni.so");
            copy(in, proxy);
            proxy.setReadOnly();
        }
        writeFile(marker, version);
    }

    static void copyAsset(AssetManager assets, String asset, File out) throws IOException {
        try (InputStream in = assets.open(asset, AssetManager.ACCESS_STREAMING)) {
            copy(in, out);
        }
    }

    static void copy(InputStream in, File out) throws IOException {
        out.getParentFile().mkdirs();
        File tmp = new File(out.getPath() + ".tmp");
        try (OutputStream o = new FileOutputStream(tmp)) {
            byte[] buf = new byte[65536];
            int n;
            while ((n = in.read(buf)) > 0) o.write(buf, 0, n);
        }
        if (!tmp.renameTo(out)) throw new IOException("cannot write " + out);
    }

    static String readAsset(AssetManager assets, String name) throws IOException {
        try (InputStream in = assets.open(name)) {
            return readAll(in);
        }
    }

    static String readFile(File f) throws IOException {
        try (InputStream in = new java.io.FileInputStream(f)) {
            return readAll(in).trim();
        }
    }

    static String readAll(InputStream in) throws IOException {
        StringBuilder sb = new StringBuilder();
        byte[] buf = new byte[256];
        int n;
        while ((n = in.read(buf)) > 0) sb.append(new String(buf, 0, n, "US-ASCII"));
        return sb.toString();
    }

    static void writeFile(File f, String text) throws IOException {
        f.getParentFile().mkdirs();
        try (OutputStream o = new FileOutputStream(f)) {
            o.write(text.getBytes("US-ASCII"));
        }
    }

    static void deleteRecursive(File f) {
        File[] children = f.listFiles();
        if (children != null) for (File c : children) deleteRecursive(c);
        f.delete();
    }
}
