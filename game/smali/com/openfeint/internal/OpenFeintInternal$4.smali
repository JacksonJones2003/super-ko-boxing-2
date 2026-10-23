.class Lcom/openfeint/internal/OpenFeintInternal$4;
.super Lcom/openfeint/internal/request/RawRequest;
.source "OpenFeintInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;

.field final synthetic val$finalToast:Z


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;Z)V
    .locals 0
    .param p2, "x0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iput-boolean p3, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->val$finalToast:Z

    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/RawRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    const-string v0, "POST"

    return-object v0
.end method

.method public onResponse(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$502(Lcom/openfeint/internal/OpenFeintInternal;Z)Z

    .line 334
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    check-cast p2, Lcom/openfeint/api/resource/User;

    .end local p2    # "responseBody":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/openfeint/internal/OpenFeintInternal;->access$000(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/api/resource/User;)V

    .line 336
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal;->access$600(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal$4;->TAG:Ljava/lang/String;

    const-string v1, "Launching post-login runnable now."

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iget-object v0, v0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$600(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$602(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 347
    return-void

    .line 341
    .restart local p2    # "responseBody":Ljava/lang/Object;
    :cond_1
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->val$finalToast:Z

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$4;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->access$400(Lcom/openfeint/internal/OpenFeintInternal;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    const-string v0, "/xp/sessions.json"

    return-object v0
.end method
