.class public abstract Lcom/openfeint/internal/notifications/NotificationBase;
.super Lcom/openfeint/api/Notification;
.source "NotificationBase.java"


# static fields
.field static drawableCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private category:Lcom/openfeint/api/Notification$Category;

.field displayView:Landroid/view/View;

.field protected imageName:Ljava/lang/String;

.field private text:Ljava/lang/String;

.field toast:Landroid/widget/Toast;

.field private type:Lcom/openfeint/api/Notification$Type;

.field private userData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;Ljava/util/Map;)V
    .locals 0
    .param p1, "_text"    # Ljava/lang/String;
    .param p2, "_imageName"    # Ljava/lang/String;
    .param p3, "_cat"    # Lcom/openfeint/api/Notification$Category;
    .param p4, "_type"    # Lcom/openfeint/api/Notification$Type;
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
    .line 38
    .local p5, "_userData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/openfeint/api/Notification;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/openfeint/internal/notifications/NotificationBase;->text:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/openfeint/internal/notifications/NotificationBase;->imageName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/openfeint/internal/notifications/NotificationBase;->category:Lcom/openfeint/api/Notification$Category;

    .line 42
    iput-object p4, p0, Lcom/openfeint/internal/notifications/NotificationBase;->type:Lcom/openfeint/api/Notification$Type;

    .line 43
    iput-object p5, p0, Lcom/openfeint/internal/notifications/NotificationBase;->userData:Ljava/util/Map;

    .line 44
    return-void
.end method

.method static getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v2, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-static {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v0

    .line 79
    .local v0, "bitmapHandle":I
    if-nez v0, :cond_1

    .line 80
    sget-object v2, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .end local v0    # "bitmapHandle":I
    :cond_0
    :goto_0
    sget-object v2, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 83
    .restart local v0    # "bitmapHandle":I
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    .local v1, "r":Landroid/content/res/Resources;
    sget-object v2, Lcom/openfeint/internal/notifications/NotificationBase;->drawableCache:Ljava/util/Map;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected checkDelegateAndView()V
    .locals 1

    .prologue
    .line 111
    invoke-static {}, Lcom/openfeint/internal/notifications/NotificationBase;->getDelegate()Lcom/openfeint/api/Notification$Delegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openfeint/api/Notification$Delegate;->canShowNotification(Lcom/openfeint/api/Notification;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {}, Lcom/openfeint/internal/notifications/NotificationBase;->getDelegate()Lcom/openfeint/api/Notification$Delegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openfeint/api/Notification$Delegate;->notificationWillShow(Lcom/openfeint/api/Notification;)V

    .line 113
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/notifications/NotificationBase;->createViewWithHeight(I)V

    .line 114
    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/NotificationBase;->createView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/openfeint/internal/notifications/NotificationBase;->showToast()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-static {}, Lcom/openfeint/internal/notifications/NotificationBase;->getDelegate()Lcom/openfeint/api/Notification$Delegate;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openfeint/api/Notification$Delegate;->displayNotification(Lcom/openfeint/api/Notification;)V

    goto :goto_0
.end method

.method protected clippedText(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    const/4 v4, 0x1

    .line 52
    move-object v1, p2

    .line 53
    .local v1, "outText":Ljava/lang/String;
    int-to-float v2, p3

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v4, v2, v3}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    .line 54
    .local v0, "endLength":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    sub-int v4, v0, v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    :cond_0
    return-object v1
.end method

.method protected abstract createView()Z
.end method

.method protected createViewWithHeight(I)V
    .locals 3
    .param p1, "height"    # I

    .prologue
    .line 91
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, "appContext":Landroid/content/Context;
    new-instance v1, Lcom/openfeint/internal/notifications/NotificationBase$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/openfeint/internal/notifications/NotificationBase$2;-><init>(Lcom/openfeint/internal/notifications/NotificationBase;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/openfeint/internal/notifications/NotificationBase;->displayView:Landroid/view/View;

    .line 106
    iget-object v1, p0, Lcom/openfeint/internal/notifications/NotificationBase;->displayView:Landroid/view/View;

    const-string v2, "@drawable/of_notification_bkg"

    invoke-static {v2}, Lcom/openfeint/internal/notifications/NotificationBase;->getResourceDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    return-void
.end method

.method protected abstract drawView(Landroid/graphics/Canvas;)V
.end method

.method public getCategory()Lcom/openfeint/api/Notification$Category;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/openfeint/internal/notifications/NotificationBase;->category:Lcom/openfeint/api/Notification$Category;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/openfeint/internal/notifications/NotificationBase;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/openfeint/api/Notification$Type;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/openfeint/internal/notifications/NotificationBase;->type:Lcom/openfeint/api/Notification$Type;

    return-object v0
.end method

.method public getUserData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/openfeint/internal/notifications/NotificationBase;->userData:Ljava/util/Map;

    return-object v0
.end method

.method protected showToast()V
    .locals 2

    .prologue
    .line 61
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/openfeint/internal/notifications/NotificationBase$1;

    invoke-direct {v1, p0}, Lcom/openfeint/internal/notifications/NotificationBase$1;-><init>(Lcom/openfeint/internal/notifications/NotificationBase;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
