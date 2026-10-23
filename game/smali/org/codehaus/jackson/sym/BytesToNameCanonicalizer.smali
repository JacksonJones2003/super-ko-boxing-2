.class public final Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    }
.end annotation


# static fields
.field protected static final DEFAULT_TABLE_SIZE:I = 0x40

.field static final INITIAL_COLLISION_LEN:I = 0x20

.field static final LAST_VALID_BUCKET:I = 0xfe

.field static final MAX_ENTRIES_FOR_REUSE:I = 0x1770

.field protected static final MAX_TABLE_SIZE:I = 0x10000

.field static final MIN_HASH_SIZE:I = 0x10


# instance fields
.field private _collCount:I

.field private _collEnd:I

.field private _collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

.field private _collListShared:Z

.field private _count:I

.field final _intern:Z

.field private _mainHash:[I

.field private _mainHashMask:I

.field private _mainHashShared:Z

.field private _mainNames:[Lorg/codehaus/jackson/sym/Name;

.field private _mainNamesShared:Z

.field private transient _needRehash:Z

.field final _parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;


# direct methods
.method private constructor <init>(IZ)V
    .locals 2
    .param p1, "hashSize"    # I
    .param p2, "intern"    # Z

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 202
    iput-boolean p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 206
    const/16 v1, 0x10

    if-ge p1, v1, :cond_1

    .line 207
    const/16 p1, 0x10

    .line 220
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V

    .line 221
    return-void

    .line 212
    :cond_1
    const/4 v1, 0x1

    sub-int v1, p1, v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    .line 213
    const/16 v0, 0x10

    .line 214
    .local v0, "curr":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 215
    add-int/2addr v0, v0

    goto :goto_1

    .line 217
    :cond_2
    move p1, v0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
    .locals 2
    .param p1, "parent"    # Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .param p2, "intern"    # Z

    .prologue
    const/4 v1, 0x1

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .line 229
    iput-boolean p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    .line 232
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 233
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 234
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 235
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 236
    iget-object v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 237
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 238
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 241
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 242
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 243
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 244
    return-void
.end method

.method private _addSymbol(ILorg/codehaus/jackson/sym/Name;)V
    .locals 9
    .param p1, "hash"    # I
    .param p2, "symbol"    # Lorg/codehaus/jackson/sym/Name;

    .prologue
    const/4 v8, 0x1

    .line 610
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-eqz v5, :cond_0

    .line 611
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareMain()V

    .line 614
    :cond_0
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    if-eqz v5, :cond_1

    .line 615
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->rehash()V

    .line 618
    :cond_1
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 623
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v4, p1, v5

    .line 624
    .local v4, "ix":I
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aget-object v5, v5, v4

    if-nez v5, :cond_4

    .line 625
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    shl-int/lit8 v6, p1, 0x8

    aput v6, v5, v4

    .line 626
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    if-eqz v5, :cond_2

    .line 627
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareNames()V

    .line 629
    :cond_2
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aput-object p2, v5, v4

    .line 666
    :goto_0
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v3, v5

    .line 667
    .local v3, "hashSize":I
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    shr-int/lit8 v6, v3, 0x1

    if-le v5, v6, :cond_3

    .line 668
    shr-int/lit8 v2, v3, 0x2

    .line 672
    .local v2, "hashQuarter":I
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    sub-int v6, v3, v2

    if-le v5, v6, :cond_9

    .line 673
    iput-boolean v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 679
    .end local v2    # "hashQuarter":I
    :cond_3
    :goto_1
    return-void

    .line 634
    .end local v3    # "hashSize":I
    :cond_4
    iget-boolean v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    if-eqz v5, :cond_5

    .line 635
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->unshareCollision()V

    .line 638
    :cond_5
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 639
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v1, v5, v4

    .line 640
    .local v1, "entryValue":I
    and-int/lit16 v0, v1, 0xff

    .line 641
    .local v0, "bucket":I
    if-nez v0, :cond_8

    .line 642
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    const/16 v6, 0xfe

    if-gt v5, v6, :cond_7

    .line 643
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 644
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 646
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    array-length v5, v5

    if-lt v0, v5, :cond_6

    .line 647
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 653
    :cond_6
    :goto_2
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    and-int/lit16 v6, v1, -0x100

    add-int/lit8 v7, v0, 0x1

    or-int/2addr v6, v7

    aput v6, v5, v4

    .line 659
    :goto_3
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    new-instance v6, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iget-object v7, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v7, v7, v0

    invoke-direct {v6, p2, v7}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v6, v5, v0

    goto :goto_0

    .line 650
    :cond_7
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v0

    goto :goto_2

    .line 655
    :cond_8
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 674
    .end local v0    # "bucket":I
    .end local v1    # "entryValue":I
    .restart local v2    # "hashQuarter":I
    .restart local v3    # "hashSize":I
    :cond_9
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    if-lt v5, v2, :cond_3

    .line 675
    iput-boolean v8, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    goto :goto_1
.end method

.method public static final calcHash(I)I
    .locals 2
    .param p0, "firstQuad"    # I

    .prologue
    .line 499
    move v0, p0

    .line 500
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 501
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 502
    return v0
.end method

.method public static final calcHash(II)I
    .locals 2
    .param p0, "firstQuad"    # I
    .param p1, "secondQuad"    # I

    .prologue
    .line 507
    mul-int/lit8 v1, p0, 0x1f

    add-int v0, v1, p1

    .line 512
    .local v0, "hash":I
    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    .line 513
    ushr-int/lit8 v1, v0, 0x8

    xor-int/2addr v0, v1

    .line 514
    return v0
.end method

.method public static final calcHash([II)I
    .locals 4
    .param p0, "quads"    # [I
    .param p1, "qlen"    # I

    .prologue
    .line 520
    const/4 v2, 0x0

    aget v0, p0, v2

    .line 521
    .local v0, "hash":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 522
    mul-int/lit8 v2, v0, 0x1f

    aget v3, p0, v1

    add-int v0, v2, v3

    .line 521
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_0
    ushr-int/lit8 v2, v0, 0x10

    xor-int/2addr v0, v2

    .line 526
    ushr-int/lit8 v2, v0, 0x8

    xor-int/2addr v0, v2

    .line 528
    return v0
.end method

.method private static constructName(ILjava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
    .locals 8
    .param p0, "hash"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 877
    const/4 v0, 0x4

    if-ge p3, v0, :cond_0

    .line 878
    packed-switch p3, :pswitch_data_0

    .line 889
    :cond_0
    new-array v6, p3, [I

    .line 890
    .local v6, "buf":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, p3, :cond_1

    .line 891
    aget v0, p2, v7

    aput v0, v6, v7

    .line 890
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 880
    .end local v6    # "buf":[I
    .end local v7    # "i":I
    :pswitch_0
    new-instance v0, Lorg/codehaus/jackson/sym/Name1;

    aget v1, p2, v1

    invoke-direct {v0, p1, p0, v1}, Lorg/codehaus/jackson/sym/Name1;-><init>(Ljava/lang/String;II)V

    .line 893
    :goto_1
    return-object v0

    .line 882
    :pswitch_1
    new-instance v0, Lorg/codehaus/jackson/sym/Name2;

    aget v1, p2, v1

    aget v2, p2, v2

    invoke-direct {v0, p1, p0, v1, v2}, Lorg/codehaus/jackson/sym/Name2;-><init>(Ljava/lang/String;III)V

    goto :goto_1

    .line 884
    :pswitch_2
    new-instance v0, Lorg/codehaus/jackson/sym/Name3;

    aget v3, p2, v1

    aget v4, p2, v2

    const/4 v1, 0x2

    aget v5, p2, v1

    move-object v1, p1

    move v2, p0

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/sym/Name3;-><init>(Ljava/lang/String;IIII)V

    goto :goto_1

    .line 893
    .restart local v6    # "buf":[I
    .restart local v7    # "i":I
    :cond_1
    new-instance v0, Lorg/codehaus/jackson/sym/NameN;

    invoke-direct {v0, p1, p0, v6, p3}, Lorg/codehaus/jackson/sym/NameN;-><init>(Ljava/lang/String;I[II)V

    goto :goto_1

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createRoot()Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    const/16 v1, 0x40

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(IZ)V

    return-object v0
.end method

.method private expandCollision()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 852
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 853
    .local v1, "old":[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    array-length v0, v1

    .line 854
    .local v0, "len":I
    add-int v2, v0, v0

    new-array v2, v2, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 855
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 856
    return-void
.end method

.method private findBestBucket()I
    .locals 7

    .prologue
    .line 795
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 796
    .local v2, "buckets":[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    const v0, 0x7fffffff

    .line 797
    .local v0, "bestCount":I
    const/4 v1, -0x1

    .line 799
    .local v1, "bestIx":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 800
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->length()I

    move-result v3

    .line 801
    .local v3, "count":I
    if-ge v3, v0, :cond_1

    .line 802
    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    move v6, v4

    .line 809
    .end local v3    # "count":I
    :goto_1
    return v6

    .line 805
    .restart local v3    # "count":I
    :cond_0
    move v0, v3

    .line 806
    move v1, v4

    .line 799
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v3    # "count":I
    :cond_2
    move v6, v1

    .line 809
    goto :goto_1
.end method

.method public static getEmptyName()Lorg/codehaus/jackson/sym/Name;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lorg/codehaus/jackson/sym/Name1;->getEmptyName()Lorg/codehaus/jackson/sym/Name1;

    move-result-object v0

    return-object v0
.end method

.method private initTables(I)V
    .locals 3
    .param p1, "hashSize"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 248
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 249
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 250
    new-array v0, p1, [Lorg/codehaus/jackson/sym/Name;

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 251
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 252
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 253
    sub-int v0, p1, v2

    iput v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 255
    iput-boolean v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 257
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 259
    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 260
    return-void
.end method

.method private markAsShared()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 299
    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 300
    iput-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 301
    return-void
.end method

.method private declared-synchronized mergeChild(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V
    .locals 3
    .param p1, "child"    # Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    .prologue
    .line 265
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 266
    .local v0, "childCount":I
    iget v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gt v0, v1, :cond_0

    .line 294
    :goto_0
    monitor-exit p0

    return-void

    .line 276
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->size()I

    move-result v1

    const/16 v2, 0x1770

    if-le v1, v2, :cond_1

    .line 282
    const/16 v1, 0x40

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->initTables(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    .end local v0    # "childCount":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 284
    .restart local v0    # "childCount":I
    :cond_1
    :try_start_2
    iget v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 285
    iget-object v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 286
    iget-object v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    iput-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 287
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 288
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 289
    iget v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 290
    iget-object v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 291
    iget v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 292
    iget v1, p1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private nukeSymbols()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 780
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    .line 781
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 782
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 783
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 784
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 785
    iput v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 786
    return-void
.end method

.method private rehash()V
    .locals 20

    .prologue
    .line 683
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_needRehash:Z

    .line 685
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object v12, v0

    .line 692
    .local v12, "oldMainHash":[I
    array-length v8, v12

    .line 693
    .local v8, "len":I
    add-int v9, v8, v8

    .line 698
    .local v9, "newLen":I
    const/high16 v17, 0x10000

    move v0, v9

    move/from16 v1, v17

    if-le v0, v1, :cond_1

    .line 699
    invoke-direct/range {p0 .. p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->nukeSymbols()V

    .line 772
    :cond_0
    return-void

    .line 703
    :cond_1
    move v0, v9

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 704
    const/16 v17, 0x1

    sub-int v17, v9, v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    move-object v13, v0

    .line 706
    .local v13, "oldNames":[Lorg/codehaus/jackson/sym/Name;
    move v0, v9

    new-array v0, v0, [Lorg/codehaus/jackson/sym/Name;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 707
    const/4 v15, 0x0

    .line 708
    .local v15, "symbolsSeen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v8, :cond_3

    .line 709
    aget-object v14, v13, v6

    .line 710
    .local v14, "symbol":Lorg/codehaus/jackson/sym/Name;
    if-eqz v14, :cond_2

    .line 711
    add-int/lit8 v15, v15, 0x1

    .line 712
    invoke-virtual {v14}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v5

    .line 713
    .local v5, "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    move/from16 v17, v0

    and-int v7, v5, v17

    .line 714
    .local v7, "ix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    move-object/from16 v17, v0

    aput-object v14, v17, v7

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v17, v0

    shl-int/lit8 v18, v5, 0x8

    aput v18, v17, v7

    .line 708
    .end local v5    # "hash":I
    .end local v7    # "ix":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 723
    .end local v14    # "symbol":Lorg/codehaus/jackson/sym/Name;
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    move v11, v0

    .line 724
    .local v11, "oldEnd":I
    if-eqz v11, :cond_0

    .line 728
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 729
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 730
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object v10, v0

    .line 733
    .local v10, "oldBuckets":[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v0, v0, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 734
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v11, :cond_9

    .line 735
    aget-object v4, v10, v6

    .local v4, "curr":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_2
    if-eqz v4, :cond_8

    .line 736
    add-int/lit8 v15, v15, 0x1

    .line 737
    iget-object v14, v4, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 738
    .restart local v14    # "symbol":Lorg/codehaus/jackson/sym/Name;
    invoke-virtual {v14}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v5

    .line 739
    .restart local v5    # "hash":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    move/from16 v17, v0

    and-int v7, v5, v17

    .line 740
    .restart local v7    # "ix":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v17, v0

    aget v16, v17, v7

    .line 741
    .local v16, "val":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    move-object/from16 v17, v0

    aget-object v17, v17, v7

    if-nez v17, :cond_4

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v17, v0

    shl-int/lit8 v18, v5, 0x8

    aput v18, v17, v7

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    move-object/from16 v17, v0

    aput-object v14, v17, v7

    .line 735
    :goto_3
    iget-object v4, v4, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_2

    .line 745
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collCount:I

    .line 746
    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v3, v0

    .line 747
    .local v3, "bucket":I
    if-nez v3, :cond_7

    .line 748
    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    move/from16 v17, v0

    const/16 v18, 0xfe

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_6

    .line 749
    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    move v3, v0

    .line 750
    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collEnd:I

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move v0, v3

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 753
    invoke-direct/range {p0 .. p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->expandCollision()V

    .line 759
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    move-object/from16 v17, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, -0x100

    move/from16 v18, v0

    add-int/lit8 v19, v3, 0x1

    or-int v18, v18, v19

    aput v18, v17, v7

    .line 764
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v17, v0

    new-instance v18, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    move-object/from16 v19, v0

    aget-object v19, v19, v3

    move-object/from16 v0, v18

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;-><init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V

    aput-object v18, v17, v3

    goto :goto_3

    .line 756
    :cond_6
    invoke-direct/range {p0 .. p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->findBestBucket()I

    move-result v3

    goto :goto_4

    .line 761
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    .line 734
    .end local v3    # "bucket":I
    .end local v5    # "hash":I
    .end local v7    # "ix":I
    .end local v14    # "symbol":Lorg/codehaus/jackson/sym/Name;
    .end local v16    # "val":I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 769
    .end local v4    # "curr":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    move/from16 v17, v0

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 770
    new-instance v17, Ljava/lang/RuntimeException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Internal error: count after rehash "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "; should be "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v17
.end method

.method private unshareCollision()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 830
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 831
    .local v1, "old":[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-nez v1, :cond_0

    .line 832
    const/16 v2, 0x20

    new-array v2, v2, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 838
    :goto_0
    iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collListShared:Z

    .line 839
    return-void

    .line 834
    :cond_0
    array-length v0, v1

    .line 835
    .local v0, "len":I
    new-array v2, v0, [Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 836
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private unshareMain()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 820
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 821
    .local v1, "old":[I
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    array-length v0, v2

    .line 823
    .local v0, "len":I
    new-array v2, v0, [I

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    .line 824
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    .line 826
    return-void
.end method

.method private unshareNames()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 843
    iget-object v1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 844
    .local v1, "old":[Lorg/codehaus/jackson/sym/Name;
    array-length v0, v1

    .line 845
    .local v0, "len":I
    new-array v2, v0, [Lorg/codehaus/jackson/sym/Name;

    iput-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    .line 846
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 847
    iput-boolean v3, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNamesShared:Z

    .line 848
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "symbolStr"    # Ljava/lang/String;
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 482
    iget-boolean v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_intern:Z

    if-eqz v2, :cond_0

    .line 483
    sget-object v2, Lorg/codehaus/jackson/util/InternCache;->instance:Lorg/codehaus/jackson/util/InternCache;

    invoke-virtual {v2, p1}, Lorg/codehaus/jackson/util/InternCache;->intern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 485
    :cond_0
    invoke-static {p2, p3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v0

    .line 486
    .local v0, "hash":I
    invoke-static {v0, p1, p2, p3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->constructName(ILjava/lang/String;[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v1

    .line 487
    .local v1, "symbol":Lorg/codehaus/jackson/sym/Name;
    invoke-direct {p0, v0, v1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_addSymbol(ILorg/codehaus/jackson/sym/Name;)V

    .line 488
    return-object v1
.end method

.method public findName(I)Lorg/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "firstQuad"    # I

    .prologue
    const/4 v6, 0x0

    .line 343
    invoke-static {p1}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(I)I

    move-result v1

    .line 344
    .local v1, "hash":I
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v5

    .line 345
    .local v2, "ix":I
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v5, v2

    .line 350
    .local v4, "val":I
    shr-int/lit8 v5, v4, 0x8

    xor-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_1

    .line 352
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aget-object v3, v5, v2

    .line 353
    .local v3, "name":Lorg/codehaus/jackson/sym/Name;
    if-nez v3, :cond_0

    move-object v5, v6

    .line 372
    .end local v3    # "name":Lorg/codehaus/jackson/sym/Name;
    :goto_0
    return-object v5

    .line 356
    .restart local v3    # "name":Lorg/codehaus/jackson/sym/Name;
    :cond_0
    invoke-virtual {v3, p1}, Lorg/codehaus/jackson/sym/Name;->equals(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 357
    goto :goto_0

    .line 359
    .end local v3    # "name":Lorg/codehaus/jackson/sym/Name;
    :cond_1
    if-nez v4, :cond_2

    move-object v5, v6

    .line 360
    goto :goto_0

    .line 363
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 364
    if-lez v4, :cond_3

    .line 365
    add-int/lit8 v4, v4, -0x1

    .line 366
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v5, v4

    .line 367
    .local v0, "bucket":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_3

    .line 368
    const/4 v5, 0x0

    invoke-virtual {v0, v1, p1, v5}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v5

    goto :goto_0

    .end local v0    # "bucket":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    move-object v5, v6

    .line 372
    goto :goto_0
.end method

.method public findName(II)Lorg/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "firstQuad"    # I
    .param p2, "secondQuad"    # I

    .prologue
    const/4 v6, 0x0

    .line 393
    invoke-static {p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash(II)I

    move-result v1

    .line 394
    .local v1, "hash":I
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v5

    .line 395
    .local v2, "ix":I
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v5, v2

    .line 400
    .local v4, "val":I
    shr-int/lit8 v5, v4, 0x8

    xor-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_1

    .line 402
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aget-object v3, v5, v2

    .line 403
    .local v3, "name":Lorg/codehaus/jackson/sym/Name;
    if-nez v3, :cond_0

    move-object v5, v6

    .line 422
    .end local v3    # "name":Lorg/codehaus/jackson/sym/Name;
    :goto_0
    return-object v5

    .line 406
    .restart local v3    # "name":Lorg/codehaus/jackson/sym/Name;
    :cond_0
    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 407
    goto :goto_0

    .line 409
    .end local v3    # "name":Lorg/codehaus/jackson/sym/Name;
    :cond_1
    if-nez v4, :cond_2

    move-object v5, v6

    .line 410
    goto :goto_0

    .line 413
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 414
    if-lez v4, :cond_3

    .line 415
    add-int/lit8 v4, v4, -0x1

    .line 416
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v5, v4

    .line 417
    .local v0, "bucket":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_3

    .line 418
    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(III)Lorg/codehaus/jackson/sym/Name;

    move-result-object v5

    goto :goto_0

    .end local v0    # "bucket":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    move-object v5, v6

    .line 422
    goto :goto_0
.end method

.method public findName([II)Lorg/codehaus/jackson/sym/Name;
    .locals 7
    .param p1, "quads"    # [I
    .param p2, "qlen"    # I

    .prologue
    const/4 v6, 0x0

    .line 450
    invoke-static {p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->calcHash([II)I

    move-result v1

    .line 452
    .local v1, "hash":I
    iget v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    and-int v2, v1, v5

    .line 453
    .local v2, "ix":I
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHash:[I

    aget v4, v5, v2

    .line 454
    .local v4, "val":I
    shr-int/lit8 v5, v4, 0x8

    xor-int/2addr v5, v1

    shl-int/lit8 v5, v5, 0x8

    if-nez v5, :cond_1

    .line 455
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainNames:[Lorg/codehaus/jackson/sym/Name;

    aget-object v3, v5, v2

    .line 456
    .local v3, "name":Lorg/codehaus/jackson/sym/Name;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1, p2}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object v5, v3

    .line 471
    .end local v3    # "name":Lorg/codehaus/jackson/sym/Name;
    :goto_0
    return-object v5

    .line 460
    :cond_1
    if-nez v4, :cond_2

    move-object v5, v6

    .line 461
    goto :goto_0

    .line 463
    :cond_2
    and-int/lit16 v4, v4, 0xff

    .line 464
    if-lez v4, :cond_3

    .line 465
    add-int/lit8 v4, v4, -0x1

    .line 466
    iget-object v5, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_collList:[Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    aget-object v0, v5, v4

    .line 467
    .local v0, "bucket":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    if-eqz v0, :cond_3

    .line 468
    invoke-virtual {v0, v1, p1, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->find(I[II)Lorg/codehaus/jackson/sym/Name;

    move-result-object v5

    goto :goto_0

    .end local v0    # "bucket":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :cond_3
    move-object v5, v6

    .line 471
    goto :goto_0
.end method

.method public declared-synchronized makeChild(ZZ)Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
    .locals 1
    .param p1, "canonicalize"    # Z
    .param p2, "intern"    # Z

    .prologue
    .line 177
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0, p2}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;-><init>(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public maybeDirty()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_mainHashShared:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->maybeDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_parent:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    invoke-direct {v0, p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->mergeChild(Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;)V

    .line 195
    invoke-direct {p0}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->markAsShared()V

    .line 197
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->_count:I

    return v0
.end method
