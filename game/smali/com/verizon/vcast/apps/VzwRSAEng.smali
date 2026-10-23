.class Lcom/verizon/vcast/apps/VzwRSAEng;
.super Ljava/lang/Object;
.source "VzwRSAEng.java"

# interfaces
.implements Lcom/verizon/vcast/apps/VzwAsymBlkCipher;


# instance fields
.field private core:Lcom/verizon/vcast/apps/VzwRSACreEng;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwRSAEng;->core:Lcom/verizon/vcast/apps/VzwRSACreEng;

    invoke-virtual {v0}, Lcom/verizon/vcast/apps/VzwRSACreEng;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwRSAEng;->core:Lcom/verizon/vcast/apps/VzwRSACreEng;

    invoke-virtual {v0}, Lcom/verizon/vcast/apps/VzwRSACreEng;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLcom/verizon/vcast/apps/VzwRSAKyParam;)V
    .locals 1
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/verizon/vcast/apps/VzwRSAKyParam;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwRSAEng;->core:Lcom/verizon/vcast/apps/VzwRSACreEng;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/verizon/vcast/apps/VzwRSACreEng;

    invoke-direct {v0}, Lcom/verizon/vcast/apps/VzwRSACreEng;-><init>()V

    iput-object v0, p0, Lcom/verizon/vcast/apps/VzwRSAEng;->core:Lcom/verizon/vcast/apps/VzwRSACreEng;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwRSAEng;->core:Lcom/verizon/vcast/apps/VzwRSACreEng;

    invoke-virtual {v0, p1, p2}, Lcom/verizon/vcast/apps/VzwRSACreEng;->init(ZLcom/verizon/vcast/apps/VzwRSAKyParam;)V

    .line 37
    return-void
.end method

.method public processBlock([BII)[B
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .prologue
    .line 71
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwRSAEng;->core:Lcom/verizon/vcast/apps/VzwRSACreEng;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwRSAEng;->core:Lcom/verizon/vcast/apps/VzwRSACreEng;

    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwRSAEng;->core:Lcom/verizon/vcast/apps/VzwRSACreEng;

    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwRSAEng;->core:Lcom/verizon/vcast/apps/VzwRSACreEng;

    invoke-virtual {v2, p1, p2, p3}, Lcom/verizon/vcast/apps/VzwRSACreEng;->convertInput([BII)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/verizon/vcast/apps/VzwRSACreEng;->processBlock(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwRSACreEng;->convertOutput(Lcom/verizon/vcast/apps/VzwBigInt;)[B

    move-result-object v0

    return-object v0
.end method
