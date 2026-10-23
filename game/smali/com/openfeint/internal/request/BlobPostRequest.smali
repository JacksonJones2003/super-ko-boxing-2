.class public Lcom/openfeint/internal/request/BlobPostRequest;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "BlobPostRequest.java"


# instance fields
.field mContentType:Ljava/lang/String;

.field private mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

.field mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

.field mPartSource:Lcom/openfeint/internal/request/multipart/PartSource;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/resource/BlobUploadParameters;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Lcom/openfeint/internal/resource/BlobUploadParameters;
    .param p2, "partSource"    # Lcom/openfeint/internal/request/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/openfeint/internal/request/BaseRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 66
    iput-object p1, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    .line 67
    iput-object p2, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mPartSource:Lcom/openfeint/internal/request/multipart/PartSource;

    .line 68
    iput-object p3, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mContentType:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method protected generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 10

    .prologue
    .line 42
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {p0}, Lcom/openfeint/internal/request/BlobPostRequest;->url()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 44
    .local v4, "retval":Lorg/apache/http/client/methods/HttpPost;
    const/4 v1, 0x0

    .line 45
    .local v1, "idx":I
    const/4 v5, 0x6

    new-array v3, v5, [Lcom/openfeint/internal/request/multipart/Part;

    .line 46
    .local v3, "parts":[Lcom/openfeint/internal/request/multipart/Part;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .local v2, "idx":I
    new-instance v5, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v6, "AWSAccessKeyId"

    iget-object v7, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v7, v7, Lcom/openfeint/internal/resource/BlobUploadParameters;->AWSAccessKeyId:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v1

    .line 47
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    new-instance v5, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v6, "acl"

    iget-object v7, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v7, v7, Lcom/openfeint/internal/resource/BlobUploadParameters;->acl:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v2

    .line 48
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    new-instance v5, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v6, "key"

    iget-object v7, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v7, v7, Lcom/openfeint/internal/resource/BlobUploadParameters;->key:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v1

    .line 49
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    new-instance v5, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v6, "policy"

    iget-object v7, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v7, v7, Lcom/openfeint/internal/resource/BlobUploadParameters;->policy:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v2

    .line 50
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "idx":I
    .restart local v2    # "idx":I
    new-instance v5, Lcom/openfeint/internal/request/multipart/StringPart;

    const-string v6, "signature"

    iget-object v7, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v7, v7, Lcom/openfeint/internal/resource/BlobUploadParameters;->signature:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/openfeint/internal/request/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v1

    .line 51
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "idx":I
    .restart local v1    # "idx":I
    new-instance v5, Lcom/openfeint/internal/request/multipart/FilePart;

    const-string v6, "file"

    iget-object v7, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mPartSource:Lcom/openfeint/internal/request/multipart/PartSource;

    iget-object v8, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mContentType:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/openfeint/internal/request/multipart/FilePart;-><init>(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v2

    .line 53
    new-instance v0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;

    invoke-direct {v0, v3}, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;-><init>([Lcom/openfeint/internal/request/multipart/Part;)V

    .line 54
    .local v0, "e":Lorg/apache/http/HttpEntity;
    invoke-virtual {v4, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 56
    invoke-virtual {p0, v4}, Lcom/openfeint/internal/request/BlobPostRequest;->addParams(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 58
    return-object v4
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "POST"

    return-object v0
.end method

.method public onResponse(ILjava/io/InputStream;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "bodyStream"    # Ljava/io/InputStream;

    .prologue
    .line 72
    iget-object v1, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    if-eqz v1, :cond_0

    .line 73
    const-string v0, ""

    .line 75
    .local v0, "respText":Ljava/lang/String;
    :try_start_0
    invoke-static {p2}, Lcom/openfeint/internal/request/BlobPostRequest;->slurp(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    invoke-interface {v1, p1, v0}, Lcom/openfeint/internal/request/IRawRequestDelegate;->onResponse(ILjava/lang/String;)V

    .line 80
    .end local v0    # "respText":Ljava/lang/String;
    :cond_0
    return-void

    .line 76
    .restart local v0    # "respText":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, ""

    return-object v0
.end method

.method public setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 0
    .param p1, "mDelegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    .line 84
    return-void
.end method

.method public sign()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/openfeint/internal/request/BlobPostRequest;->mParams:Lcom/openfeint/internal/resource/BlobUploadParameters;

    iget-object v0, v0, Lcom/openfeint/internal/resource/BlobUploadParameters;->action:Ljava/lang/String;

    return-object v0
.end method
