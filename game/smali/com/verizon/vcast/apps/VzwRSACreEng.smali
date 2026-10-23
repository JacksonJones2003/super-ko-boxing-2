.class Lcom/verizon/vcast/apps/VzwRSACreEng;
.super Ljava/lang/Object;
.source "VzwRSACreEng.java"


# instance fields
.field private forEncryption:Z

.field private key:Lcom/verizon/vcast/apps/VzwRSAKyParam;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convertInput([BII)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    const-string v4, "input too large for RSA cipher."

    .line 86
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwRSACreEng;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-le p3, v2, :cond_0

    .line 88
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwRSACreEng;->getInputBlockSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p3, v2, :cond_1

    iget-boolean v2, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->forEncryption:Z

    if-nez v2, :cond_1

    .line 92
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :cond_1
    if-nez p2, :cond_2

    array-length v2, p1

    if-eq p3, v2, :cond_3

    .line 99
    :cond_2
    new-array v0, p3, [B

    .line 101
    .local v0, "block":[B
    const/4 v2, 0x0

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :goto_0
    new-instance v1, Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[B)V

    .line 109
    .local v1, "res":Lcom/verizon/vcast/apps/VzwBigInt;
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->key:Lcom/verizon/vcast/apps/VzwRSAKyParam;

    invoke-virtual {v2}, Lcom/verizon/vcast/apps/VzwRSAKyParam;->getModulus()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I

    move-result v2

    if-ltz v2, :cond_4

    .line 111
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "input too large for RSA cipher."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v0    # "block":[B
    .end local v1    # "res":Lcom/verizon/vcast/apps/VzwBigInt;
    :cond_3
    move-object v0, p1

    .restart local v0    # "block":[B
    goto :goto_0

    .line 114
    .restart local v1    # "res":Lcom/verizon/vcast/apps/VzwBigInt;
    :cond_4
    return-object v1
.end method

.method public convertOutput(Lcom/verizon/vcast/apps/VzwBigInt;)[B
    .locals 6
    .param p1, "result"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-virtual {p1}, Lcom/verizon/vcast/apps/VzwBigInt;->toByteArray()[B

    move-result-object v0

    .line 120
    .local v0, "output":[B
    iget-boolean v2, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->forEncryption:Z

    if-eqz v2, :cond_1

    .line 122
    aget-byte v2, v0, v4

    if-nez v2, :cond_0

    array-length v2, v0

    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwRSACreEng;->getOutputBlockSize()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 124
    array-length v2, v0

    sub-int/2addr v2, v5

    new-array v1, v2, [B

    .line 126
    .local v1, "tmp":[B
    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 152
    .end local v1    # "tmp":[B
    :goto_0
    return-object v2

    .line 131
    :cond_0
    array-length v2, v0

    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwRSACreEng;->getOutputBlockSize()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 133
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwRSACreEng;->getOutputBlockSize()I

    move-result v2

    new-array v1, v2, [B

    .line 135
    .restart local v1    # "tmp":[B
    array-length v2, v1

    array-length v3, v0

    sub-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 137
    goto :goto_0

    .line 142
    .end local v1    # "tmp":[B
    :cond_1
    aget-byte v2, v0, v4

    if-nez v2, :cond_2

    .line 144
    array-length v2, v0

    sub-int/2addr v2, v5

    new-array v1, v2, [B

    .line 146
    .restart local v1    # "tmp":[B
    array-length v2, v1

    invoke-static {v0, v5, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 148
    goto :goto_0

    .end local v1    # "tmp":[B
    :cond_2
    move-object v2, v0

    .line 152
    goto :goto_0
.end method

.method public getInputBlockSize()I
    .locals 3

    .prologue
    .line 53
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->key:Lcom/verizon/vcast/apps/VzwRSAKyParam;

    invoke-virtual {v1}, Lcom/verizon/vcast/apps/VzwRSAKyParam;->getModulus()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v0

    .line 55
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 57
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 61
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    goto :goto_0
.end method

.method public getOutputBlockSize()I
    .locals 3

    .prologue
    .line 73
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->key:Lcom/verizon/vcast/apps/VzwRSAKyParam;

    invoke-virtual {v1}, Lcom/verizon/vcast/apps/VzwRSAKyParam;->getModulus()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v0

    .line 75
    .local v0, "bitSize":I
    iget-boolean v1, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 77
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    .line 81
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x7

    div-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public init(ZLcom/verizon/vcast/apps/VzwRSAKyParam;)V
    .locals 0
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/verizon/vcast/apps/VzwRSAKyParam;

    .prologue
    .line 41
    iput-object p2, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->key:Lcom/verizon/vcast/apps/VzwRSAKyParam;

    .line 42
    iput-boolean p1, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->forEncryption:Z

    .line 43
    return-void
.end method

.method public processBlock(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 2
    .param p1, "input"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->key:Lcom/verizon/vcast/apps/VzwRSAKyParam;

    invoke-virtual {v0}, Lcom/verizon/vcast/apps/VzwRSAKyParam;->getExponent()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwRSACreEng;->key:Lcom/verizon/vcast/apps/VzwRSAKyParam;

    invoke-virtual {v1}, Lcom/verizon/vcast/apps/VzwRSAKyParam;->getModulus()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->modPow(Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    return-object v0
.end method
