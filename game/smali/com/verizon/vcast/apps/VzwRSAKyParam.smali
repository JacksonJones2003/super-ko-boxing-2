.class Lcom/verizon/vcast/apps/VzwRSAKyParam;
.super Ljava/lang/Object;
.source "VzwRSAKyParam.java"


# instance fields
.field private exponent:Lcom/verizon/vcast/apps/VzwBigInt;

.field private modulus:Lcom/verizon/vcast/apps/VzwBigInt;

.field privateKey:Z


# direct methods
.method public constructor <init>(ZLcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "modulus"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .param p3, "exponent"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean p1, p0, Lcom/verizon/vcast/apps/VzwRSAKyParam;->privateKey:Z

    .line 25
    iput-object p2, p0, Lcom/verizon/vcast/apps/VzwRSAKyParam;->modulus:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 26
    iput-object p3, p0, Lcom/verizon/vcast/apps/VzwRSAKyParam;->exponent:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 27
    return-void
.end method


# virtual methods
.method public getExponent()Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwRSAKyParam;->exponent:Lcom/verizon/vcast/apps/VzwBigInt;

    return-object v0
.end method

.method public getModulus()Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwRSAKyParam;->modulus:Lcom/verizon/vcast/apps/VzwBigInt;

    return-object v0
.end method

.method public isPrivate()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/verizon/vcast/apps/VzwRSAKyParam;->privateKey:Z

    return v0
.end method
