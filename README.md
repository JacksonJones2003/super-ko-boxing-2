# Super KO Boxing 2 (Android 2.8) – patched build

Personal, private restoration of Glu's *Super KO Boxing 2* (`com.glu.android.skob2_free`, 2011) so it
runs on current Android phones, including 64-bit-only ones. **Private repo: the game, its resource
pack and soundtrack are Glu's copyrighted work, and the embedded ZettaBridge is licensed for
noncommercial use only. Do not make this repo public or share the APK.**

Tested on a Vivo foldable (Android 17, MediaTek/Mali) and a Galaxy Z Fold 7 (Android 17,
Snapdragon 8 Elite/Adreno, no 32-bit support).

## Layout

| Path | What it is |
|---|---|
| `release/super-ko-boxing-2-64bit.apk` | The finished APK. Installs normally (targetSdk 28). |
| `originals/` | Inputs: the original 2.8 APK, the v2.7 resource cache zip, the iOS IPA (music source). |
| `game/` | The patched APK, decoded with apktool 3.0.3 (smali, resources, assets, libs). |
| `java/` | `ZbEmbed` (loads the arm32 engine through ZettaBridge on 64-bit) and ZettaBridge's `ZBridge` JNI class. |
| `native-patch/cave.s` | ARM code patched into `libskob2V2.so` for music (see below). |
| `zettabridge/` | Patch against ZettaBridge `d6066b9` (GLES 1.1 bridge), its Dynarmic patches and licenses. |
| `signing/skob2.jks` | Signing key (password `android`). Keep it: updates must use the same key. |
| `build.sh` | Rebuilds `release/` from `game/` + `java/`. |

## What was changed

- **Resource pack bundled.** The 85 MB `skob2_none.big` (from the v2.7 cache) is in the APK assets;
  `ResInstaller` copies it to the app's private storage on first launch, since Glu's download server is gone.
- **Music restored.** The Android port's `Hardware::PlayMusic/Stop/Pause/Resume/SetMusicVolume` were empty
  stubs. They now branch to `native-patch/cave.s` (placed in the dead `CDebug_Android::LogHexDump`), which
  passes the track and command through the existing `soundEvent` JNI callback to `MusicPlayer` (Java,
  MediaPlayer). The nine MP3s come from the iOS IPA (`game/assets/music`).
- **Crash fixes.** OpenFeint (shut down 2012) threw on achievement events mid-fight: `gameCenterEvent` now
  catches it. `AudioTrack` was used from two threads at once (crashed on the Fold 7): `DeviceSound` now locks.
- **Display.** Immersive fullscreen, 3:2 aspect kept with letter/pillarboxing, dead AdSense banner space
  removed, `sensorLandscape` (flips 180°), high-res launcher icon from the iOS artwork.
- **targetSdk 4 → 28** so Android 14+ installs it without "target SDK too low": `configChanges` covers screen
  size/density (fold/unfold must not restart the engine), `org.apache.http.legacy` declared for OpenFeint,
  cleartext allowed. The disabled Verizon licence code is the only phone-state user and never runs.
- **64-bit support.** `lib/arm64-v8a/libzbridge.so` plus the arm32 runtime in `assets/zb` (bionic from the
  AOSP GSI, ZettaBridge guest stubs) and the engine in `assets/zbgame`. On a 64-bit process, `ZbEmbed`
  installs these, activates ZettaBridge and loads a proxy in place of `libglujni`; ZettaBridge translates
  the arm32 code with Dynarmic. On 32-bit-capable installs the original libs load natively.
  ZettaBridge only had placeholder GLES 1.1 stubs, so `zettabridge/` adds `HostGles1`: 114 generated
  passthroughs for the GLES 1.1-only and OES entry points, with client-array/VBO pointer handling.

## Installing

`adb install -r release/super-ko-boxing-2-64bit.apk` or open it from the phone's file manager. It
installs over earlier builds signed with `signing/skob2.jks` and keeps saves.

## Rebuilding the ZettaBridge pieces

Clone `https://github.com/ZailoxTT/ZettaBridge` at `d6066b9`, apply `zettabridge/*.patch` (the Dynarmic ones
inside `third_party/dynarmic`), then follow its README with NDK r29 (`NDK_HOST=darwin-x86_64` on a Mac):
`tools/build_guest.sh`, `tools/extract_sysroot.sh`, and the `android-arm64` CMake build of `zbridge zbproxy`.
Copy the results into `game/lib/arm64-v8a` and `game/assets/zb`, and refresh `game/assets/zb-version.txt`.

## Credits and licences

- *Super KO Boxing 2* © Glu Mobile. Not affiliated with or endorsed by Glu.
- [ZettaBridge](https://github.com/ZailoxTT/ZettaBridge) by ZailoxTT: PolyForm Noncommercial 1.0.0 +
  PolyForm Perimeter 1.0.1 (copies in `zettabridge/`). Its README requires a separate licence for shipping
  it inside a product.
- Dynarmic (0BSD), AOSP bionic (Apache 2.0).
