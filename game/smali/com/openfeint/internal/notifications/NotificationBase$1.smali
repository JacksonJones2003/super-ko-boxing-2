.class Lcom/openfeint/internal/notifications/NotificationBase$1;
.super Ljava/lang/Object;
.source "NotificationBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/notifications/NotificationBase;->showToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/notifications/NotificationBase;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/notifications/NotificationBase;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/openfeint/internal/notifications/NotificationBase$1;->this$0:Lcom/openfeint/internal/notifications/NotificationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    .local v0, "appContext":Landroid/content/Context;
    iget-object v1, p0, Lcom/openfeint/internal/notifications/NotificationBase$1;->this$0:Lcom/openfeint/internal/notifications/NotificationBase;

    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/openfeint/internal/notifications/NotificationBase;->toast:Landroid/widget/Toast;

    .line 65
    iget-object v1, p0, Lcom/openfeint/internal/notifications/NotificationBase$1;->this$0:Lcom/openfeint/internal/notifications/NotificationBase;

    iget-object v1, v1, Lcom/openfeint/internal/notifications/NotificationBase;->toast:Landroid/widget/Toast;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 66
    iget-object v1, p0, Lcom/openfeint/internal/notifications/NotificationBase$1;->this$0:Lcom/openfeint/internal/notifications/NotificationBase;

    iget-object v1, v1, Lcom/openfeint/internal/notifications/NotificationBase;->toast:Landroid/widget/Toast;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 67
    iget-object v1, p0, Lcom/openfeint/internal/notifications/NotificationBase$1;->this$0:Lcom/openfeint/internal/notifications/NotificationBase;

    iget-object v1, v1, Lcom/openfeint/internal/notifications/NotificationBase;->toast:Landroid/widget/Toast;

    iget-object v2, p0, Lcom/openfeint/internal/notifications/NotificationBase$1;->this$0:Lcom/openfeint/internal/notifications/NotificationBase;

    iget-object v2, v2, Lcom/openfeint/internal/notifications/NotificationBase;->displayView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 68
    iget-object v1, p0, Lcom/openfeint/internal/notifications/NotificationBase$1;->this$0:Lcom/openfeint/internal/notifications/NotificationBase;

    iget-object v1, v1, Lcom/openfeint/internal/notifications/NotificationBase;->toast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 69
    return-void
.end method
