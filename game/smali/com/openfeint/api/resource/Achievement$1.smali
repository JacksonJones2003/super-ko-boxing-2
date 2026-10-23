.class final Lcom/openfeint/api/resource/Achievement$1;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Achievement;->list(Lcom/openfeint/api/resource/Achievement$ListCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/openfeint/api/resource/Achievement$ListCB;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$ListCB;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/openfeint/api/resource/Achievement$1;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/openfeint/api/resource/Achievement$1;->val$cb:Lcom/openfeint/api/resource/Achievement$ListCB;

    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$1;->val$cb:Lcom/openfeint/api/resource/Achievement$ListCB;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$1;->val$cb:Lcom/openfeint/api/resource/Achievement$ListCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$ListCB;->onFailure(Ljava/lang/String;)V

    .line 122
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 107
    iget-object v3, p0, Lcom/openfeint/api/resource/Achievement$1;->val$cb:Lcom/openfeint/api/resource/Achievement$ListCB;

    if-eqz v3, :cond_0

    .line 109
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 110
    .local v1, "achievements":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Achievement;>;"
    iget-object v3, p0, Lcom/openfeint/api/resource/Achievement$1;->val$cb:Lcom/openfeint/api/resource/Achievement$ListCB;

    invoke-virtual {v3, v1}, Lcom/openfeint/api/resource/Achievement$ListCB;->onSuccess(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .end local v1    # "achievements":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Achievement;>;"
    :cond_0
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Unexpected response format."

    invoke-virtual {p0, v3}, Lcom/openfeint/api/resource/Achievement$1;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$1;->val$path:Ljava/lang/String;

    return-object v0
.end method
