.class public Lcom/glu/android/ResFileDownloadView$GluTextArea;
.super Lcom/glu/android/ResFileDownloadView$GluWidget;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ResFileDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GluTextArea"
.end annotation


# instance fields
.field public m_paint:Landroid/graphics/Paint;

.field public m_text:Ljava/lang/String;

.field public m_wrappedText:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 99
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/glu/android/ResFileDownloadView$GluWidget;-><init>(Lcom/glu/android/ResFileDownloadView;I)V

    .line 101
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_text:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_paint:Landroid/graphics/Paint;

    .line 103
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 121
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 122
    .local v0, "height":F
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_wrappedText:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v2

    .line 123
    .local v2, "numLines":I
    sget-object v4, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v4, v4, Lcom/glu/android/ResFileDownloadView;->m_titlebarImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_dy:I

    int-to-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v3, v4, v5

    .line 124
    .local v3, "startY":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 127
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_wrappedText:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_x:I

    iget v6, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_dx:I

    iget v7, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_x:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    int-to-float v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v6, v3

    iget-object v7, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Lcom/glu/android/ResFileDownloadView$GluWidget;->setBounds(IIII)V

    .line 109
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_text:Ljava/lang/String;

    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_paint:Landroid/graphics/Paint;

    invoke-static {v0, p3, v1}, Lcom/glu/android/GluUtil;->dumbTextWrap(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_wrappedText:Ljava/util/Vector;

    .line 110
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_text:Ljava/lang/String;

    .line 116
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_text:Ljava/lang/String;

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_dx:I

    iget v2, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_x:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_paint:Landroid/graphics/Paint;

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->dumbTextWrap(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTextArea;->m_wrappedText:Ljava/util/Vector;

    .line 117
    return-void
.end method
