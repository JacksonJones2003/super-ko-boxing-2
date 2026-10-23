.class public Lcom/glu/android/GluJNI;
.super Ljava/lang/Object;
.source "GluJNI.java"


# static fields
.field public static final COLOR_RGB444:I = 0x1bc

.field public static final COLOR_RGB565:I = 0x235

.field public static final COLOR_RGB888:I = 0x378

.field public static final EVENT_DESTROY:I = 0x3

.field public static final EVENT_GL_TEXTURES_LOST:I = 0x4

.field public static final EVENT_RESUME:I = 0x2

.field public static final EVENT_SUSPEND:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native initGLAttributes(IIIII)V
.end method

.method public static native initJNILink([BII)I
.end method

.method public static initJNILinkJ([BI)I
    .locals 1
    .param p0, "library"    # [B
    .param p1, "buildV1"    # I

    .prologue
    .line 60
    array-length v0, p0

    invoke-static {p0, v0, p1}, Lcom/glu/android/GluJNI;->initJNILink([BII)I

    move-result v0

    return v0
.end method

.method public static native initNativeLibrary(II)I
.end method

.method public static native initResFile(Ljava/io/FileDescriptor;[BII)I
.end method

.method public static initResFileJ()I
    .locals 6

    .prologue
    .line 70
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 74
    .local v1, "game":Lcom/glu/android/GameLet;
    const-string v3, "/sdcard/glu/skob2"

    .line 75
    .local v3, "sdPath":Ljava/lang/String;
    sget-object v4, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    sget-boolean v4, Lcom/glu/android/ResFileDownloadView;->m_usesAltSDCardPath:Z

    if-eqz v4, :cond_0

    .line 76
    const-string v4, "/sdcard/"

    const-string v5, "/sdcard/sd/"

    invoke-static {v3, v4, v5}, Lcom/glu/android/GluUtil;->replaceAllNotRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 78
    :cond_0
    invoke-static {v3}, Lcom/glu/android/GluUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 79
    .local v2, "sdBA":[B
    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/GluUtil;->filePathNoEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/GluUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 80
    .local v0, "cacheDirBA":[B
    array-length v4, v2

    array-length v5, v0

    invoke-static {v2, v4, v0, v5}, Lcom/glu/android/GluJNI;->initResPaths([BI[BI)V

    .line 82
    const/4 v4, 0x0

    return v4
.end method

.method public static native initResPaths([BI[BI)V
.end method

.method public static native keyPressed(I)V
.end method

.method public static native keyReleased(I)V
.end method

.method public static native nativeChecksum([BIIII)J
.end method

.method public static nativeChecksumJ(Ljava/lang/String;III)J
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "filesize"    # I
    .param p2, "blockBit"    # I
    .param p3, "nextBlockBit"    # I

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/GluUtil;->charArrayToByteArray([C)[B

    move-result-object v0

    .line 66
    .local v0, "filenameBA":[B
    array-length v1, v0

    invoke-static {v0, v1, p1, p2, p3}, Lcom/glu/android/GluJNI;->nativeChecksum([BIIII)J

    move-result-wide v1

    return-wide v1
.end method

.method public static native pointerDragged(II)V
.end method

.method public static native pointerPressed(II)V
.end method

.method public static native pointerReleased(II)V
.end method

.method public static native reportAccelerometerPosition(III)V
.end method

.method public static native requestAudioData()V
.end method

.method public static native setAdEnabled(I)V
.end method

.method public static native setAdOffsets(IIII)V
.end method

.method public static native setAtitcCompressionSupported(I)V
.end method

.method public static native setLowEndBuild()V
.end method

.method public static native systemEvent(I)V
.end method

.method public static native tickAndDraw(I)V
.end method
