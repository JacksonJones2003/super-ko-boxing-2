.class public Lcom/glu/android/GluView;
.super Landroid/opengl/GLSurfaceView;
.source "GluView.java"


# static fields
.field public static instance:Lcom/glu/android/GluView;

.field public static m_glVersionMajor:I

.field public static m_glVersionMinor:I


# instance fields
.field public keyStates:[Z

.field public m_renderer:Lcom/glu/android/GameRenderer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    .line 23
    sput v1, Lcom/glu/android/GluView;->m_glVersionMinor:I

    .line 24
    sput v1, Lcom/glu/android/GluView;->m_glVersionMajor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluView;->m_renderer:Lcom/glu/android/GameRenderer;

    .line 26
    const/16 v0, 0xff

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/glu/android/GluView;->keyStates:[Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/glu/android/GluView;->m_renderer:Lcom/glu/android/GameRenderer;

    .line 26
    const/16 v0, 0xff

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/glu/android/GluView;->keyStates:[Z

    .line 32
    const/high16 v0, 0x7f090000

    invoke-virtual {p0, v0}, Lcom/glu/android/GluView;->setId(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public init()V
    .locals 14

    .prologue
    const/4 v1, 0x5

    const/4 v13, 0x1

    const/4 v4, 0x0

    .line 43
    sput-object p0, Lcom/glu/android/GluView;->instance:Lcom/glu/android/GluView;

    .line 45
    new-instance v0, Lcom/glu/android/GameRenderer;

    invoke-direct {v0}, Lcom/glu/android/GameRenderer;-><init>()V

    iput-object v0, p0, Lcom/glu/android/GluView;->m_renderer:Lcom/glu/android/GameRenderer;

    .line 47
    const/4 v12, 0x0

    .line 58
    .local v12, "supportsGL20":Z
    const/4 v9, 0x0

    .line 59
    .local v9, "depth":I
    const/4 v11, 0x0

    .line 60
    .local v11, "stencil":I
    const/4 v10, 0x0

    .line 63
    .local v10, "highColor":Z
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Lcom/glu/android/GluConfigChooser;

    const/4 v2, 0x6

    sget v7, Lcom/glu/android/GluView;->m_glVersionMajor:I

    sget v8, Lcom/glu/android/GluView;->m_glVersionMinor:I

    move v3, v1

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v8}, Lcom/glu/android/GluConfigChooser;-><init>(IIIIIIII)V

    invoke-virtual {p0, v0}, Lcom/glu/android/GluView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/glu/android/GluView;->m_renderer:Lcom/glu/android/GameRenderer;

    invoke-virtual {p0, v0}, Lcom/glu/android/GluView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 72
    invoke-virtual {p0, v13}, Lcom/glu/android/GluView;->setFocusable(Z)V

    .line 73
    invoke-virtual {p0, v13}, Lcom/glu/android/GluView;->setFocusableInTouchMode(Z)V

    .line 74
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 122
    const-string v0, "~~ onAttachedToWindow()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 124
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 125
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 115
    const-string v0, "~~ onDetachedFromWindow()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 117
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 118
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 108
    const-string v0, "~~ onFinishTemporaryDetach()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 110
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onFinishTemporaryDetach()V

    .line 111
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 200
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 248
    :goto_0
    return v0

    .line 203
    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0xff

    if-ge p1, v0, :cond_2

    .line 205
    iget-object v0, p0, Lcom/glu/android/GluView;->keyStates:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_1

    move v0, v1

    .line 206
    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/glu/android/GluView;->keyStates:[Z

    aput-boolean v1, v0, p1

    .line 211
    :cond_2
    invoke-static {}, Lcom/glu/android/GameLet;->isXperia()Z

    move-result v0

    if-nez v0, :cond_4

    .line 213
    sparse-switch p1, :sswitch_data_0

    .line 248
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :sswitch_0
    invoke-static {p1}, Lcom/glu/android/GluJNI;->keyPressed(I)V

    move v0, v1

    .line 218
    goto :goto_0

    .line 223
    :cond_4
    sparse-switch p1, :sswitch_data_1

    .line 240
    const/4 v0, 0x7

    if-lt p1, v0, :cond_5

    const/16 v0, 0x10

    if-le p1, v0, :cond_6

    :cond_5
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    const/16 v0, 0x36

    if-gt p1, v0, :cond_3

    .line 243
    :cond_6
    invoke-static {p1}, Lcom/glu/android/GluJNI;->keyPressed(I)V

    move v0, v1

    .line 244
    goto :goto_0

    .line 236
    :sswitch_1
    invoke-static {p1}, Lcom/glu/android/GluJNI;->keyPressed(I)V

    move v0, v1

    .line 237
    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch

    .line 223
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
        0x52 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x6c -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 149
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 194
    :goto_0
    return v0

    .line 152
    :cond_0
    if-ltz p1, :cond_1

    const/16 v0, 0xff

    if-ge p1, v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/glu/android/GluView;->keyStates:[Z

    aput-boolean v2, v0, p1

    .line 157
    :cond_1
    invoke-static {}, Lcom/glu/android/GameLet;->isXperia()Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    sparse-switch p1, :sswitch_data_0

    :cond_2
    move v0, v2

    .line 194
    goto :goto_0

    .line 163
    :sswitch_0
    invoke-static {p1}, Lcom/glu/android/GluJNI;->keyReleased(I)V

    move v0, v1

    .line 164
    goto :goto_0

    .line 169
    :cond_3
    sparse-switch p1, :sswitch_data_1

    .line 186
    const/4 v0, 0x7

    if-lt p1, v0, :cond_4

    const/16 v0, 0x10

    if-le p1, v0, :cond_5

    :cond_4
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_2

    const/16 v0, 0x36

    if-gt p1, v0, :cond_2

    .line 189
    :cond_5
    invoke-static {p1}, Lcom/glu/android/GluJNI;->keyReleased(I)V

    move v0, v1

    .line 190
    goto :goto_0

    .line 182
    :sswitch_1
    invoke-static {p1}, Lcom/glu/android/GluJNI;->keyReleased(I)V

    move v0, v1

    .line 183
    goto :goto_0

    .line 159
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch

    .line 169
    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_1
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x15 -> :sswitch_1
        0x16 -> :sswitch_1
        0x17 -> :sswitch_1
        0x42 -> :sswitch_1
        0x52 -> :sswitch_1
        0x63 -> :sswitch_1
        0x64 -> :sswitch_1
        0x6c -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onMeasure(II)V

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setMeasuredDimension("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/glu/android/GluView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/glu/android/GluView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in game"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/glu/android/GluView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/glu/android/GluView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    mul-int/lit8 v2, v1, 0x3
    div-int/lit8 v2, v2, 0x2
    if-le v0, v2, :aspect_ok
    move v0, v2
    :aspect_ok
    mul-int/lit8 v2, v0, 0x2
    div-int/lit8 v2, v2, 0x3
    if-le v1, v2, :aspect_ok2
    move v1, v2
    :aspect_ok2
    invoke-virtual {p0, v0, v1}, Lcom/glu/android/GluView;->setMeasuredDimension(II)V

    .line 83
    const/4 v0, 0x0

    invoke-static {v3, v3, v3, v0}, Lcom/glu/android/GluJNI;->setAdOffsets(IIII)V

    .line 84
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 101
    const-string v0, "~~ onStartTemporaryDetach()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 103
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onStartTemporaryDetach()V

    .line 104
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 254
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 268
    :goto_0
    return v0

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    move v0, v2

    .line 268
    goto :goto_0

    .line 258
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/glu/android/GluJNI;->pointerDragged(II)V

    goto :goto_1

    .line 261
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/glu/android/GluJNI;->pointerPressed(II)V

    goto :goto_1

    .line 264
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/glu/android/GluJNI;->pointerReleased(II)V

    goto :goto_1

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~~ onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowFocusChanged(Z)V

    .line 97
    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "~~ onWindowVisibilityChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->onWindowVisibilityChanged(I)V

    .line 133
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 140
    const-string v0, "The system destroyed your GL textures. You will have to bring them back upon resuming from this."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 142
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    goto :goto_0
.end method

.method public resetKeyStates()V
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/glu/android/GluView;->keyStates:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/glu/android/GluView;->keyStates:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method
