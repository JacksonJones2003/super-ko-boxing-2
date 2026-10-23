.class abstract Lcom/verizon/vcast/apps/VzwGenDigest;
.super Ljava/lang/Object;
.source "VzwGenDigest.java"

# interfaces
.implements Lcom/verizon/vcast/apps/VzwDigest;


# static fields
.field private static final BYTE_LENGTH:I = 0x40


# instance fields
.field private byteCount:J

.field private xBuf:[B

.field private xBufOff:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/verizon/vcast/apps/VzwGenDigest;)V
    .locals 4
    .param p1, "t"    # Lcom/verizon/vcast/apps/VzwGenDigest;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iget-object v0, p1, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    array-length v0, v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    .line 43
    iget-object v0, p1, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    iget-object v2, p1, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iget v0, p1, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    iput v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    .line 46
    iget-wide v0, p1, Lcom/verizon/vcast/apps/VzwGenDigest;->byteCount:J

    iput-wide v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->byteCount:J

    .line 47
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 5

    .prologue
    .line 94
    iget-wide v2, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->byteCount:J

    const/4 v4, 0x3

    shl-long v0, v2, v4

    .line 99
    .local v0, "bitLength":J
    const/16 v2, -0x80

    invoke-virtual {p0, v2}, Lcom/verizon/vcast/apps/VzwGenDigest;->update(B)V

    .line 101
    :goto_0
    iget v2, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    if-nez v2, :cond_0

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/verizon/vcast/apps/VzwGenDigest;->processLength(J)V

    .line 107
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwGenDigest;->processBlock()V

    .line 108
    return-void

    .line 102
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/verizon/vcast/apps/VzwGenDigest;->update(B)V

    goto :goto_0
.end method

.method public getByteLength()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x40

    return v0
.end method

.method protected abstract processBlock()V
.end method

.method protected abstract processLength(J)V
.end method

.method protected abstract processWord([BI)V
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->byteCount:J

    .line 113
    iput v3, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 117
    return-void

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    aput-byte v3, v1, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public update(B)V
    .locals 4
    .param p1, "in"    # B

    .prologue
    const/4 v3, 0x0

    .line 50
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    iget v1, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    aput-byte p1, v0, v1

    .line 52
    iget v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    invoke-virtual {p0, v0, v3}, Lcom/verizon/vcast/apps/VzwGenDigest;->processWord([BI)V

    .line 54
    iput v3, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    .line 57
    :cond_0
    iget-wide v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->byteCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->byteCount:J

    .line 58
    return-void
.end method

.method public update([BII)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .prologue
    .line 64
    :goto_0
    iget v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBufOff:I

    if-eqz v0, :cond_0

    if-gtz p3, :cond_1

    .line 74
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    array-length v0, v0

    if-gt p3, v0, :cond_2

    .line 85
    :goto_2
    if-gtz p3, :cond_3

    .line 91
    return-void

    .line 65
    :cond_1
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/verizon/vcast/apps/VzwGenDigest;->update(B)V

    .line 67
    add-int/lit8 p2, p2, 0x1

    .line 68
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/verizon/vcast/apps/VzwGenDigest;->processWord([BI)V

    .line 77
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    array-length v0, v0

    add-int/2addr p2, v0

    .line 78
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    array-length v0, v0

    sub-int/2addr p3, v0

    .line 79
    iget-wide v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->byteCount:J

    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->xBuf:[B

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/verizon/vcast/apps/VzwGenDigest;->byteCount:J

    goto :goto_1

    .line 86
    :cond_3
    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lcom/verizon/vcast/apps/VzwGenDigest;->update(B)V

    .line 88
    add-int/lit8 p2, p2, 0x1

    .line 89
    add-int/lit8 p3, p3, -0x1

    goto :goto_2
.end method
