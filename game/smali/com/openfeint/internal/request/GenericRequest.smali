.class public Lcom/openfeint/internal/request/GenericRequest;
.super Lcom/openfeint/internal/request/JSONContentRequest;
.source "GenericRequest.java"


# instance fields
.field private mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

.field final mMethod:Ljava/lang/String;

.field final mPath:Ljava/lang/String;

.field private mRetries:I

.field private mTimeout:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p5, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openfeint/internal/request/IRawRequestDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p3, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "httpParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONContentRequest;-><init>()V

    .line 15
    invoke-super {p0}, Lcom/openfeint/internal/request/JSONContentRequest;->timeout()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/openfeint/internal/request/GenericRequest;->mTimeout:J

    .line 16
    invoke-super {p0}, Lcom/openfeint/internal/request/JSONContentRequest;->numRetries()I

    move-result v6

    iput v6, p0, Lcom/openfeint/internal/request/GenericRequest;->mRetries:I

    .line 29
    if-eqz p4, :cond_5

    .line 30
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 32
    .local v4, "k":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 33
    .local v5, "v":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 34
    .local v2, "i":I
    const-string v6, "connectionTimeout"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 35
    invoke-virtual {p0}, Lcom/openfeint/internal/request/GenericRequest;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 36
    :cond_1
    const-string v6, "socketTimeout"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 37
    invoke-virtual {p0}, Lcom/openfeint/internal/request/GenericRequest;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 38
    :cond_2
    const-string v6, "lingerTimeout"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 39
    invoke-virtual {p0}, Lcom/openfeint/internal/request/GenericRequest;->getHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v6

    invoke-static {v6, v2}, Lorg/apache/http/params/HttpConnectionParams;->setLinger(Lorg/apache/http/params/HttpParams;I)V

    goto :goto_0

    .line 40
    :cond_3
    const-string v6, "timeout"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 41
    int-to-long v6, v2

    iput-wide v6, p0, Lcom/openfeint/internal/request/GenericRequest;->mTimeout:J

    goto :goto_0

    .line 42
    :cond_4
    const-string v6, "retries"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 43
    iput v2, p0, Lcom/openfeint/internal/request/GenericRequest;->mRetries:I

    goto :goto_0

    .line 50
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "k":Ljava/lang/String;
    .end local v5    # "v":Ljava/lang/String;
    :cond_5
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0, p3}, Lcom/openfeint/internal/request/OrderedArgList;-><init>(Ljava/util/Map;)V

    .line 51
    .local v0, "argList":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v6, "format"

    const-string v7, "json"

    invoke-virtual {v0, v6, v7}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/GenericRequest;->setArgs(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 54
    iput-object p2, p0, Lcom/openfeint/internal/request/GenericRequest;->mMethod:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/openfeint/internal/request/GenericRequest;->mPath:Ljava/lang/String;

    .line 57
    invoke-virtual {p0, p5}, Lcom/openfeint/internal/request/GenericRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 58
    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/openfeint/internal/request/GenericRequest;->mMethod:Ljava/lang/String;

    return-object v0
.end method

.method public numRetries()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/openfeint/internal/request/GenericRequest;->mRetries:I

    return v0
.end method

.method public onResponse(ILjava/io/InputStream;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "bodyStream"    # Ljava/io/InputStream;

    .prologue
    .line 66
    :try_start_0
    invoke-static {p2}, Lcom/openfeint/internal/request/GenericRequest;->slurp(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "respText":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openfeint/internal/request/GenericRequest;->isResponseJSON()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    invoke-static {p1}, Lcom/openfeint/internal/request/GenericRequest;->notJSONError(I)Lcom/openfeint/internal/resource/ServerException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v1

    .line 71
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/request/GenericRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/openfeint/internal/request/GenericRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    invoke-interface {v2, p1, v1}, Lcom/openfeint/internal/request/IRawRequestDelegate;->onResponse(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .end local v1    # "respText":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 77
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 78
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 80
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/openfeint/internal/request/GenericRequest;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 0
    .param p1, "mDelegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/openfeint/internal/request/GenericRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    .line 86
    return-void
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/openfeint/internal/request/GenericRequest;->mTimeout:J

    return-wide v0
.end method
