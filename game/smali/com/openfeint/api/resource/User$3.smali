.class final Lcom/openfeint/api/resource/User$3;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/User;->findByID(Ljava/lang/String;Lcom/openfeint/api/resource/User$FindCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cb:Lcom/openfeint/api/resource/User$FindCB;

.field final synthetic val$resourceID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/openfeint/api/resource/User$FindCB;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/openfeint/api/resource/User$3;->val$resourceID:Ljava/lang/String;

    iput-object p2, p0, Lcom/openfeint/api/resource/User$3;->val$cb:Lcom/openfeint/api/resource/User$FindCB;

    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/openfeint/api/resource/User$3;->val$cb:Lcom/openfeint/api/resource/User$FindCB;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/openfeint/api/resource/User$3;->val$cb:Lcom/openfeint/api/resource/User$FindCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/User$FindCB;->onFailure(Ljava/lang/String;)V

    .line 183
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/openfeint/api/resource/User$3;->val$cb:Lcom/openfeint/api/resource/User$FindCB;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/openfeint/api/resource/User$3;->val$cb:Lcom/openfeint/api/resource/User$FindCB;

    check-cast p1, Lcom/openfeint/api/resource/User;

    .end local p1    # "responseBody":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/User$FindCB;->onSuccess(Lcom/openfeint/api/resource/User;)V

    .line 176
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/xp/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/api/resource/User$3;->val$resourceID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
