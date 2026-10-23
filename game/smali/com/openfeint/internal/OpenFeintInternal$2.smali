.class Lcom/openfeint/internal/OpenFeintInternal$2;
.super Lcom/openfeint/internal/request/RawRequest;
.source "OpenFeintInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->createDeviceSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p2, "x0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/RawRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    const-string v0, "POST"

    return-object v0
.end method

.method public onResponse(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$102(Lcom/openfeint/internal/OpenFeintInternal;Z)Z

    .line 268
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$202(Lcom/openfeint/internal/OpenFeintInternal;Z)Z

    .line 270
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal;->access$300(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal$2;->TAG:Ljava/lang/String;

    const-string v1, "Launching post-device-session runnable now."

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iget-object v0, v0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$300(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 278
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$302(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 279
    return-void

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$2;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->access$400(Lcom/openfeint/internal/OpenFeintInternal;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    const-string v0, "/xp/devices"

    return-object v0
.end method
