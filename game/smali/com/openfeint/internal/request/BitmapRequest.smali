.class public abstract Lcom/openfeint/internal/request/BitmapRequest;
.super Lcom/openfeint/internal/request/BaseRequest;
.source "BitmapRequest.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/openfeint/internal/request/BaseRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "ServerException"

    invoke-static {v0, p1}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public onResponse(ILjava/io/InputStream;)V
    .locals 10
    .param p1, "responseCode"    # I
    .param p2, "bodyStream"    # Ljava/io/InputStream;

    .prologue
    .line 28
    const-string v3, "(unknown error)"

    .line 29
    .local v3, "exceptionMessage":Ljava/lang/String;
    const/16 v8, 0xc8

    if-gt v8, p1, :cond_0

    const/16 v8, 0x12c

    if-ge p1, v8, :cond_0

    if-eqz p2, :cond_0

    .line 30
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 31
    .local v1, "b":Landroid/graphics/Bitmap;
    const-string v3, "(bitmap decode error)"

    .line 32
    if-eqz v1, :cond_1

    .line 33
    invoke-virtual {p0, v1}, Lcom/openfeint/internal/request/BitmapRequest;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 52
    .end local v1    # "b":Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 36
    :cond_0
    const/16 v8, 0x194

    if-ne v8, p1, :cond_2

    .line 37
    const-string v3, "File not found"

    .line 51
    :cond_1
    :goto_1
    invoke-virtual {p0, v3}, Lcom/openfeint/internal/request/BitmapRequest;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 40
    :cond_2
    :try_start_0
    new-instance v6, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v6}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 41
    .local v6, "jsonFactory":Lorg/codehaus/jackson/JsonFactory;
    invoke-virtual {v6, p2}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v4

    .line 42
    .local v4, "jp":Lorg/codehaus/jackson/JsonParser;
    new-instance v5, Lcom/openfeint/internal/JsonResourceParser;

    invoke-direct {v5, v4}, Lcom/openfeint/internal/JsonResourceParser;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    .line 43
    .local v5, "jrp":Lcom/openfeint/internal/JsonResourceParser;
    invoke-virtual {v5}, Lcom/openfeint/internal/JsonResourceParser;->parse()Ljava/lang/Object;

    move-result-object v7

    .line 44
    .local v7, "responseBody":Ljava/lang/Object;
    if-eqz v7, :cond_1

    instance-of v8, v7, Lcom/openfeint/internal/resource/ServerException;

    if-eqz v8, :cond_1

    .line 45
    move-object v0, v7

    check-cast v0, Lcom/openfeint/internal/resource/ServerException;

    move-object v2, v0

    .line 46
    .local v2, "e":Lcom/openfeint/internal/resource/ServerException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 48
    .end local v2    # "e":Lcom/openfeint/internal/resource/ServerException;
    .end local v4    # "jp":Lorg/codehaus/jackson/JsonParser;
    .end local v5    # "jrp":Lcom/openfeint/internal/JsonResourceParser;
    .end local v6    # "jsonFactory":Lorg/codehaus/jackson/JsonFactory;
    .end local v7    # "responseBody":Ljava/lang/Object;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 49
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "(error parsing error message)"

    goto :goto_1
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "responseBody"    # Landroid/graphics/Bitmap;

    .prologue
    .line 20
    return-void
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method
