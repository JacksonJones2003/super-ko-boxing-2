.class public Lcom/openfeint/internal/notifications/AchievementNotification;
.super Lcom/openfeint/internal/notifications/NotificationBase;
.source "AchievementNotification.java"


# static fields
.field static final frameInset:I = 0x2

.field static final frameLeft:I = 0x5

.field static final frameSize:I = 0x1e

.field static final frameTop:I = 0x8

.field static final insetBottom:I = 0x24

.field static final insetRight:I = 0x21


# instance fields
.field iconFrame:Landroid/graphics/drawable/Drawable;

.field iconImage:Landroid/graphics/drawable/Drawable;

.field statusIndicator:Landroid/graphics/drawable/Drawable;


# direct methods
.method protected constructor <init>(Lcom/openfeint/api/resource/Achievement;Ljava/util/Map;)V
    .locals 6
    .param p1, "achievement"    # Lcom/openfeint/api/resource/Achievement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/api/resource/Achievement;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "Achievement Unlocked!"

    const/4 v2, 0x0

    sget-object v3, Lcom/openfeint/api/Notification$Category;->Achievement:Lcom/openfeint/api/Notification$Category;

    sget-object v4, Lcom/openfeint/api/Notification$Type;->Success:Lcom/openfeint/api/Notification$Type;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/notifications/NotificationBase;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V

    .line 23
    return-void
.end method

.method public static showUnlocked(Lcom/openfeint/api/resource/Achievement;)V
    .locals 3
    .param p0, "achievement"    # Lcom/openfeint/api/resource/Achievement;

    .prologue
    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 110
    .local v1, "userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "achievement"

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    new-instance v0, Lcom/openfeint/internal/notifications/AchievementNotification;

    invoke-direct {v0, p0, v1}, Lcom/openfeint/internal/notifications/AchievementNotification;-><init>(Lcom/openfeint/api/resource/Achievement;Ljava/util/Map;)V

    .line 112
    .local v0, "notification":Lcom/openfeint/internal/notifications/AchievementNotification;
    invoke-virtual {v0}, Lcom/openfeint/internal/notifications/AchievementNotification;->checkDelegateAndView()V

    .line 113
    return-void
.end method


# virtual methods
.method protected createView()Z
    .locals 4

    .prologue
    .line 37
    iget-object v2, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    const-string v3, "@drawable/of_achievement_notification_bkg"

    invoke-static {v3}, Lcom/openfeint/internal/notifications/AchievementNotification;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    const-string v2, "@drawable/of_feint_points_white"

    invoke-static {v2}, Lcom/openfeint/internal/notifications/AchievementNotification;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->statusIndicator:Landroid/graphics/drawable/Drawable;

    .line 39
    const-string v2, "@drawable/of_achievement_icon_frame"

    invoke-static {v2}, Lcom/openfeint/internal/notifications/AchievementNotification;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->iconFrame:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/AchievementNotification;->getUserData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "achievement"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/api/resource/Achievement;

    .line 43
    .local v0, "achievement":Lcom/openfeint/api/resource/Achievement;
    iget-object v2, v0, Lcom/openfeint/api/resource/Achievement;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, v0, Lcom/openfeint/api/resource/Achievement;->iconUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/openfeint/internal/notifications/AchievementNotification;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->iconImage:Landroid/graphics/drawable/Drawable;

    .line 45
    iget-object v2, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->iconImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    .line 47
    new-instance v1, Lcom/openfeint/internal/notifications/AchievementNotification$1;

    invoke-direct {v1, p0, v0}, Lcom/openfeint/internal/notifications/AchievementNotification$1;-><init>(Lcom/openfeint/internal/notifications/AchievementNotification;Lcom/openfeint/api/resource/Achievement;)V

    .line 65
    .local v1, "req":Lcom/openfeint/internal/request/BitmapRequest;
    invoke-virtual {v1}, Lcom/openfeint/internal/request/BitmapRequest;->launch()V

    .line 66
    const/4 v2, 0x0

    .line 72
    .end local v1    # "req":Lcom/openfeint/internal/request/BitmapRequest;
    :goto_0
    return v2

    .line 70
    :cond_0
    const-string v2, "@drawable/of_achievement_icon_unlocked"

    invoke-static {v2}, Lcom/openfeint/internal/notifications/AchievementNotification;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->iconImage:Landroid/graphics/drawable/Drawable;

    .line 72
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected drawView(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v9, 0x32

    const/high16 v8, 0x41f00000    # 30.0f

    .line 84
    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/AchievementNotification;->getUserData()Ljava/util/Map;

    move-result-object v3

    const-string v4, "achievement"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/api/resource/Achievement;

    .line 86
    .local v0, "achievement":Lcom/openfeint/api/resource/Achievement;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 87
    .local v1, "paint":Landroid/graphics/Paint;
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    const/high16 v3, 0x41600000    # 14.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    const/16 v3, 0x183

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 91
    iget-object v3, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v2, v3, v9

    .line 93
    .local v2, "rightSizeStart":I
    iget-object v3, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->iconFrame:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x5

    const/16 v5, 0x8

    const/16 v6, 0x23

    const/16 v7, 0x26

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    iget-object v3, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->iconImage:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x7

    const/16 v5, 0xa

    const/16 v6, 0x21

    const/16 v7, 0x24

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 95
    iget-object v3, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->statusIndicator:Landroid/graphics/drawable/Drawable;

    const/16 v4, 0x11

    add-int/lit8 v5, v2, 0xc

    const/16 v6, 0x1e

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 97
    iget-object v3, v0, Lcom/openfeint/api/resource/Achievement;->title:Ljava/lang/String;

    sub-int v4, v2, v9

    invoke-virtual {p0, v1, v3, v4}, Lcom/openfeint/internal/notifications/AchievementNotification;->clippedText(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x42340000    # 45.0f

    invoke-virtual {p1, v3, v4, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 98
    iget v3, v0, Lcom/openfeint/api/resource/Achievement;->gamerscore:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x28

    invoke-virtual {p0, v1, v3, v4}, Lcom/openfeint/internal/notifications/AchievementNotification;->clippedText(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v2, 0xf

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4, v8, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    iget-object v3, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->statusIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    iget-object v3, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->iconImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 103
    iget-object v3, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->iconFrame:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    return-void
.end method

.method public loadedImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "map"    # Landroid/graphics/Bitmap;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/openfeint/internal/notifications/AchievementNotification;->displayView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 28
    return-void
.end method
