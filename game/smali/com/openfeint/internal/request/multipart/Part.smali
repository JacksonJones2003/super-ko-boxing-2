.class public abstract Lcom/openfeint/internal/request/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY:Ljava/lang/String; = "----------------ULTRASONIC_CUPCAKES___-__-"

.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET:Ljava/lang/String; = "; charset="

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition: form-data; name="

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding: "

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type: "

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF:Ljava/lang/String; = "\r\n"

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA:Ljava/lang/String; = "--"

.field protected static final EXTRA_BYTES:[B

.field protected static final QUOTE:Ljava/lang/String; = "\""

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "----------------ULTRASONIC_CUPCAKES___-__-"

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/multipart/Part;->BOUNDARY_BYTES:[B

    .line 68
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lcom/openfeint/internal/request/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 74
    const-string v0, "\r\n"

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/multipart/Part;->CRLF_BYTES:[B

    .line 80
    const-string v0, "\""

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/multipart/Part;->QUOTE_BYTES:[B

    .line 87
    const-string v0, "--"

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/multipart/Part;->EXTRA_BYTES:[B

    .line 94
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 101
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 108
    const-string v0, "; charset="

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/multipart/Part;->CHARSET_BYTES:[B

    .line 115
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/openfeint/internal/request/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    const-string v0, "----------------ULTRASONIC_CUPCAKES___-__-"

    return-object v0
.end method

.method public static getLengthOfParts([Lcom/openfeint/internal/request/multipart/Part;)J
    .locals 2
    .param p0, "parts"    # [Lcom/openfeint/internal/request/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, v0}, Lcom/openfeint/internal/request/multipart/Part;->getLengthOfParts([Lcom/openfeint/internal/request/multipart/Part;[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLengthOfParts([Lcom/openfeint/internal/request/multipart/Part;[B)J
    .locals 7
    .param p0, "parts"    # [Lcom/openfeint/internal/request/multipart/Part;
    .param p1, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 405
    if-nez p0, :cond_0

    .line 406
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parts may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 408
    :cond_0
    const-wide/16 v3, 0x0

    .line 409
    .local v3, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, p0

    if-ge v0, v5, :cond_2

    .line 411
    aget-object v5, p0, v0

    invoke-virtual {v5, p1}, Lcom/openfeint/internal/request/multipart/Part;->setPartBoundary([B)V

    .line 412
    aget-object v5, p0, v0

    invoke-virtual {v5}, Lcom/openfeint/internal/request/multipart/Part;->length()J

    move-result-wide v1

    .line 413
    .local v1, "l":J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 414
    const-wide/16 v5, -0x1

    .line 422
    .end local v1    # "l":J
    :goto_1
    return-wide v5

    .line 416
    .restart local v1    # "l":J
    :cond_1
    add-long/2addr v3, v1

    .line 409
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 418
    .end local v1    # "l":J
    :cond_2
    sget-object v5, Lcom/openfeint/internal/request/multipart/Part;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 419
    array-length v5, p1

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 420
    sget-object v5, Lcom/openfeint/internal/request/multipart/Part;->EXTRA_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 421
    sget-object v5, Lcom/openfeint/internal/request/multipart/Part;->CRLF_BYTES:[B

    array-length v5, v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-wide v5, v3

    .line 422
    goto :goto_1
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/openfeint/internal/request/multipart/Part;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcom/openfeint/internal/request/multipart/Part;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    invoke-static {p0, p1, v0}, Lcom/openfeint/internal/request/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/openfeint/internal/request/multipart/Part;[B)V

    .line 347
    return-void
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/openfeint/internal/request/multipart/Part;[B)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcom/openfeint/internal/request/multipart/Part;
    .param p2, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parts may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 366
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 367
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "partBoundary may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 371
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcom/openfeint/internal/request/multipart/Part;->setPartBoundary([B)V

    .line 372
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/openfeint/internal/request/multipart/Part;->send(Ljava/io/OutputStream;)V

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 374
    :cond_3
    sget-object v1, Lcom/openfeint/internal/request/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 375
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 376
    sget-object v1, Lcom/openfeint/internal/request/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 377
    sget-object v1, Lcom/openfeint/internal/request/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 378
    return-void
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/openfeint/internal/request/multipart/Part;->boundaryBytes:[B

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 168
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/request/multipart/Part;->boundaryBytes:[B

    goto :goto_0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/Part;->lengthOfData()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 315
    const-wide/16 v1, -0x1

    .line 324
    :goto_0
    return-wide v1

    .line 317
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 318
    .local v0, "overhead":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 319
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 320
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 321
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 322
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/openfeint/internal/request/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 324
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/Part;->lengthOfData()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/request/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 296
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/request/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 297
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/request/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/request/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/request/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/request/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/request/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 302
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 224
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 225
    sget-object v2, Lcom/openfeint/internal/request/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 226
    sget-object v2, Lcom/openfeint/internal/request/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 227
    invoke-static {v1}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 228
    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 230
    sget-object v2, Lcom/openfeint/internal/request/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 231
    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 234
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 212
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 213
    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 214
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 215
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 283
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 284
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 259
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 260
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 200
    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 201
    sget-object v0, Lcom/openfeint/internal/request/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 202
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "transferEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 246
    sget-object v1, Lcom/openfeint/internal/request/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 247
    sget-object v1, Lcom/openfeint/internal/request/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 248
    invoke-static {v0}, Lcom/openfeint/internal/request/multipart/EncodingUtil;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 250
    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0
    .param p1, "boundaryBytes"    # [B

    .prologue
    .line 180
    iput-object p1, p0, Lcom/openfeint/internal/request/multipart/Part;->boundaryBytes:[B

    .line 181
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/openfeint/internal/request/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
