.class Lcom/openfeint/internal/request/Client$4;
.super Ljava/lang/Object;
.source "Client.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/request/Client;->makeRequest(Lcom/openfeint/internal/request/BaseRequest;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/request/Client;

.field final synthetic val$onResponse:Ljava/lang/Runnable;

.field final synthetic val$req:Lcom/openfeint/internal/request/BaseRequest;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/request/Client;Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/openfeint/internal/request/Client$4;->this$0:Lcom/openfeint/internal/request/Client;

    iput-object p2, p0, Lcom/openfeint/internal/request/Client$4;->val$req:Lcom/openfeint/internal/request/BaseRequest;

    iput-object p3, p0, Lcom/openfeint/internal/request/Client$4;->val$onResponse:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 140
    iget-object v1, p0, Lcom/openfeint/internal/request/Client$4;->val$req:Lcom/openfeint/internal/request/BaseRequest;

    invoke-virtual {v1}, Lcom/openfeint/internal/request/BaseRequest;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/openfeint/internal/request/Client$4;->val$req:Lcom/openfeint/internal/request/BaseRequest;

    invoke-virtual {v1}, Lcom/openfeint/internal/request/BaseRequest;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    .line 142
    .local v0, "victory":Z
    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/openfeint/internal/request/Client$4;->val$req:Lcom/openfeint/internal/request/BaseRequest;

    invoke-virtual {v1}, Lcom/openfeint/internal/request/BaseRequest;->postTimeoutCleanup()V

    .line 144
    iget-object v1, p0, Lcom/openfeint/internal/request/Client$4;->this$0:Lcom/openfeint/internal/request/Client;

    invoke-static {v1}, Lcom/openfeint/internal/request/Client;->access$000(Lcom/openfeint/internal/request/Client;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/openfeint/internal/request/Client$4;->val$onResponse:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 147
    .end local v0    # "victory":Z
    :cond_0
    return-void
.end method
