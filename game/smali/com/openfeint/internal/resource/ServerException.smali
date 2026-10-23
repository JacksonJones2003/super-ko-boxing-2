.class public Lcom/openfeint/internal/resource/ServerException;
.super Lcom/openfeint/internal/resource/Resource;
.source "ServerException.java"


# instance fields
.field public exceptionClass:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public needsDeveloperAttention:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "klass"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 4

    .prologue
    .line 19
    new-instance v0, Lcom/openfeint/internal/resource/ServerException$1;

    const-class v1, Lcom/openfeint/internal/resource/ServerException;

    const-string v2, "exception"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/internal/resource/ServerException$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 21
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "class"

    new-instance v3, Lcom/openfeint/internal/resource/ServerException$2;

    invoke-direct {v3}, Lcom/openfeint/internal/resource/ServerException$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "message"

    new-instance v3, Lcom/openfeint/internal/resource/ServerException$3;

    invoke-direct {v3}, Lcom/openfeint/internal/resource/ServerException$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "needs_developer_attention"

    new-instance v3, Lcom/openfeint/internal/resource/ServerException$4;

    invoke-direct {v3}, Lcom/openfeint/internal/resource/ServerException$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    return-object v0
.end method
