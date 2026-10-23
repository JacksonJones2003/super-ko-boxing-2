.class Lcom/openfeint/api/resource/User$4;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/User;->getFriends(Lcom/openfeint/api/resource/User$GetFriendsCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/User;

.field final synthetic val$cb:Lcom/openfeint/api/resource/User$GetFriendsCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/User;Lcom/openfeint/internal/request/OrderedArgList;Lcom/openfeint/api/resource/User$GetFriendsCB;)V
    .locals 0
    .param p2, "x0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/openfeint/api/resource/User$4;->this$0:Lcom/openfeint/api/resource/User;

    iput-object p3, p0, Lcom/openfeint/api/resource/User$4;->val$cb:Lcom/openfeint/api/resource/User$GetFriendsCB;

    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/openfeint/api/resource/User$4;->val$cb:Lcom/openfeint/api/resource/User$GetFriendsCB;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/openfeint/api/resource/User$4;->val$cb:Lcom/openfeint/api/resource/User$GetFriendsCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/User$GetFriendsCB;->onFailure(Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 4
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 211
    iget-object v3, p0, Lcom/openfeint/api/resource/User$4;->val$cb:Lcom/openfeint/api/resource/User$GetFriendsCB;

    if-eqz v3, :cond_0

    .line 213
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 214
    .local v2, "friends":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/User;>;"
    iget-object v3, p0, Lcom/openfeint/api/resource/User$4;->val$cb:Lcom/openfeint/api/resource/User$GetFriendsCB;

    invoke-virtual {v3, v2}, Lcom/openfeint/api/resource/User$GetFriendsCB;->onSuccess(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2    # "friends":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/User;>;"
    :cond_0
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Unexpected response format."

    invoke-virtual {p0, v3}, Lcom/openfeint/api/resource/User$4;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    const-string v0, "/xp/friends"

    return-object v0
.end method
