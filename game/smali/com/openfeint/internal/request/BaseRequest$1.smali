.class Lcom/openfeint/internal/request/BaseRequest$1;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/request/BaseRequest;->exec()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/request/BaseRequest;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/request/BaseRequest;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 183
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v2, :cond_2

    .line 184
    iget-object v3, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3, v4}, Lcom/openfeint/internal/request/BaseRequest;->access$002(Lcom/openfeint/internal/request/BaseRequest;Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 186
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    .line 187
    .local v0, "contentEncoding":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 188
    iget-object v3, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/openfeint/internal/request/BaseRequest;->access$102(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    :cond_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v1

    .line 192
    .local v1, "contentType":Lorg/apache/http/Header;
    if-eqz v1, :cond_1

    .line 193
    iget-object v3, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/openfeint/internal/request/BaseRequest;->access$202(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .end local v0    # "contentEncoding":Lorg/apache/http/Header;
    .end local v1    # "contentType":Lorg/apache/http/Header;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    invoke-static {v3, v4}, Lcom/openfeint/internal/request/BaseRequest;->access$302(Lcom/openfeint/internal/request/BaseRequest;I)I

    .line 200
    const/4 v3, 0x0

    return-object v3

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/openfeint/internal/request/BaseRequest$1;->this$0:Lcom/openfeint/internal/request/BaseRequest;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    const/4 v5, 0x0

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3, v4}, Lcom/openfeint/internal/request/BaseRequest;->access$002(Lcom/openfeint/internal/request/BaseRequest;Ljava/io/InputStream;)Ljava/io/InputStream;

    goto :goto_0
.end method
