.class public Lcom/openfeint/internal/notifications/SimpleNotification;
.super Lcom/openfeint/internal/notifications/NotificationBase;
.source "SimpleNotification.java"


# instance fields
.field image:Landroid/graphics/drawable/Drawable;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "cat"    # Lcom/openfeint/api/Notification$Category;
    .param p4, "type"    # Lcom/openfeint/api/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/openfeint/api/Notification$Category;",
            "Lcom/openfeint/api/Notification$Type;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p5, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p5}, Lcom/openfeint/internal/notifications/NotificationBase;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V

    .line 19
    return-void
.end method

.method public static show(Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 73
    sget-object v0, Lcom/openfeint/api/Notification$Category;->Foreground:Lcom/openfeint/api/Notification$Category;

    invoke-static {p0, v0}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Lcom/openfeint/api/Notification$Category;)V

    .line 74
    return-void
.end method

.method public static show(Ljava/lang/String;Lcom/openfeint/api/Notification$Category;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "c"    # Lcom/openfeint/api/Notification$Category;

    .prologue
    .line 77
    sget-object v0, Lcom/openfeint/api/Notification$Type;->None:Lcom/openfeint/api/Notification$Type;

    invoke-static {p0, p1, v0}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 78
    return-void
.end method

.method public static show(Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "c"    # Lcom/openfeint/api/Notification$Category;
    .param p2, "t"    # Lcom/openfeint/api/Notification$Type;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 82
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "imageName"    # Ljava/lang/String;

    .prologue
    .line 85
    sget-object v0, Lcom/openfeint/api/Notification$Category;->Foreground:Lcom/openfeint/api/Notification$Category;

    invoke-static {p0, p1, v0}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;)V

    .line 86
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "c"    # Lcom/openfeint/api/Notification$Category;

    .prologue
    .line 89
    sget-object v0, Lcom/openfeint/api/Notification$Type;->None:Lcom/openfeint/api/Notification$Type;

    invoke-static {p0, p1, p2, v0}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 90
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "imageName"    # Ljava/lang/String;
    .param p2, "c"    # Lcom/openfeint/api/Notification$Category;
    .param p3, "t"    # Lcom/openfeint/api/Notification$Type;

    .prologue
    .line 93
    new-instance v0, Lcom/openfeint/internal/notifications/SimpleNotification;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/notifications/SimpleNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V

    .line 94
    .local v0, "notification":Lcom/openfeint/internal/notifications/SimpleNotification;
    invoke-virtual {v0}, Lcom/openfeint/internal/notifications/SimpleNotification;->checkDelegateAndView()V

    .line 96
    return-void
.end method


# virtual methods
.method protected createView()Z
    .locals 2

    .prologue
    .line 24
    iget-object v1, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->imageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->imageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/openfeint/internal/notifications/SimpleNotification;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->image:Landroid/graphics/drawable/Drawable;

    .line 26
    iget-object v1, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->image:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 28
    new-instance v0, Lcom/openfeint/internal/notifications/SimpleNotification$1;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/notifications/SimpleNotification$1;-><init>(Lcom/openfeint/internal/notifications/SimpleNotification;)V

    .line 44
    .local v0, "req":Lcom/openfeint/internal/request/BitmapRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/BitmapRequest;->launch()V

    .line 46
    const/4 v1, 0x0

    .line 50
    .end local v0    # "req":Lcom/openfeint/internal/request/BitmapRequest;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected drawView(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 57
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    const/16 v3, 0x183

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 59
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    const/16 v1, 0xa

    .line 61
    .local v1, "textLeft":I
    iget-object v3, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->displayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v3, 0x5

    .line 63
    .local v2, "top":I
    iget-object v3, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->image:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    iget-object v6, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 64
    iget-object v3, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 65
    iget-object v3, p0, Lcom/openfeint/internal/notifications/SimpleNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 68
    .end local v2    # "top":I
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/SimpleNotification;->getText()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v1

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 69
    return-void
.end method
