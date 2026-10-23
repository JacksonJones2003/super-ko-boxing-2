.class public Lcom/glu/android/ResFileDownloadView$GluTitlebar;
.super Lcom/glu/android/ResFileDownloadView$GluWidget;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ResFileDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GluTitlebar"
.end annotation


# instance fields
.field public m_label:Ljava/lang/String;

.field public m_paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 209
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/glu/android/ResFileDownloadView$GluWidget;-><init>(Lcom/glu/android/ResFileDownloadView;I)V

    .line 211
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_label:Ljava/lang/String;

    .line 212
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_paint:Landroid/graphics/Paint;

    .line 213
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 222
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v1, v3, Lcom/glu/android/ResFileDownloadView;->m_titlebarImg:Landroid/graphics/drawable/Drawable;

    .line 224
    .local v1, "titlebarImg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 226
    .local v0, "segmentWidth":I
    iget v2, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_x:I

    .local v2, "x":I
    :goto_0
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_dx:I

    if-ge v2, v3, :cond_0

    .line 227
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_y:I

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 226
    add-int/2addr v2, v0

    goto :goto_0

    .line 230
    :cond_0
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_label:Ljava/lang/String;

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_x:I

    add-int/lit8 v4, v4, 0xa

    int-to-float v4, v4

    iget v5, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_y:I

    iget v6, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_dy:I

    iget v7, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_y:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 231
    return-void
.end method

.method public setBounds(IIII)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 217
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_titlebarImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/glu/android/ResFileDownloadView$GluWidget;->setBounds(IIII)V

    .line 218
    return-void
.end method
