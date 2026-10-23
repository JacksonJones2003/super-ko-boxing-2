.class final Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Bucket"
.end annotation


# instance fields
.field final mName:Lorg/codehaus/jackson/sym/Name;

.field final mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lorg/codehaus/jackson/sym/Name;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;)V
    .locals 0
    .param p1, "name"    # Lorg/codehaus/jackson/sym/Name;
    .param p2, "next"    # Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .prologue
    .line 908
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 909
    iput-object p1, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 910
    iput-object p2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .line 911
    return-void
.end method


# virtual methods
.method public find(III)Lorg/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "hash"    # I
    .param p2, "firstQuad"    # I
    .param p3, "secondQuad"    # I

    .prologue
    .line 924
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 925
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 926
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 937
    :goto_0
    return-object v2

    .line 929
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_2

    .line 930
    iget-object v1, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 931
    .local v1, "currName":Lorg/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 932
    invoke-virtual {v1, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 933
    goto :goto_0

    .line 929
    :cond_1
    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 937
    .end local v1    # "currName":Lorg/codehaus/jackson/sym/Name;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public find(I[II)Lorg/codehaus/jackson/sym/Name;
    .locals 3
    .param p1, "hash"    # I
    .param p2, "quads"    # [I
    .param p3, "qlen"    # I

    .prologue
    .line 942
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 943
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    invoke-virtual {v2, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 944
    iget-object v2, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 955
    :goto_0
    return-object v2

    .line 947
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_1
    if-eqz v0, :cond_2

    .line 948
    iget-object v1, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mName:Lorg/codehaus/jackson/sym/Name;

    .line 949
    .local v1, "currName":Lorg/codehaus/jackson/sym/Name;
    invoke-virtual {v1}, Lorg/codehaus/jackson/sym/Name;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 950
    invoke-virtual {v1, p2, p3}, Lorg/codehaus/jackson/sym/Name;->equals([II)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 951
    goto :goto_0

    .line 947
    :cond_1
    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_1

    .line 955
    .end local v1    # "currName":Lorg/codehaus/jackson/sym/Name;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 2

    .prologue
    .line 915
    const/4 v1, 0x1

    .line 916
    .local v1, "len":I
    iget-object v0, p0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    .local v0, "curr":Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;
    :goto_0
    if-eqz v0, :cond_0

    .line 917
    add-int/lit8 v1, v1, 0x1

    .line 916
    iget-object v0, v0, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;->mNext:Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer$Bucket;

    goto :goto_0

    .line 919
    :cond_0
    return v1
.end method
