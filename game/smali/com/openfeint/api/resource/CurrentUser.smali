.class public Lcom/openfeint/api/resource/CurrentUser;
.super Lcom/openfeint/api/resource/User;
.source "CurrentUser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/resource/CurrentUser$BefriendCB;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/openfeint/api/resource/User;-><init>()V

    .line 61
    return-void
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Lcom/openfeint/api/resource/CurrentUser$2;

    const-class v1, Lcom/openfeint/api/resource/CurrentUser;

    const-string v2, "current_user"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/api/resource/CurrentUser$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public befriend(Lcom/openfeint/api/resource/User;Lcom/openfeint/api/resource/CurrentUser$BefriendCB;)V
    .locals 4
    .param p1, "userToBefriend"    # Lcom/openfeint/api/resource/User;
    .param p2, "cb"    # Lcom/openfeint/api/resource/CurrentUser$BefriendCB;

    .prologue
    .line 33
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 34
    .local v0, "args":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v2, "friend_id"

    invoke-virtual {p1}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Lcom/openfeint/api/resource/CurrentUser$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/openfeint/api/resource/CurrentUser$1;-><init>(Lcom/openfeint/api/resource/CurrentUser;Lcom/openfeint/internal/request/OrderedArgList;Lcom/openfeint/api/resource/CurrentUser$BefriendCB;)V

    .line 52
    .local v1, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v1}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 53
    return-void
.end method
