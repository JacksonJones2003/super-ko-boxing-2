.class Lcom/openfeint/internal/ui/WebViewCache$4;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebViewCache;->loadNextItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;

.field final synthetic val$finalPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 639
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$finalPath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/openfeint/internal/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 641
    const-string v0, "GET"

    return-object v0
.end method

.method public onResponse(ILjava/io/InputStream;)V
    .locals 12
    .param p1, "responseCode"    # I
    .param p2, "bodyStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 644
    const/16 v8, 0xc8

    if-eq p1, v8, :cond_0

    .line 645
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v8, v8, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$finalPath:Ljava/lang/String;

    invoke-static {v8, v11, v10, v10, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 646
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 674
    :goto_0
    return-void

    .line 650
    .end local v5    # "msg":Landroid/os/Message;
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/DataInputStream;

    invoke-direct {v6, p2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 652
    .local v6, "reader":Ljava/io/DataInputStream;
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v8, v8, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 653
    .local v0, "baseDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "webui/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$finalPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 655
    .local v3, "filePath":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 656
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 657
    .local v4, "fileStream":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-direct {v7, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 660
    .local v7, "writer":Ljava/io/DataOutputStream;
    :goto_1
    sget-object v8, Lcom/openfeint/internal/ui/WebViewCache;->loadingBuffer:[B

    invoke-virtual {v6, v8}, Ljava/io/DataInputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_1

    .line 661
    sget-object v8, Lcom/openfeint/internal/ui/WebViewCache;->loadingBuffer:[B

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v1}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 665
    .end local v0    # "baseDir":Ljava/io/File;
    .end local v1    # "count":I
    .end local v3    # "filePath":Ljava/io/File;
    .end local v4    # "fileStream":Ljava/io/FileOutputStream;
    .end local v6    # "reader":Ljava/io/DataInputStream;
    .end local v7    # "writer":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 667
    .local v2, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v8, v8, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$finalPath:Ljava/lang/String;

    invoke-static {v8, v11, v10, v10, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 668
    .restart local v5    # "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 663
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "msg":Landroid/os/Message;
    .restart local v0    # "baseDir":Ljava/io/File;
    .restart local v1    # "count":I
    .restart local v3    # "filePath":Ljava/io/File;
    .restart local v4    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v6    # "reader":Ljava/io/DataInputStream;
    .restart local v7    # "writer":Ljava/io/DataOutputStream;
    :cond_1
    :try_start_1
    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V

    .line 664
    invoke-virtual {v6}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 672
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v8, v8, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$finalPath:Ljava/lang/String;

    invoke-static {v8, v11, v11, v10, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 673
    .restart local v5    # "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 2

    .prologue
    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/webui/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$4;->val$finalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    return v0
.end method
