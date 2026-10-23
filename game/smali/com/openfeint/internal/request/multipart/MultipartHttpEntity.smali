.class public Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;
.super Ljava/lang/Object;
.source "MultipartHttpEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field private static MULTIPART_CHARS:[B = null

.field private static final MULTIPART_FORM_CONTENT_TYPE:Ljava/lang/String; = "multipart/form-data"

.field private static final TAG:Ljava/lang/String; = "MultipartRequestEntity"


# instance fields
.field private multipartBoundary:[B

.field protected parts:[Lcom/openfeint/internal/request/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-string v0, "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->MULTIPART_CHARS:[B

    return-void
.end method

.method public constructor <init>([Lcom/openfeint/internal/request/multipart/Part;)V
    .locals 2
    .param p1, "parts"    # [Lcom/openfeint/internal/request/multipart/Part;

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->parts:[Lcom/openfeint/internal/request/multipart/Part;

    .line 120
    return-void
.end method

.method private static generateMultipartBoundary()[B
    .locals 5

    .prologue
    .line 98
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 99
    .local v2, "rand":Ljava/util/Random;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    new-array v0, v3, [B

    .line 100
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 101
    sget-object v3, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->MULTIPART_CHARS:[B

    sget-object v4, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->MULTIPART_CHARS:[B

    array-length v4, v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget-byte v3, v3, v4

    aput-byte v3, v0, v1

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-object v0
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Encoding"

    const-string v2, "text/html; charset=UTF-8"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 3

    .prologue
    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->parts:[Lcom/openfeint/internal/request/multipart/Part;

    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->getMultipartBoundary()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/request/multipart/Part;->getLengthOfParts([Lcom/openfeint/internal/request/multipart/Part;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 166
    :goto_0
    return-wide v1

    .line 164
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MultipartRequestEntity"

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-static {v1, v2}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v1}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getMultipartBoundary()[B
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->multipartBoundary:[B

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->generateMultipartBoundary()[B

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->multipartBoundary:[B

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->multipartBoundary:[B

    return-object v0
.end method

.method public isChunked()Z
    .locals 4

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 2

    .prologue
    .line 143
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->parts:[Lcom/openfeint/internal/request/multipart/Part;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->parts:[Lcom/openfeint/internal/request/multipart/Part;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/openfeint/internal/request/multipart/Part;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    const/4 v1, 0x0

    .line 148
    :goto_1
    return v1

    .line 143
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    iget-object v0, p0, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->parts:[Lcom/openfeint/internal/request/multipart/Part;

    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/MultipartHttpEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/openfeint/internal/request/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/openfeint/internal/request/multipart/Part;[B)V

    .line 156
    return-void
.end method
