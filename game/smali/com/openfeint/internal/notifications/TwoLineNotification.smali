.class public Lcom/openfeint/internal/notifications/TwoLineNotification;
.super Lcom/openfeint/internal/notifications/NotificationBase;
.source "TwoLineNotification.java"


# instance fields
.field image:Landroid/graphics/drawable/Drawable;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "cat"    # Lcom/openfeint/api/Notification$Category;
    .param p5, "type"    # Lcom/openfeint/api/Notification$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 17
    .local p6, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/notifications/NotificationBase;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V

    .line 18
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;

    .prologue
    .line 76
    sget-object v0, Lcom/openfeint/api/Notification$Category;->Foreground:Lcom/openfeint/api/Notification$Category;

    invoke-static {p0, p1, v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;)V

    .line 77
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "c"    # Lcom/openfeint/api/Notification$Category;

    .prologue
    .line 80
    sget-object v0, Lcom/openfeint/api/Notification$Type;->None:Lcom/openfeint/api/Notification$Type;

    invoke-static {p0, p1, p2, v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 81
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "c"    # Lcom/openfeint/api/Notification$Category;
    .param p3, "t"    # Lcom/openfeint/api/Notification$Type;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, p3}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 85
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-object v0, Lcom/openfeint/api/Notification$Category;->Foreground:Lcom/openfeint/api/Notification$Category;

    invoke-static {p0, p1, p2, v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;)V

    .line 89
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;)V
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "c"    # Lcom/openfeint/api/Notification$Category;

    .prologue
    .line 92
    sget-object v0, Lcom/openfeint/api/Notification$Type;->None:Lcom/openfeint/api/Notification$Type;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 93
    return-void
.end method

.method public static show(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V
    .locals 7
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "extra"    # Ljava/lang/String;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "c"    # Lcom/openfeint/api/Notification$Category;
    .param p4, "t"    # Lcom/openfeint/api/Notification$Type;

    .prologue
    .line 96
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v6, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "extra"

    invoke-interface {v6, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    new-instance v0, Lcom/openfeint/internal/notifications/TwoLineNotification;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/openfeint/internal/notifications/TwoLineNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V

    .line 99
    .local v0, "notification":Lcom/openfeint/internal/notifications/TwoLineNotification;
    invoke-virtual {v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->checkDelegateAndView()V

    .line 101
    return-void
.end method


# virtual methods
.method protected createView()Z
    .locals 2

    .prologue
    .line 23
    const/16 v1, 0x3c

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/notifications/TwoLineNotification;->createViewWithHeight(I)V

    .line 25
    iget-object v1, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->imageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 26
    iget-object v1, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->imageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/openfeint/internal/notifications/TwoLineNotification;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v1, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 29
    new-instance v0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/notifications/TwoLineNotification$1;-><init>(Lcom/openfeint/internal/notifications/TwoLineNotification;)V

    .line 45
    .local v0, "req":Lcom/openfeint/internal/request/BitmapRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/BitmapRequest;->launch()V

    .line 47
    const/4 v1, 0x0

    .line 51
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
    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 58
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 59
    const/16 v3, 0x183

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 60
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    const/16 v1, 0xa

    .line 62
    .local v1, "textLeft":I
    iget-object v3, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->displayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    .line 64
    .local v2, "top":I
    iget-object v3, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    iget-object v6, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 65
    iget-object v3, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 66
    iget-object v3, p0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v1, v3

    .line 69
    .end local v2    # "top":I
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->getText()Ljava/lang/String;

    move-result-object v3

    int-to-float v4, v1

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-virtual {p1, v3, v4, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    const/high16 v3, 0x41400000    # 12.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 71
    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->getUserData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "extra"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/openfeint/internal/notifications/TwoLineNotification;
    check-cast p0, Ljava/lang/String;

    int-to-float v3, v1

    const/high16 v4, 0x42340000    # 45.0f

    invoke-virtual {p1, p0, v3, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    return-void
.end method
