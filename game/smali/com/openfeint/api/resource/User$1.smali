.class Lcom/openfeint/api/resource/User$1;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/User;->load(Lcom/openfeint/api/resource/User$LoadCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/User;

.field final synthetic val$cb:Lcom/openfeint/api/resource/User$LoadCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/User;Lcom/openfeint/api/resource/User$LoadCB;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/openfeint/api/resource/User$1;->this$0:Lcom/openfeint/api/resource/User;

    iput-object p2, p0, Lcom/openfeint/api/resource/User$1;->val$cb:Lcom/openfeint/api/resource/User$LoadCB;

    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/openfeint/api/resource/User$1;->val$cb:Lcom/openfeint/api/resource/User$LoadCB;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/openfeint/api/resource/User$1;->val$cb:Lcom/openfeint/api/resource/User$LoadCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/User$LoadCB;->onFailure(Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/openfeint/api/resource/User$1;->this$0:Lcom/openfeint/api/resource/User;

    check-cast p1, Lcom/openfeint/api/resource/User;

    .end local p1    # "responseBody":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/User;->shallowCopyAncestorType(Lcom/openfeint/internal/resource/Resource;)V

    .line 106
    iget-object v0, p0, Lcom/openfeint/api/resource/User$1;->val$cb:Lcom/openfeint/api/resource/User$LoadCB;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/openfeint/api/resource/User$1;->val$cb:Lcom/openfeint/api/resource/User$LoadCB;

    invoke-virtual {v0}, Lcom/openfeint/api/resource/User$LoadCB;->onSuccess()V

    .line 109
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/xp/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/api/resource/User$1;->this$0:Lcom/openfeint/api/resource/User;

    invoke-virtual {v1}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
