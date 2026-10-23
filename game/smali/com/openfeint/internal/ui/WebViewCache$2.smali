.class Lcom/openfeint/internal/ui/WebViewCache$2;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebViewCache;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$2;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {p0}, Lcom/openfeint/internal/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    const-string v0, "GET"

    return-object v0
.end method

.method public onResponse(ILjava/io/InputStream;)V
    .locals 6
    .param p1, "responseCode"    # I
    .param p2, "bodyStream"    # Ljava/io/InputStream;

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "data":Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_0

    .line 299
    :try_start_0
    new-instance v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache$2;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v1, v4, p2}, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "data":Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
    .local v1, "data":Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
    move-object v0, v1

    .line 305
    .end local v1    # "data":Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
    .restart local v0    # "data":Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache$2;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v4, v4, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-static {v4, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 306
    .local v3, "msg":Landroid/os/Message;
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 307
    return-void

    .line 300
    .end local v3    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 301
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/openfeint/internal/ui/WebViewCache$2;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->access$300()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method
