.class public Lcom/glu/android/ResFileDownloadView$GluButton;
.super Lcom/glu/android/ResFileDownloadView$GluWidget;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ResFileDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GluButton"
.end annotation


# instance fields
.field public m_label:Ljava/lang/String;

.field public m_paint:Landroid/graphics/Paint;

.field public m_wrappedLabel:Ljava/util/Vector;
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
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 143
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/glu/android/ResFileDownloadView$GluWidget;-><init>(Lcom/glu/android/ResFileDownloadView;I)V

    .line 145
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_label:Ljava/lang/String;

    .line 146
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_paint:Landroid/graphics/Paint;

    .line 147
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "widgetID"    # I

    .prologue
    .line 151
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    invoke-direct {p0, v0, p2}, Lcom/glu/android/ResFileDownloadView$GluWidget;-><init>(Lcom/glu/android/ResFileDownloadView;I)V

    .line 153
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_label:Ljava/lang/String;

    .line 154
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_paint:Landroid/graphics/Paint;

    .line 155
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x1

    .line 166
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v9, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgL:Landroid/graphics/drawable/Drawable;

    .line 167
    .local v9, "leftImg":Landroid/graphics/drawable/Drawable;
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v6, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgC:Landroid/graphics/drawable/Drawable;

    .line 168
    .local v6, "centerImg":Landroid/graphics/drawable/Drawable;
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgR:Landroid/graphics/drawable/Drawable;

    .line 169
    .local v2, "rightImg":Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->pointerActive:Z

    if-eqz v0, :cond_0

    .line 171
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v9, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgL:Landroid/graphics/drawable/Drawable;

    .line 172
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v6, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgC:Landroid/graphics/drawable/Drawable;

    .line 173
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v2, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgR:Landroid/graphics/drawable/Drawable;

    .line 177
    :cond_0
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v11, v0, v5

    .line 179
    .local v11, "segmentWidth":I
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_x:I

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_y:I

    invoke-virtual {p0, p1, v9, v0, v1}, Lcom/glu/android/ResFileDownloadView$GluButton;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 181
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_x:I

    add-int v13, v0, v11

    .local v13, "x":I
    :goto_0
    add-int v0, v13, v11

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_dx:I

    if-ge v0, v1, :cond_1

    .line 182
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_y:I

    invoke-virtual {p0, p1, v6, v13, v0}, Lcom/glu/android/ResFileDownloadView$GluButton;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V

    .line 181
    add-int/2addr v13, v11

    goto :goto_0

    .line 184
    :cond_1
    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_dx:I

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_y:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/ResFileDownloadView$GluButton;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    .line 187
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    .line 188
    .local v7, "height":F
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_wrappedLabel:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v10

    .line 189
    .local v10, "numLines":I
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_y:I

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_dy:I

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_y:I

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v12, v0

    .line 191
    .local v12, "startY":F
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v10, :cond_2

    .line 194
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_wrappedLabel:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_x:I

    iget v3, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_dx:I

    iget v4, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_x:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v1, v1

    int-to-float v3, v8

    mul-float/2addr v3, v7

    add-float/2addr v3, v12

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v7, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 191
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 197
    :cond_2
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 159
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-super {p0, p1, p2, p3, v0}, Lcom/glu/android/ResFileDownloadView$GluWidget;->setBounds(IIII)V

    .line 161
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_label:Ljava/lang/String;

    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_paint:Landroid/graphics/Paint;

    invoke-static {v0, p3, v1}, Lcom/glu/android/GluUtil;->dumbTextWrap(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluButton;->m_wrappedLabel:Ljava/util/Vector;

    .line 162
    return-void
.end method
