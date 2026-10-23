.class Lcom/verizon/vcast/apps/VzwSHA;
.super Lcom/verizon/vcast/apps/VzwGenDigest;
.source "VzwSHA.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x14

.field private static final Y1:I = 0x5a827999

.field private static final Y2:I = 0x6ed9eba1

.field private static final Y3:I = -0x70e44324

.field private static final Y4:I = -0x359d3e2a


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/verizon/vcast/apps/VzwGenDigest;-><init>()V

    .line 27
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    .line 41
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwSHA;->reset()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/verizon/vcast/apps/VzwSHA;)V
    .locals 4
    .param p1, "t"    # Lcom/verizon/vcast/apps/VzwSHA;

    .prologue
    const/4 v3, 0x0

    .line 49
    invoke-direct {p0, p1}, Lcom/verizon/vcast/apps/VzwGenDigest;-><init>(Lcom/verizon/vcast/apps/VzwGenDigest;)V

    .line 27
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    .line 51
    iget v0, p1, Lcom/verizon/vcast/apps/VzwSHA;->H1:I

    iput v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H1:I

    .line 52
    iget v0, p1, Lcom/verizon/vcast/apps/VzwSHA;->H2:I

    iput v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H2:I

    .line 53
    iget v0, p1, Lcom/verizon/vcast/apps/VzwSHA;->H3:I

    iput v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H3:I

    .line 54
    iget v0, p1, Lcom/verizon/vcast/apps/VzwSHA;->H4:I

    iput v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H4:I

    .line 55
    iget v0, p1, Lcom/verizon/vcast/apps/VzwSHA;->H5:I

    iput v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H5:I

    .line 57
    iget-object v0, p1, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    iget-object v2, p1, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 58
    iget v0, p1, Lcom/verizon/vcast/apps/VzwSHA;->xOff:I

    iput v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->xOff:I

    .line 59
    return-void
.end method

