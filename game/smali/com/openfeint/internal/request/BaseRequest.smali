.class public abstract Lcom/openfeint/internal/request/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"


# static fields
.field private static DEFAULT_RETRIES:I

.field private static DEFAULT_TIMEOUT:J

.field protected static TAG:Ljava/lang/String;

.field private static sBaseServerURL:Ljava/lang/String;


# instance fields
.field private mArgs:Lcom/openfeint/internal/request/OrderedArgList;

.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mHttpParams:Lorg/apache/http/params/HttpParams;

.field private mKey:Ljava/lang/String;

.field private mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

.field private mResponded:Z

.field private mResponseBody:Ljava/io/InputStream;

.field private mResponseCode:I

.field private mResponseEncoding:Ljava/lang/String;

.field private mResponseType:Ljava/lang/String;

.field private mRetriesLeft:I

.field private mSecondsSinceEpoch:J

.field private mSignature:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x2

    sput v0, Lcom/openfeint/internal/request/BaseRequest;->DEFAULT_RETRIES:I

    .line 34
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/openfeint/internal/request/BaseRequest;->DEFAULT_TIMEOUT:J

    .line 36
    const-string v0, "Request"

    sput-object v0, Lcom/openfeint/internal/request/BaseRequest;->TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/openfeint/internal/request/BaseRequest;->sBaseServerURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponded:Z

    .line 41
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseEncoding:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseType:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    .line 55
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mFuture:Ljava/util/concurrent/Future;

    .line 57
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 2
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponded:Z

    .line 41
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseEncoding:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseType:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    .line 50
    iput v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    .line 55
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mFuture:Ljava/util/concurrent/Future;

    .line 57
    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 83
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/request/BaseRequest;->setArgs(Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 84
    return-void
.end method

.method static synthetic access$002(Lcom/openfeint/internal/request/BaseRequest;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/request/BaseRequest;
    .param p1, "x1"    # Ljava/io/InputStream;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:Ljava/io/InputStream;

    return-object p1
.end method

.method static synthetic access$102(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/request/BaseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseEncoding:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/openfeint/internal/request/BaseRequest;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/request/BaseRequest;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/openfeint/internal/request/BaseRequest;I)I
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/request/BaseRequest;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    return p1
.end method

.method protected static slurp(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 88
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 90
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected final addParams(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 1
    .param p1, "retval"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    invoke-interface {p1, v0}, Lorg/apache/http/client/methods/HttpUriRequest;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 166
    :cond_0
    return-void
.end method

.method public final exec()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v4

    iput-object v4, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 170
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->numRetries()I

    move-result v4

    iput v4, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    .line 172
    iput-object v5, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:Ljava/io/InputStream;

    .line 174
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:Ljava/io/InputStream;

    if-nez v4, :cond_2

    .line 176
    :try_start_0
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getClient()Lorg/apache/http/impl/client/AbstractHttpClient;

    move-result-object v0

    .line 177
    .local v0, "client":Lorg/apache/http/impl/client/AbstractHttpClient;
    iget-object v4, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    new-instance v5, Lcom/openfeint/internal/request/BaseRequest$1;

    invoke-direct {v5, p0}, Lcom/openfeint/internal/request/BaseRequest$1;-><init>(Lcom/openfeint/internal/request/BaseRequest;)V

    invoke-virtual {v0, v4, v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    .line 205
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    .end local v0    # "client":Lorg/apache/http/impl/client/AbstractHttpClient;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 208
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/openfeint/internal/request/BaseRequest;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error executing request \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->path()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v4}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 210
    iget v4, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/openfeint/internal/request/BaseRequest;->mRetriesLeft:I

    if-gez v4, :cond_0

    .line 212
    new-instance v3, Lcom/openfeint/internal/resource/ServerException;

    invoke-direct {v3}, Lcom/openfeint/internal/resource/ServerException;-><init>()V

    .line 213
    .local v3, "se":Lcom/openfeint/internal/resource/ServerException;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 214
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 215
    iget-object v4, v3, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 216
    const-string v4, "An unknown error occurred."

    iput-object v4, v3, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 218
    :cond_1
    invoke-virtual {v3}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "exceptionBody":Ljava/lang/String;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v4, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:Ljava/io/InputStream;

    .line 220
    const/4 v4, 0x0

    iput v4, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    .line 225
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "exceptionBody":Ljava/lang/String;
    .end local v3    # "se":Lcom/openfeint/internal/resource/ServerException;
    :cond_2
    return-void
.end method

.method protected generateRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 11

    .prologue
    const-string v10, "GET"

    const-string v9, "DELETE"

    .line 122
    const/4 v5, 0x0

    .line 123
    .local v5, "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->method()Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "meth":Ljava/lang/String;
    const-string v7, "GET"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "DELETE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->url()Ljava/lang/String;

    move-result-object v6

    .line 127
    .local v6, "url":Ljava/lang/String;
    iget-object v7, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    invoke-virtual {v7}, Lcom/openfeint/internal/request/OrderedArgList;->getArgString()Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "argString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 129
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 131
    :cond_1
    const-string v7, "GET"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    .end local v5    # "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 152
    .end local v0    # "argString":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    .restart local v5    # "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->signed()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 153
    const-string v7, "X-OF-Signature"

    iget-object v8, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v7, "X-OF-Key"

    iget-object v8, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    invoke-interface {v5, v7, v8}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_3
    invoke-virtual {p0, v5}, Lcom/openfeint/internal/request/BaseRequest;->addParams(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 159
    return-object v5

    .line 132
    .restart local v0    # "argString":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_4
    const-string v7, "DELETE"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v5, Lorg/apache/http/client/methods/HttpDelete;

    .end local v5    # "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .restart local v5    # "retval":Lorg/apache/http/client/methods/HttpUriRequest;
    goto :goto_0

    .line 134
    .end local v0    # "argString":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    .line 136
    .local v4, "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    const-string v7, "POST"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    .end local v4    # "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->url()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 141
    .restart local v4    # "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    :goto_1
    :try_start_0
    new-instance v2, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    iget-object v7, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    invoke-virtual {v7}, Lcom/openfeint/internal/request/OrderedArgList;->getArgs()Ljava/util/List;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 142
    .local v2, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v2, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v4, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :goto_2
    move-object v5, v4

    goto :goto_0

    .line 137
    :cond_6
    const-string v7, "PUT"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v4, Lorg/apache/http/client/methods/HttpPut;

    .end local v4    # "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->url()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    .restart local v4    # "postReq":Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    goto :goto_1

    .line 138
    :cond_7
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported HTTP method: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 144
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 145
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Unable to encode request."

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v7}, Ljava/io/UnsupportedEncodingException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method protected getHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mHttpParams:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method protected getResponseEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseEncoding:Ljava/lang/String;

    return-object v0
.end method

.method protected getResponseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseType:Ljava/lang/String;

    return-object v0
.end method

.method public launch()V
    .locals 0

    .prologue
    .line 236
    invoke-static {p0}, Lcom/openfeint/internal/OpenFeintInternal;->makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 237
    return-void
.end method

.method public abstract method()Ljava/lang/String;
.end method

.method public numRetries()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/openfeint/internal/request/BaseRequest;->DEFAULT_RETRIES:I

    return v0
.end method

.method public final onResponse()V
    .locals 2

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponded:Z

    if-nez v0, :cond_0

    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponded:Z

    .line 231
    iget v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    iget-object v1, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:Ljava/io/InputStream;

    invoke-virtual {p0, v0, v1}, Lcom/openfeint/internal/request/BaseRequest;->onResponse(ILjava/io/InputStream;)V

    .line 233
    :cond_0
    return-void
.end method

.method public abstract onResponse(ILjava/io/InputStream;)V
.end method

.method public abstract path()Ljava/lang/String;
.end method

.method public postTimeoutCleanup()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 241
    .local v0, "req":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/openfeint/internal/request/BaseRequest;->mRequest:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 243
    if-eqz v0, :cond_0

    .line 245
    :try_start_0
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    new-instance v1, Lcom/openfeint/internal/resource/ServerException;

    invoke-direct {v1}, Lcom/openfeint/internal/resource/ServerException;-><init>()V

    .line 252
    .local v1, "se":Lcom/openfeint/internal/resource/ServerException;
    const-string v2, "Timeout"

    iput-object v2, v1, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 253
    const-string v2, "The request didn\'t complete in time."

    iput-object v2, v1, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 254
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v2, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseBody:Ljava/io/InputStream;

    .line 255
    const/4 v2, 0x0

    iput v2, p0, Lcom/openfeint/internal/request/BaseRequest;->mResponseCode:I

    .line 256
    return-void

    .line 246
    .end local v1    # "se":Lcom/openfeint/internal/resource/ServerException;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final setArgs(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p1, "args"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    .line 119
    return-void
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iput-object p1, p0, Lcom/openfeint/internal/request/BaseRequest;->mFuture:Ljava/util/concurrent/Future;

    .line 61
    return-void
.end method

.method public final sign(Lcom/openfeint/internal/request/Signer;)V
    .locals 6
    .param p1, "authority"    # Lcom/openfeint/internal/request/Signer;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    if-nez v0, :cond_0

    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->signed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mSecondsSinceEpoch:J

    .line 112
    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->method()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/openfeint/internal/request/BaseRequest;->mSecondsSinceEpoch:J

    iget-object v5, p0, Lcom/openfeint/internal/request/BaseRequest;->mArgs:Lcom/openfeint/internal/request/OrderedArgList;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/request/Signer;->sign(Ljava/lang/String;Ljava/lang/String;JLcom/openfeint/internal/request/OrderedArgList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mSignature:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Lcom/openfeint/internal/request/Signer;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/BaseRequest;->mKey:Ljava/lang/String;

    .line 115
    :cond_1
    return-void
.end method

.method public signed()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public timeout()J
    .locals 2

    .prologue
    .line 53
    sget-wide v0, Lcom/openfeint/internal/request/BaseRequest;->DEFAULT_TIMEOUT:J

    return-wide v0
.end method

.method public url()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/openfeint/internal/request/BaseRequest;->sBaseServerURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/BaseRequest;->sBaseServerURL:Ljava/lang/String;

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/openfeint/internal/request/BaseRequest;->sBaseServerURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/openfeint/internal/request/BaseRequest;->path()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
