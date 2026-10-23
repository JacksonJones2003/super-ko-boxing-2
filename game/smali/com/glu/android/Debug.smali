.class public Lcom/glu/android/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_LOCALES:Z

.field public static final EGL_ATTRIBUTES:[I

.field public static final EGL_ATTRIBUTE_NAMES:[Ljava/lang/String;

.field public static rawLine:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x21

    .line 72
    const/16 v0, 0x50

    new-array v0, v0, [C

    sput-object v0, Lcom/glu/android/Debug;->rawLine:[C

    .line 258
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/glu/android/Debug;->EGL_ATTRIBUTES:[I

    .line 293
    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "EGL_BUFFER_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "EGL_ALPHA_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "EGL_BLUE_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "EGL_GREEN_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EGL_RED_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "EGL_DEPTH_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EGL_STENCIL_SIZE"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EGL_CONFIG_CAVEAT"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EGL_CONFIG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EGL_LEVEL"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "EGL_MAX_PBUFFER_HEIGHT"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "EGL_MAX_PBUFFER_PIXELS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "EGL_MAX_PBUFFER_WIDTH"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "EGL_NATIVE_RENDERABLE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "EGL_NATIVE_VISUAL_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "EGL_NATIVE_VISUAL_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EGL_PRESERVED_RESOURCES"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EGL_SAMPLES"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EGL_SAMPLE_BUFFERS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EGL_SURFACE_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EGL_TRANSPARENT_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EGL_TRANSPARENT_RED_VALUE"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "EGL_TRANSPARENT_GREEN_VALUE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "EGL_TRANSPARENT_BLUE_VALUE"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "EGL_BIND_TO_TEXTURE_RGB"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "EGL_BIND_TO_TEXTURE_RGBA"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "EGL_MIN_SWAP_INTERVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "EGL_MAX_SWAP_INTERVAL"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "EGL_LUMINANCE_SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "EGL_ALPHA_MASK_SIZE"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "EGL_COLOR_BUFFER_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "EGL_RENDERABLE_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "EGL_CONFORMANT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/glu/android/Debug;->EGL_ATTRIBUTE_NAMES:[Ljava/lang/String;

    return-void

    .line 258
    :array_0
    .array-data 4
        0x3020
        0x3021
        0x3022
        0x3023
        0x3024
        0x3025
        0x3026
        0x3027
        0x3028
        0x3029
        0x302a
        0x302b
        0x302c
        0x302d
        0x302e
        0x302f
        0x3030
        0x3031
        0x3032
        0x3033
        0x3034
        0x3037
        0x3036
        0x3035
        0x3039
        0x303a
        0x303b
        0x303c
        0x303d
        0x303e
        0x303f
        0x3040
        0x3042
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDataEmpty([B)V
    .locals 0
    .param p0, "data"    # [B

    .prologue
    .line 164
    return-void
.end method

.method public static debugEGL(Ljavax/microedition/khronos/egl/EGL10;)V
    .locals 0
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;

    .prologue
    .line 108
    return-void
.end method

.method public static getStringSafe([Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1
    .param p0, "arr"    # [Ljava/lang/Object;
    .param p1, "i"    # I

    .prologue
    .line 187
    array-length v0, p0

    if-lt p1, v0, :cond_0

    .line 188
    const-string v0, "OUTOFRANGE"

    .line 194
    .end local p0    # "arr":[Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 189
    .restart local p0    # "arr":[Ljava/lang/Object;
    :cond_0
    aget-object v0, p0, p1

    if-nez v0, :cond_1

    .line 190
    const-string v0, "NULL"

    goto :goto_0

    .line 191
    :cond_1
    aget-object v0, p0, p1

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 192
    aget-object p0, p0, p1

    .end local p0    # "arr":[Ljava/lang/Object;
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0

    .line 194
    .restart local p0    # "arr":[Ljava/lang/Object;
    :cond_2
    const-string v0, "NOTSTRING"

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 29
    return-void
.end method

.method public static printConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p0, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p1, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 131
    return-void
.end method

.method public static printDirectoryRecursive(Ljava/io/File;)V
    .locals 1
    .param p0, "dir"    # Ljava/io/File;

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/glu/android/Debug;->printDirectoryRecursive(Ljava/io/File;I)V

    return-void
.end method

.method public static printDirectoryRecursive(Ljava/io/File;I)V
    .locals 0
    .param p0, "dir"    # Ljava/io/File;
    .param p1, "level"    # I

    .prologue
    .line 225
    return-void
.end method

.method public static printDirectoryRecursive(Ljava/lang/String;)V
    .locals 1
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/glu/android/Debug;->printDirectoryRecursive(Ljava/io/File;)V

    return-void
.end method

.method public static printFreeMemory()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glu/android/Debug;->printFreeMemory(Ljava/lang/String;)V

    return-void
.end method

.method public static printFreeMemory(Ljava/lang/String;)V
    .locals 0
    .param p0, "point"    # Ljava/lang/String;

    .prologue
    .line 152
    return-void
.end method

.method public static printHexDump([B)V
    .locals 0
    .param p0, "data"    # [B

    .prologue
    .line 76
    return-void
.end method

.method public static printMapProperties(Ljava/util/Map;)V
    .locals 0
    .param p0, "map"    # Ljava/util/Map;

    .prologue
    .line 199
    return-void
.end method

.method public static printPathFiles(Lcom/glu/android/GameLet;)V
    .locals 0
    .param p0, "gamelet"    # Lcom/glu/android/GameLet;

    .prologue
    .line 36
    return-void
.end method
