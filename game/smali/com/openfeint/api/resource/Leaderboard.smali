.class public Lcom/openfeint/api/resource/Leaderboard;
.super Lcom/openfeint/internal/resource/Resource;
.source "Leaderboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/resource/Leaderboard$ListCB;,
        Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;,
        Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;
    }
.end annotation


# instance fields
.field public descendingSortOrder:Z

.field public highScores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openfeint/api/resource/Score;",
            ">;"
        }
    .end annotation
.end field

.field public localUserScore:Lcom/openfeint/api/resource/Score;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    invoke-virtual {p0, p1}, Lcom/openfeint/api/resource/Leaderboard;->setResourceID(Ljava/lang/String;)V

    return-void
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 6

    .prologue
    const-class v5, Lcom/openfeint/api/resource/Score;

    .line 262
    new-instance v0, Lcom/openfeint/api/resource/Leaderboard$4;

    const-class v1, Lcom/openfeint/api/resource/Leaderboard;

    const-string v2, "leaderboard"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/api/resource/Leaderboard$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 264
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "name"

    new-instance v3, Lcom/openfeint/api/resource/Leaderboard$5;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Leaderboard$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "current_user_high_score"

    new-instance v3, Lcom/openfeint/api/resource/Leaderboard$6;

    const-class v4, Lcom/openfeint/api/resource/Score;

    invoke-direct {v3, v5}, Lcom/openfeint/api/resource/Leaderboard$6;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "descending_sort_order"

    new-instance v3, Lcom/openfeint/api/resource/Leaderboard$7;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Leaderboard$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "high_scores"

    new-instance v3, Lcom/openfeint/api/resource/Leaderboard$8;

    const-class v4, Lcom/openfeint/api/resource/Score;

    invoke-direct {v3, v5}, Lcom/openfeint/api/resource/Leaderboard$8;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    return-object v0
.end method

.method private getScores(ZLcom/openfeint/api/resource/Leaderboard$GetScoresCB;)V
    .locals 5
    .param p1, "friends"    # Z
    .param p2, "cb"    # Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;

    .prologue
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/xp/games/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/leaderboards/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/openfeint/api/resource/Leaderboard;->resourceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/high_scores"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 86
    .local v0, "args":Lcom/openfeint/internal/request/OrderedArgList;
    if-eqz p1, :cond_0

    .line 87
    const-string v3, "friends_leaderboard"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    new-instance v2, Lcom/openfeint/api/resource/Leaderboard$1;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/openfeint/api/resource/Leaderboard$1;-><init>(Lcom/openfeint/api/resource/Leaderboard;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;)V

    .line 109
    .local v2, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v2}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 110
    return-void
.end method

.method public static list(Lcom/openfeint/api/resource/Leaderboard$ListCB;)V
    .locals 4
    .param p0, "cb"    # Lcom/openfeint/api/resource/Leaderboard$ListCB;

    .prologue
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/xp/games/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/leaderboards"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/openfeint/api/resource/Leaderboard$3;

    invoke-direct {v1, v0, p0}, Lcom/openfeint/api/resource/Leaderboard$3;-><init>(Ljava/lang/String;Lcom/openfeint/api/resource/Leaderboard$ListCB;)V

    .line 210
    .local v1, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v1}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 211
    return-void
.end method


# virtual methods
.method public getFriendScores(Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;)V
    .locals 1
    .param p1, "cb"    # Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/openfeint/api/resource/Leaderboard;->getScores(ZLcom/openfeint/api/resource/Leaderboard$GetScoresCB;)V

    .line 81
    return-void
.end method

.method public getScores(Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;)V
    .locals 1
    .param p1, "cb"    # Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/openfeint/api/resource/Leaderboard;->getScores(ZLcom/openfeint/api/resource/Leaderboard$GetScoresCB;)V

    .line 74
    return-void
.end method

.method public getUserScore(Lcom/openfeint/api/resource/User;Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;)V
    .locals 5
    .param p1, "forUser"    # Lcom/openfeint/api/resource/User;
    .param p2, "cb"    # Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;

    .prologue
    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/xp/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/games/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/leaderboards/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/openfeint/api/resource/Leaderboard;->resourceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/current_score"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 137
    .local v0, "args":Lcom/openfeint/internal/request/OrderedArgList;
    new-instance v2, Lcom/openfeint/api/resource/Leaderboard$2;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/openfeint/api/resource/Leaderboard$2;-><init>(Lcom/openfeint/api/resource/Leaderboard;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;)V

    .line 163
    .local v2, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v2}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 164
    return-void
.end method
