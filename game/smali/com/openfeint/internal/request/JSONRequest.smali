.class public abstract Lcom/openfeint/internal/request/JSONRequest;
.super Lcom/openfeint/internal/request/JSONContentRequest;
.source "JSONRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONContentRequest;-><init>()V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/openfeint/internal/request/JSONContentRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 64
    const-string v2, "(unknown error)"

    .line 66
    .local v2, "exceptionMessage":Ljava/lang/String;
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/openfeint/internal/resource/ServerException;

    if-eqz v3, :cond_0

    .line 67
    move-object v0, p1

    check-cast v0, Lcom/openfeint/internal/resource/ServerException;

    move-object v1, v0

    .line 68
    .local v1, "e":Lcom/openfeint/internal/resource/ServerException;
    iget-object v2, v1, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 70
    iget-boolean v3, v1, Lcom/openfeint/internal/resource/ServerException;->needsDeveloperAttention:Z

    if-eqz v3, :cond_0

    .line 71
    const-string v3, "ServerException"

    invoke-static {v3, v2}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/openfeint/internal/OpenFeintInternal;->displayErrorDialog(Ljava/lang/CharSequence;)V

    .line 76
    .end local v1    # "e":Lcom/openfeint/internal/resource/ServerException;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 0
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 17
    return-void
.end method

.method public onResponse(ILjava/io/InputStream;)V
    .locals 11
    .param p1, "responseCode"    # I
    .param p2, "bodyStream"    # Ljava/io/InputStream;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/openfeint/internal/request/JSONRequest;->isResponseJSON()Z

    move-result v7

    if-nez v7, :cond_0

    .line 30
    invoke-static {p1}, Lcom/openfeint/internal/request/JSONRequest;->notJSONError(I)Lcom/openfeint/internal/resource/ServerException;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Lcom/openfeint/internal/request/JSONRequest;->onResponse(ILjava/lang/Object;)V

    .line 53
    :goto_0
    return-void

    .line 36
    :cond_0
    :try_start_0
    new-instance v3, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v3}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 37
    .local v3, "jsonFactory":Lorg/codehaus/jackson/JsonFactory;
    const/4 v5, 0x0

    .line 38
    .local v5, "reader":Ljava/io/InputStreamReader;
    invoke-virtual {p0}, Lcom/openfeint/internal/request/JSONRequest;->getResponseEncoding()Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "re":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 40
    new-instance v5, Ljava/io/InputStreamReader;

    .end local v5    # "reader":Ljava/io/InputStreamReader;
    invoke-direct {v5, p2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 45
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v3, v5}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/Reader;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    .line 46
    .local v1, "jp":Lorg/codehaus/jackson/JsonParser;
    new-instance v2, Lcom/openfeint/internal/JsonResourceParser;

    invoke-direct {v2, v1}, Lcom/openfeint/internal/JsonResourceParser;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    .line 47
    .local v2, "jrp":Lcom/openfeint/internal/JsonResourceParser;
    invoke-virtual {v2}, Lcom/openfeint/internal/JsonResourceParser;->parse()Ljava/lang/Object;

    move-result-object v6

    .line 49
    .local v6, "responseBody":Ljava/lang/Object;
    invoke-virtual {p0, p1, v6}, Lcom/openfeint/internal/request/JSONRequest;->onResponse(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v1    # "jp":Lorg/codehaus/jackson/JsonParser;
    .end local v2    # "jrp":Lcom/openfeint/internal/JsonResourceParser;
    .end local v3    # "jsonFactory":Lorg/codehaus/jackson/JsonFactory;
    .end local v4    # "re":Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .end local v6    # "responseBody":Ljava/lang/Object;
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 51
    .local v0, "e":Ljava/io/IOException;
    new-instance v7, Lcom/openfeint/internal/resource/ServerException;

    const-string v8, "IOException"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException reading response body. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/openfeint/internal/resource/ServerException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v7}, Lcom/openfeint/internal/request/JSONRequest;->onResponse(ILjava/lang/Object;)V

    goto :goto_0

    .line 42
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "jsonFactory":Lorg/codehaus/jackson/JsonFactory;
    .restart local v4    # "re":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/InputStreamReader;

    .end local v5    # "reader":Ljava/io/InputStreamReader;
    invoke-direct {v5, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_1
.end method

.method protected onResponse(ILjava/lang/Object;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 56
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    if-eqz p2, :cond_0

    instance-of v0, p2, Lcom/openfeint/internal/resource/ServerException;

    if-nez v0, :cond_1

    .line 57
    :cond_0
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;->onSuccess(Ljava/lang/Object;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_1
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 16
    return-void
.end method
