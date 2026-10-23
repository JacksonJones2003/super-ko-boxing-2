.class Lcom/openfeint/internal/OpenFeintInternal$10;
.super Ljava/lang/Object;
.source "OpenFeintInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->launchIntroFlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 800
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/openfeint/internal/ui/IntroFlow;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 801
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$900(Lcom/openfeint/internal/OpenFeintInternal;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 802
    const-string v1, "content_name"

    const-string v2, "index?preapproved=true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 804
    :cond_0
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$10;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 805
    return-void
.end method
