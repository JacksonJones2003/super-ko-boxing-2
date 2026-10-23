.class Lcom/openfeint/api/resource/CurrentUser$1;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "CurrentUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/CurrentUser;->befriend(Lcom/openfeint/api/resource/User;Lcom/openfeint/api/resource/CurrentUser$BefriendCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/CurrentUser;

.field final synthetic val$cb:Lcom/openfeint/api/resource/CurrentUser$BefriendCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/CurrentUser;Lcom/openfeint/internal/request/OrderedArgList;Lcom/openfeint/api/resource/CurrentUser$BefriendCB;)V
    .locals 0
    .param p2, "x0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/openfeint/api/resource/CurrentUser$1;->this$0:Lcom/openfeint/api/resource/CurrentUser;

    iput-object p3, p0, Lcom/openfeint/api/resource/CurrentUser$1;->val$cb:Lcom/openfeint/api/resource/CurrentUser$BefriendCB;

    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "POST"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/openfeint/api/resource/CurrentUser$1;->val$cb:Lcom/openfeint/api/resource/CurrentUser$BefriendCB;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/openfeint/api/resource/CurrentUser$1;->val$cb:Lcom/openfeint/api/resource/CurrentUser$BefriendCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/CurrentUser$BefriendCB;->onFailure(Ljava/lang/String;)V

    .line 49
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/openfeint/api/resource/CurrentUser$1;->val$cb:Lcom/openfeint/api/resource/CurrentUser$BefriendCB;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/openfeint/api/resource/CurrentUser$1;->val$cb:Lcom/openfeint/api/resource/CurrentUser$BefriendCB;

    invoke-virtual {v0}, Lcom/openfeint/api/resource/CurrentUser$BefriendCB;->onSuccess()V

    .line 42
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "/xp/friend_requests"

    return-object v0
.end method
