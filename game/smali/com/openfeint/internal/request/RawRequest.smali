.class public abstract Lcom/openfeint/internal/request/RawRequest;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "RawRequest.java"


# instance fields
.field private mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 17
    return-void
.end method


# virtual methods
.method public onResponse(ILjava/io/InputStream;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "bodyStream"    # Ljava/io/InputStream;

    .prologue
    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/openfeint/internal/request/RawRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    if-eqz v2, :cond_1

    .line 22
    invoke-static {p2}, Lcom/openfeint/internal/request/RawRequest;->slurp(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "respText":Ljava/lang/String;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-super {p0, p1, v2}, Lcom/openfeint/internal/request/JSONRequest;->onResponse(ILjava/io/InputStream;)V

    .line 27
    invoke-virtual {p0}, Lcom/openfeint/internal/request/RawRequest;->isResponseJSON()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    invoke-static {p1}, Lcom/openfeint/internal/request/RawRequest;->notJSONError(I)Lcom/openfeint/internal/resource/ServerException;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v1

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/request/RawRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    invoke-interface {v2, p1, v1}, Lcom/openfeint/internal/request/IRawRequestDelegate;->onResponse(ILjava/lang/String;)V

    .line 43
    .end local v1    # "respText":Ljava/lang/String;
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/openfeint/internal/request/JSONRequest;->onResponse(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 36
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 38
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 39
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 41
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 0
    .param p1, "mDelegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/openfeint/internal/request/RawRequest;->mDelegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    .line 47
    return-void
.end method