.method private f(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 125
    and-int v0, p1, p2

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private g(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 133
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private h(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .prologue
    .line 129
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwSHA;->finish()V

    .line 95
    iget v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H1:I

    invoke-static {v0, p1, p2}, Lcom/verizon/vcast/apps/VzwPack;->intToBigEndian(I[BI)V

    .line 96
    iget v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/verizon/vcast/apps/VzwPack;->intToBigEndian(I[BI)V

    .line 97
    iget v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/verizon/vcast/apps/VzwPack;->intToBigEndian(I[BI)V

    .line 98
    iget v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/verizon/vcast/apps/VzwPack;->intToBigEndian(I[BI)V

    .line 99
    iget v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/verizon/vcast/apps/VzwPack;->intToBigEndian(I[BI)V

    .line 101
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwSHA;->reset()V

    .line 103
    const/16 v0, 0x14

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x14

    return v0
.end method

.method protected processBlock()V
    .locals 13

    .prologue
    .line 140
    const/16 v5, 0x10

    .local v5, "i":I
    :goto_0
    const/16 v10, 0x50

    if-lt v5, v10, :cond_0

    .line 148
    iget v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->H1:I

    .line 149
    .local v0, "A":I
    iget v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->H2:I

    .line 150
    .local v1, "B":I
    iget v2, p0, Lcom/verizon/vcast/apps/VzwSHA;->H3:I

    .line 151
    .local v2, "C":I
    iget v3, p0, Lcom/verizon/vcast/apps/VzwSHA;->H4:I

    .line 152
    .local v3, "D":I
    iget v4, p0, Lcom/verizon/vcast/apps/VzwSHA;->H5:I

    .line 157
    .local v4, "E":I
    const/4 v6, 0x0

    .line 159
    .local v6, "idx":I
    const/4 v8, 0x0

    .local v8, "j":I
    move v7, v6

    .end local v6    # "idx":I
    .local v7, "idx":I
    :goto_1
    const/4 v10, 0x4

    if-lt v8, v10, :cond_1

    .line 181
    const/4 v8, 0x0

    :goto_2
    const/4 v10, 0x4

    if-lt v8, v10, :cond_2

    .line 203
    const/4 v8, 0x0

    :goto_3
    const/4 v10, 0x4

    if-lt v8, v10, :cond_3

    .line 225
    const/4 v8, 0x0

    :goto_4
    const/4 v10, 0x3

    if-le v8, v10, :cond_4

    .line 245
    iget v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H1:I

    add-int/2addr v10, v0

    iput v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H1:I

    .line 246
    iget v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H2:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H2:I

    .line 247
    iget v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H3:I

    add-int/2addr v10, v2

    iput v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H3:I

    .line 248
    iget v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H4:I

    add-int/2addr v10, v3

    iput v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H4:I

    .line 249
    iget v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H5:I

    add-int/2addr v10, v4

    iput v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->H5:I

    .line 254
    const/4 v10, 0x0

    iput v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->xOff:I

    .line 255
    const/4 v5, 0x0

    :goto_5
    const/16 v10, 0x10

    if-lt v5, v10, :cond_5

    .line 258
    return-void

    .line 141
    .end local v0    # "A":I
    .end local v1    # "B":I
    .end local v2    # "C":I
    .end local v3    # "D":I
    .end local v4    # "E":I
    .end local v7    # "idx":I
    .end local v8    # "j":I
    :cond_0
    iget-object v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    const/4 v11, 0x3

    sub-int v11, v5, v11

    aget v10, v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    const/16 v12, 0x8

    sub-int v12, v5, v12

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    const/16 v12, 0xe

    sub-int v12, v5, v12

    aget v11, v11, v12

    xor-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    const/16 v12, 0x10

    sub-int v12, v5, v12

    aget v11, v11, v12

    xor-int v9, v10, v11

    .line 142
    .local v9, "t":I
    iget-object v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    shl-int/lit8 v11, v9, 0x1

    ushr-int/lit8 v12, v9, 0x1f

    or-int/2addr v11, v12

    aput v11, v10, v5

    .line 140
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 162
    .end local v9    # "t":I
    .restart local v0    # "A":I
    .restart local v1    # "B":I
    .restart local v2    # "C":I
    .restart local v3    # "D":I
    .restart local v4    # "E":I
    .restart local v7    # "idx":I
    .restart local v8    # "j":I
    :cond_1
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/verizon/vcast/apps/VzwSHA;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 163
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 165
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lcom/verizon/vcast/apps/VzwSHA;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 166
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 168
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lcom/verizon/vcast/apps/VzwSHA;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 169
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 171
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lcom/verizon/vcast/apps/VzwSHA;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 172
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 174
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwSHA;->f(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x5a827999

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 175
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 159
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_1

    .line 184
    :cond_2
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 185
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 187
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 188
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 190
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 191
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 193
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 194
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 196
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 197
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 181
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_2

    .line 206
    :cond_3
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/verizon/vcast/apps/VzwSHA;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 207
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 209
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lcom/verizon/vcast/apps/VzwSHA;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 210
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 212
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lcom/verizon/vcast/apps/VzwSHA;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 213
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 215
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lcom/verizon/vcast/apps/VzwSHA;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 216
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 218
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwSHA;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 219
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 203
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_3

    .line 228
    :cond_4
    shl-int/lit8 v10, v0, 0x5

    ushr-int/lit8 v11, v0, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v1, v2, v3}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 229
    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v11, v1, 0x2

    or-int v1, v10, v11

    .line 231
    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v0, v1, v2}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 232
    shl-int/lit8 v10, v0, 0x1e

    ushr-int/lit8 v11, v0, 0x2

    or-int v0, v10, v11

    .line 234
    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v4, v0, v1}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 235
    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v11, v4, 0x2

    or-int v4, v10, v11

    .line 237
    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v3, v4, v0}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 238
    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v11, v3, 0x2

    or-int v3, v10, v11

    .line 240
    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    invoke-direct {p0, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwSHA;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    add-int/2addr v10, v11

    const v11, -0x359d3e2a    # -3715189.5f

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 241
    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v11, v2, 0x2

    or-int v2, v10, v11

    .line 225
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_4

    .line 256
    :cond_5
    iget-object v10, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    const/4 v11, 0x0

    aput v11, v10, v5

    .line 255
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5
.end method

.method protected processLength(J)V
    .locals 4
    .param p1, "bitLength"    # J

    .prologue
    const/16 v3, 0xe

    .line 84
    iget v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->xOff:I

    if-le v0, v3, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwSHA;->processBlock()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    aput v1, v0, v3

    .line 89
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    const/16 v1, 0xf

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 90
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .prologue
    .line 72
    aget-byte v1, p1, p2

    shl-int/lit8 v0, v1, 0x18

    .line 73
    .local v0, "n":I
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 74
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 75
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 76
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    iget v2, p0, Lcom/verizon/vcast/apps/VzwSHA;->xOff:I

    aput v0, v1, v2

    .line 78
    iget v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->xOff:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwSHA;->processBlock()V

    .line 81
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-super {p0}, Lcom/verizon/vcast/apps/VzwGenDigest;->reset()V

    .line 112
    const v1, 0x67452301

    iput v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->H1:I

    .line 113
    const v1, -0x10325477

    iput v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->H2:I

    .line 114
    const v1, -0x67452302

    iput v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->H3:I

    .line 115
    const v1, 0x10325476

    iput v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->H4:I

    .line 116
    const v1, -0x3c2d1e10

    iput v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->H5:I

    .line 118
    iput v2, p0, Lcom/verizon/vcast/apps/VzwSHA;->xOff:I

    .line 119
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 122
    return-void

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwSHA;->X:[I

    aput v2, v1, v0

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
