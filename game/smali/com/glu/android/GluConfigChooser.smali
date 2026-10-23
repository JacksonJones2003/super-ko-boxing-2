.class public Lcom/glu/android/GluConfigChooser;
.super Ljava/lang/Object;
.source "GluConfigChooser.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final EGL_OPENGL_ES_BIT:I = 0x1

.field public static instance:Lcom/glu/android/GluConfigChooser;

.field private static sm_configAttribs2:[I


# instance fields
.field public m_alphaSize:I

.field public m_blueSize:I

.field public m_colorDepth:I

.field public m_depthSize:I

.field public m_greenSize:I

.field public m_openGLBit:I

.field public m_redSize:I

.field public m_stencilSize:I

.field private m_value:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluConfigChooser;->instance:Lcom/glu/android/GluConfigChooser;

    .line 36
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/glu/android/GluConfigChooser;->sm_configAttribs2:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x3024
        0x4
        0x3023
        0x4
        0x3022
        0x4
        0x3040
        0x1
        0x3038
    .end array-data
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 2
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "a"    # I
    .param p5, "depth"    # I
    .param p6, "stencil"    # I
    .param p7, "versionMajor"    # I
    .param p8, "versionMinor"    # I

    .prologue
    const/4 v1, 0x1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/glu/android/GluConfigChooser;->m_openGLBit:I

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/GluConfigChooser;->m_colorDepth:I

    .line 28
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/glu/android/GluConfigChooser;->m_value:[I

    .line 47
    sput-object p0, Lcom/glu/android/GluConfigChooser;->instance:Lcom/glu/android/GluConfigChooser;

    .line 49
    iput p1, p0, Lcom/glu/android/GluConfigChooser;->m_redSize:I

    .line 50
    iput p2, p0, Lcom/glu/android/GluConfigChooser;->m_greenSize:I

    .line 51
    iput p3, p0, Lcom/glu/android/GluConfigChooser;->m_blueSize:I

    .line 52
    iput p4, p0, Lcom/glu/android/GluConfigChooser;->m_alphaSize:I

    .line 53
    iput p5, p0, Lcom/glu/android/GluConfigChooser;->m_depthSize:I

    .line 54
    iput p6, p0, Lcom/glu/android/GluConfigChooser;->m_stencilSize:I

    .line 56
    if-ne p7, v1, :cond_0

    .line 57
    iput v1, p0, Lcom/glu/android/GluConfigChooser;->m_openGLBit:I

    .line 62
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x2

    if-ne p7, v0, :cond_1

    .line 59
    const/4 v0, 0x4

    iput v0, p0, Lcom/glu/android/GluConfigChooser;->m_openGLBit:I

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown OpenGL version requested."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;
    .param p4, "attribute"    # I
    .param p5, "defaultValue"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/glu/android/GluConfigChooser;->m_value:[I

    invoke-interface {p1, p2, p3, p4, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/glu/android/GluConfigChooser;->m_value:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 150
    :goto_0
    return v0

    :cond_0
    move v0, p5

    goto :goto_0
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 9
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 68
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 69
    .local v5, "num_config":[I
    sget-object v2, Lcom/glu/android/GluConfigChooser;->sm_configAttribs2:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 71
    aget v4, v5, v4

    .line 73
    .local v4, "numConfigs":I
    if-gtz v4, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_0
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 80
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    sget-object v2, Lcom/glu/android/GluConfigChooser;->sm_configAttribs2:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 84
    invoke-virtual {p0, p1, p2, v3}, Lcom/glu/android/GluConfigChooser;->doChooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 87
    .local v6, "ret":Ljavax/microedition/khronos/egl/EGLConfig;
    iget v0, p0, Lcom/glu/android/GluConfigChooser;->m_colorDepth:I

    sget v1, Lcom/glu/android/GluView;->m_glVersionMajor:I

    sget v2, Lcom/glu/android/GluView;->m_glVersionMinor:I

    iget v7, p0, Lcom/glu/android/GluConfigChooser;->m_depthSize:I

    iget v8, p0, Lcom/glu/android/GluConfigChooser;->m_stencilSize:I

    invoke-static {v0, v1, v2, v7, v8}, Lcom/glu/android/GluJNI;->initGLAttributes(IIIII)V

    .line 89
    return-object v6
.end method

.method public doChooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 15
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "configs"    # [Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 96
    const/4 v10, 0x0

    .line 98
    .local v10, "failsafeConfig":Ljavax/microedition/khronos/egl/EGLConfig;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move v1, v0

    if-ge v12, v1, :cond_2

    .line 100
    aget-object v4, p3, v12

    .line 102
    .local v4, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    const/16 v5, 0x3025

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/glu/android/GluConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v9

    .line 103
    .local v9, "d":I
    const/16 v5, 0x3026

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/glu/android/GluConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v14

    .line 106
    .local v14, "s":I
    iget v1, p0, Lcom/glu/android/GluConfigChooser;->m_depthSize:I

    if-ne v9, v1, :cond_0

    iget v1, p0, Lcom/glu/android/GluConfigChooser;->m_stencilSize:I

    if-eq v14, v1, :cond_1

    .line 98
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 110
    :cond_1
    const/16 v5, 0x3024

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/glu/android/GluConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v13

    .line 111
    .local v13, "r":I
    const/16 v5, 0x3023

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/glu/android/GluConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v11

    .line 112
    .local v11, "g":I
    const/16 v5, 0x3022

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/glu/android/GluConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v8

    .line 113
    .local v8, "b":I
    const/16 v5, 0x3021

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/glu/android/GluConfigChooser;->findConfigAttrib(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v7

    .line 115
    .local v7, "a":I
    iget v1, p0, Lcom/glu/android/GluConfigChooser;->m_redSize:I

    if-ne v13, v1, :cond_0

    iget v1, p0, Lcom/glu/android/GluConfigChooser;->m_greenSize:I

    if-ne v11, v1, :cond_0

    iget v1, p0, Lcom/glu/android/GluConfigChooser;->m_blueSize:I

    if-ne v8, v1, :cond_0

    iget v1, p0, Lcom/glu/android/GluConfigChooser;->m_alphaSize:I

    if-ne v7, v1, :cond_0

    .line 117
    mul-int/lit8 v1, v13, 0x64

    mul-int/lit8 v2, v11, 0xa

    add-int/2addr v1, v2

    add-int/2addr v1, v8

    iput v1, p0, Lcom/glu/android/GluConfigChooser;->m_colorDepth:I

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/glu/android/GluConfigChooser;->m_colorDepth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " color depth..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "m_depthSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/glu/android/GluConfigChooser;->m_depthSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   m_stencilSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/glu/android/GluConfigChooser;->m_stencilSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 123
    return-object v4

    .line 127
    .end local v4    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v7    # "a":I
    .end local v8    # "b":I
    .end local v9    # "d":I
    .end local v11    # "g":I
    .end local v13    # "r":I
    .end local v14    # "s":I
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1
.end method
