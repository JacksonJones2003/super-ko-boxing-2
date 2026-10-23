.class Lcom/verizon/vcast/apps/VzwPKCS1Encd;
.super Ljava/lang/Object;
.source "VzwPKCS1Encd.java"

# interfaces
.implements Lcom/verizon/vcast/apps/VzwAsymBlkCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs1.strict"


# instance fields
.field private engine:Lcom/verizon/vcast/apps/VzwAsymBlkCipher;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lcom/verizon/vcast/apps/VzwAsymBlkCipher;)V
    .locals 1
    .param p1, "cipher"    # Lcom/verizon/vcast/apps/VzwAsymBlkCipher;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->engine:Lcom/verizon/vcast/apps/VzwAsymBlkCipher;

    .line 45
    invoke-direct {p0}, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->useStrictLength:Z

    .line 46
    return-void
.end method

.method private decodeBlock([BII)[B
    .locals 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 136
    iget-object v5, p0, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->engine:Lcom/verizon/vcast/apps/VzwAsymBlkCipher;

    invoke-interface {v5, p1, p2, p3}, Lcom/verizon/vcast/apps/VzwAsymBlkCipher;->processBlock([BII)[B

    move-result-object v0

    .line 138
    .local v0, "block":[B
    array-length v5, v0

    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->getOutputBlockSize()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 140
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "block truncated"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 143
    :cond_0
    aget-byte v4, v0, v7

    .line 145
    .local v4, "type":B
    if-eq v4, v8, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 147
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "unknown block type"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    :cond_1
    iget-boolean v5, p0, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->useStrictLength:Z

    if-eqz v5, :cond_2

    array-length v5, v0

    iget-object v6, p0, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->engine:Lcom/verizon/vcast/apps/VzwAsymBlkCipher;

    invoke-interface {v6}, Lcom/verizon/vcast/apps/VzwAsymBlkCipher;->getOutputBlockSize()I

    move-result v6

    if-eq v5, v6, :cond_2

    .line 152
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "block incorrect size"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_2
    const/4 v3, 0x1

    .local v3, "start":I
    :goto_0
    array-length v5, v0

    if-ne v3, v5, :cond_5

    .line 174
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 176
    array-length v5, v0

    if-gt v3, v5, :cond_4

    const/16 v5, 0xa

    if-ge v3, v5, :cond_7

    .line 178
    :cond_4
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "no data in block"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 162
    :cond_5
    aget-byte v1, v0, v3

    .line 164
    .local v1, "pad":B
    if-eqz v1, :cond_3

    .line 168
    if-ne v4, v8, :cond_6

    const/4 v5, -0x1

    if-eq v1, v5, :cond_6

    .line 170
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "block padding incorrect"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 160
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "pad":B
    :cond_7
    array-length v5, v0

    sub-int/2addr v5, v3

    new-array v2, v5, [B

    .line 183
    .local v2, "result":[B
    array-length v5, v2

    invoke-static {v0, v3, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 185
    return-object v2
.end method

.method private useStrict()Z
    .locals 2

    .prologue
    .line 52
    const-string v1, "org.bouncycastle.pkcs1.strict"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "strict":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->engine:Lcom/verizon/vcast/apps/VzwAsymBlkCipher;

    invoke-interface {v1}, Lcom/verizon/vcast/apps/VzwAsymBlkCipher;->getInputBlockSize()I

    move-result v0

    .line 100
    .local v0, "baseBlockSize":I
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    .prologue
    .line 104
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->engine:Lcom/verizon/vcast/apps/VzwAsymBlkCipher;

    invoke-interface {v1}, Lcom/verizon/vcast/apps/VzwAsymBlkCipher;->getOutputBlockSize()I

    move-result v0

    .line 115
    .local v0, "baseBlockSize":I
    const/16 v1, 0xa

    sub-int v1, v0, v1

    return v1
.end method

.method public getUnderlyingCipher()Lcom/verizon/vcast/apps/VzwAsymBlkCipher;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->engine:Lcom/verizon/vcast/apps/VzwAsymBlkCipher;

    return-object v0
.end method

.method public init(ZLcom/verizon/vcast/apps/VzwRSAKyParam;)V
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/verizon/vcast/apps/VzwRSAKyParam;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->engine:Lcom/verizon/vcast/apps/VzwAsymBlkCipher;

    invoke-interface {v0, p1, p2}, Lcom/verizon/vcast/apps/VzwAsymBlkCipher;->init(ZLcom/verizon/vcast/apps/VzwRSAKyParam;)V

    .line 86
    return-void
.end method

.method public processBlock([BII)[B
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/verizon/vcast/apps/VzwPKCS1Encd;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
