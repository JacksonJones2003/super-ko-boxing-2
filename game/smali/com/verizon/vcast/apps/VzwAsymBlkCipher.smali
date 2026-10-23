.class interface abstract Lcom/verizon/vcast/apps/VzwAsymBlkCipher;
.super Ljava/lang/Object;
.source "VzwAsymBlkCipher.java"


# virtual methods
.method public abstract getInputBlockSize()I
.end method

.method public abstract getOutputBlockSize()I
.end method

.method public abstract init(ZLcom/verizon/vcast/apps/VzwRSAKyParam;)V
.end method

.method public abstract processBlock([BII)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
