.class public abstract Lcom/glu/android/ResFileDownloadView$GluWidget;
.super Ljava/lang/Object;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/ResFileDownloadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GluWidget"
.end annotation


# instance fields
.field public m_dx:I

.field public m_dy:I

.field public m_parent:Lcom/glu/android/ResFileDownloadView;

.field public m_widgetID:I

.field public m_x:I

.field public m_y:I

.field public pointerActive:Z

.field public pointerX:I

.field public pointerY:I


# direct methods
.method public constructor <init>(Lcom/glu/android/ResFileDownloadView;I)V
    .locals 1
    .param p1, "parent"    # Lcom/glu/android/ResFileDownloadView;
    .param p2, "widgetID"    # I

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerX:I

    .line 25
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerY:I

    .line 26
    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    .line 28
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_x:I

    .line 29
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_y:I

    .line 30
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dx:I

    .line 31
    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    .line 35
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_parent:Lcom/glu/android/ResFileDownloadView;

    .line 36
    iput p2, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_widgetID:I

    .line 37
    return-void
.end method


# virtual methods
.method public containsCoords(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_x:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dx:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_y:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    if-gt p2, v0, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract draw(Landroid/graphics/Canvas;)V
.end method

.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;II)V
    .locals 6
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 78
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/ResFileDownloadView$GluWidget;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V

    return-void
.end method

.method public drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIZ)V
    .locals 3
    .param p1, "g"    # Landroid/graphics/Canvas;
    .param p2, "d"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "right"    # Z

    .prologue
    const/4 v2, 0x1

    .line 81
    if-eqz p5, :cond_0

    .line 82
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr p3, v0

    .line 84
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p3

    sub-int/2addr v0, v2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p4

    sub-int/2addr v1, v2

    invoke-virtual {p2, p3, p4, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 86
    return-void
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_widgetID:I

    return v0
.end method

.method public pointerPressed(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    .line 44
    return-void
.end method

.method public pointerReleased(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_parent:Lcom/glu/android/ResFileDownloadView;

    invoke-virtual {v0, p0}, Lcom/glu/android/ResFileDownloadView;->onWidgetClicked(Lcom/glu/android/ResFileDownloadView$GluWidget;)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    .line 50
    return-void
.end method

.method public pointerReleasedElsewhere()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerActive:Z

    .line 54
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v1, 0x1

    .line 58
    iput p1, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_x:I

    .line 59
    iput p2, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_y:I

    .line 60
    add-int v0, p1, p3

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dx:I

    .line 61
    add-int v0, p2, p4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    .line 62
    return-void
.end method
