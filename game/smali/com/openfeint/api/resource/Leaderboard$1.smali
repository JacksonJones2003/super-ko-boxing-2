.class Lcom/openfeint/api/resource/Leaderboard$1;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Leaderboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Leaderboard;->getScores(ZLcom/openfeint/api/resource/Leaderboard$GetScoresCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Leaderboard;

.field final synthetic val$cb:Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Leaderboard;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;)V
    .locals 0
    .param p2, "x0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/openfeint/api/resource/Leaderboard$1;->this$0:Lcom/openfeint/api/resource/Leaderboard;

    iput-object p3, p0, Lcom/openfeint/api/resource/Leaderboard$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/openfeint/api/resource/Leaderboard$1;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;

    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$1;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$1;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;->onFailure(Ljava/lang/String;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 95
    iget-object v2, p0, Lcom/openfeint/api/resource/Leaderboard$1;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;

    if-eqz v2, :cond_0

    .line 96
    move-object v0, p1

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 97
    .local v1, "scores":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Score;>;"
    iget-object v2, p0, Lcom/openfeint/api/resource/Leaderboard$1;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;

    invoke-virtual {v2, v1}, Lcom/openfeint/api/resource/Leaderboard$GetScoresCB;->onSuccess(Ljava/util/List;)V

    .line 99
    .end local v1    # "scores":Ljava/util/List;, "Ljava/util/List<Lcom/openfeint/api/resource/Score;>;"
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$1;->val$path:Ljava/lang/String;

    return-object v0
.end method
