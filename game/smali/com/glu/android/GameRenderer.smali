.class public Lcom/glu/android/GameRenderer;
.super Ljava/lang/Object;
.source "GameRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field public static final MAX_TICK:I = 0x0

.field public static final THROTTLEhZ:I = 0x19

.field public static final THROTTLEms:I = 0x28

.field public static hasSurface:Z

.field public static instance:Lcom/glu/android/GameRenderer;

.field static paintCycle:Z

.field public static final sleepPerTick:I


# instance fields
.field public height:I

.field public lastTickTime:J

.field public m_appDone:Z

.field public numTicks:I

.field public width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    .line 37
    sput-boolean v1, Lcom/glu/android/GameRenderer;->hasSurface:Z

    .line 45
    sput-boolean v1, Lcom/glu/android/GameRenderer;->paintCycle:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    .line 21
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/glu/android/GameRenderer;->width:I

    .line 22
    const/16 v0, 0x140

    iput v0, p0, Lcom/glu/android/GameRenderer;->height:I

    .line 25
    iput-boolean v2, p0, Lcom/glu/android/GameRenderer;->m_appDone:Z

    .line 35
    iput v2, p0, Lcom/glu/android/GameRenderer;->numTicks:I

    .line 41
    sput-object p0, Lcom/glu/android/GameRenderer;->instance:Lcom/glu/android/GameRenderer;

    .line 42
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .param p1, "arg0"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const-wide/16 v10, 0x28

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 48
    iget-boolean v6, p0, Lcom/glu/android/GameRenderer;->m_appDone:Z

    if-eqz v6, :cond_0

    .line 114
    :goto_0
    return-void

    .line 51
    :cond_0
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 52
    .local v0, "context":Ljavax/microedition/khronos/egl/EGL10;
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v6

    const/16 v7, 0x300e

    if-eq v6, v7, :cond_1

    sget-boolean v6, Lcom/glu/android/GameRenderer;->hasSurface:Z

    if-nez v6, :cond_2

    .line 54
    :cond_1
    const-string v6, "context lost OR surface unavavilable"

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 55
    sput-boolean v9, Lcom/glu/android/GameRenderer;->hasSurface:Z

    goto :goto_0

    .line 58
    :cond_2
    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v6, v6, Lcom/glu/android/GameLet;->m_destroyQueued:Z

    if-eqz v6, :cond_3

    .line 60
    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iput-boolean v8, v6, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    .line 62
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    .line 64
    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v6}, Lcom/glu/android/GameLet;->finishApp()V

    .line 66
    iput-boolean v8, p0, Lcom/glu/android/GameRenderer;->m_appDone:Z

    goto :goto_0

    .line 72
    :cond_3
    iget v6, p0, Lcom/glu/android/GameRenderer;->numTicks:I

    if-ltz v6, :cond_4

    .line 75
    :cond_4
    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v6, v6, Lcom/glu/android/GameLet;->m_JNIinit:Z

    if-eqz v6, :cond_6

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 79
    .local v1, "curTime":J
    iget-wide v6, p0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    sub-long v6, v1, v6

    iget v8, p0, Lcom/glu/android/GameRenderer;->numTicks:I

    if-nez v8, :cond_7

    move v8, v9

    :goto_1
    int-to-long v8, v8

    sub-long v3, v6, v8

    .line 82
    .local v3, "deltaMS":J
    cmp-long v6, v3, v10

    if-gez v6, :cond_5

    .line 85
    sub-long v6, v10, v3

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 86
    const-wide/16 v3, 0x28

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 94
    :cond_5
    :goto_2
    long-to-int v6, v3

    invoke-static {v6}, Lcom/glu/android/GluJNI;->tickAndDraw(I)V

    .line 110
    iput-wide v1, p0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    .line 113
    .end local v1    # "curTime":J
    .end local v3    # "deltaMS":J
    :cond_6
    iget v6, p0, Lcom/glu/android/GameRenderer;->numTicks:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/glu/android/GameRenderer;->numTicks:I

    goto :goto_0

    .restart local v1    # "curTime":J
    :cond_7
    move v8, v9

    .line 79
    goto :goto_1

    .line 89
    .restart local v3    # "deltaMS":J
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 90
    .local v5, "ex":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "problem with throttle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "_width"    # I
    .param p3, "_height"    # I

    .prologue
    .line 118
    if-le p3, p2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "~~ onSurfaceChanged(gl, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 122
    iput p2, p0, Lcom/glu/android/GameRenderer;->width:I

    .line 123
    iput p3, p0, Lcom/glu/android/GameRenderer;->height:I

    .line 125
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v2, v2, Lcom/glu/android/GameLet;->m_JNIinit:Z

    if-nez v2, :cond_0

    .line 127
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/glu/android/GameLet;->m_JNIinit:Z

    .line 134
    :try_start_0
    invoke-static {}, Lcom/glu/android/GluJNI;->initResFileJ()I

    move-result v1

    .line 136
    .local v1, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource file offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/glu/android/GameRenderer;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/glu/android/GameRenderer;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 141
    const-string v2, "before init"

    invoke-static {v2}, Lcom/glu/android/Debug;->printFreeMemory(Ljava/lang/String;)V

    .line 142
    iget v2, p0, Lcom/glu/android/GameRenderer;->width:I

    iget v3, p0, Lcom/glu/android/GameRenderer;->height:I

    invoke-static {v2, v3}, Lcom/glu/android/GluJNI;->initNativeLibrary(II)I

    move-result v1

    .line 143
    const-string v2, "after init"

    invoke-static {v2}, Lcom/glu/android/Debug;->printFreeMemory(Ljava/lang/String;)V

    .line 145
    const/16 v2, -0x1fa

    if-ne v1, v2, :cond_3

    .line 146
    const-string v2, "ERROR: Could not create applet instance."

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 152
    :goto_1
    invoke-static {}, Lcom/glu/android/GameLet;->isXperia()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 153
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v2}, Lcom/glu/android/GameLet;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/GameLet;->checkConfig(Landroid/content/res/Configuration;)V

    .line 155
    :cond_2
    if-nez v1, :cond_0

    .line 158
    const-string v2, "Native library loaded successfully!"

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/glu/android/GameRenderer;->lastTickTime:J

    goto/16 :goto_0

    .line 147
    :cond_3
    const/16 v2, -0x1f9

    if-ne v1, v2, :cond_4

    .line 148
    :try_start_1
    const-string v2, "ERROR: Could not load mspace."

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 159
    .end local v1    # "result":I
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 160
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Failed to load native libraries!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v1    # "result":I
    :cond_4
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 170
    const/4 v0, 0x1

    sput-boolean v0, Lcom/glu/android/GameRenderer;->hasSurface:Z

    .line 171
    return-void
.end method
