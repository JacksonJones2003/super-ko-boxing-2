.class public abstract Lcom/openfeint/internal/resource/ArrayResourceProperty;
.super Lcom/openfeint/internal/resource/ResourceProperty;
.source "ArrayResourceProperty.java"


# instance fields
.field private mElementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 7
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/resource/Resource;>;"
    invoke-direct {p0}, Lcom/openfeint/internal/resource/ResourceProperty;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/openfeint/internal/resource/ArrayResourceProperty;->mElementType:Ljava/lang/Class;

    .line 9
    return-void
.end method


# virtual methods
.method public elementType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 11
    iget-object v0, p0, Lcom/openfeint/internal/resource/ArrayResourceProperty;->mElementType:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/internal/resource/Resource;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;"
        }
    .end annotation
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/internal/resource/Resource;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation
.end method
