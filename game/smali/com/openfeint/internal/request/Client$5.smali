.class Lcom/openfeint/internal/request/Client$5;
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

.field final synthetic val$onTimeout:Ljava/lang/Runnable;

.field final synthetic val$req:Lcom/openfeint/internal/request/BaseRequest;

.field final synthetic val$timeoutMillis:J


# direct methods
.method constructor <init>(Lcom/openfeint/internal/request/Client;Ljava/lang/Runnable;JLcom/openfeint/internal/request/BaseRequest;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/openfeint/internal/request/Client$5;->this$0:Lcom/openfeint/internal/request/Client;

    iput-object p2, p0, Lcom/openfeint/internal/request/Client$5;->val$onTimeout:Ljava/lang/Runnable;

    iput-wide p3, p0, Lcom/openfeint/internal/request/Client$5;->val$timeoutMillis:J

    iput-object p5, p0, Lcom/openfeint/internal/request/Client$5;->val$req:Lcom/openfeint/internal/request/BaseRequest;

    iput-object p6, p0, Lcom/openfeint/internal/request/Client$5;->val$onResponse:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/openfeint/internal/request/Client$5;->this$0:Lcom/openfeint/internal/request/Client;

    invoke-static {v0}, Lcom/openfeint/internal/request/Client;->access$000(Lcom/openfeint/internal/request/Client;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/internal/request/Client$5;->val$onTimeout:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/openfeint/internal/request/Client$5;->val$timeoutMillis:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 154
    iget-object v0, p0, Lcom/openfeint/internal/request/Client$5;->val$req:Lcom/openfeint/internal/request/BaseRequest;

    iget-object v1, p0, Lcom/openfeint/internal/request/Client$5;->this$0:Lcom/openfeint/internal/request/Client;

    invoke-static {v1}, Lcom/openfeint/internal/request/Client;->access$100(Lcom/openfeint/internal/request/Client;)Lcom/openfeint/internal/request/Signer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/request/BaseRequest;->sign(Lcom/openfeint/internal/request/Signer;)V

    .line 155
    iget-object v0, p0, Lcom/openfeint/internal/request/Client$5;->val$req:Lcom/openfeint/internal/request/BaseRequest;

    invoke-virtual {v0}, Lcom/openfeint/internal/request/BaseRequest;->exec()V

    .line 156
    iget-object v0, p0, Lcom/openfeint/internal/request/Client$5;->this$0:Lcom/openfeint/internal/request/Client;

    invoke-static {v0}, Lcom/openfeint/internal/request/Client;->access$000(Lcom/openfeint/internal/request/Client;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/internal/request/Client$5;->val$onTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    iget-object v0, p0, Lcom/openfeint/internal/request/Client$5;->this$0:Lcom/openfeint/internal/request/Client;

    invoke-static {v0}, Lcom/openfeint/internal/request/Client;->access$000(Lcom/openfeint/internal/request/Client;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/internal/request/Client$5;->val$onResponse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
.end method
