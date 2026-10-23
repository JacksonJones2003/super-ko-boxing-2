.class public abstract Lcom/openfeint/internal/request/multipart/PartBase;
.super Lcom/openfeint/internal/request/multipart/Part;
.source "PartBase.java"


# instance fields
.field private charSet:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "charSet"    # Ljava/lang/String;
    .param p4, "transferEncoding"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/openfeint/internal/request/multipart/Part;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/request/multipart/PartBase;->name:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/openfeint/internal/request/multipart/PartBase;->contentType:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/openfeint/internal/request/multipart/PartBase;->charSet:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/openfeint/internal/request/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public getCharSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/openfeint/internal/request/multipart/PartBase;->charSet:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/openfeint/internal/request/multipart/PartBase;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/openfeint/internal/request/multipart/PartBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/openfeint/internal/request/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public setCharSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "charSet"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/openfeint/internal/request/multipart/PartBase;->charSet:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/openfeint/internal/request/multipart/PartBase;->contentType:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Name must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iput-object p1, p0, Lcom/openfeint/internal/request/multipart/PartBase;->name:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setTransferEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "transferEncoding"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/openfeint/internal/request/multipart/PartBase;->transferEncoding:Ljava/lang/String;

    .line 143
    return-void
.end method
