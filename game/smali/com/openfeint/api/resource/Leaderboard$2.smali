.class Lcom/openfeint/api/resource/Leaderboard$2;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Leaderboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Leaderboard;->getUserScore(Lcom/openfeint/api/resource/User;Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Leaderboard;

.field final synthetic val$cb:Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Leaderboard;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;)V
    .locals 0
    .param p2, "x0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/openfeint/api/resource/Leaderboard$2;->this$0:Lcom/openfeint/api/resource/Leaderboard;

    iput-object p3, p0, Lcom/openfeint/api/resource/Leaderboard$2;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/openfeint/api/resource/Leaderboard$2;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;

    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$2;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$2;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;->onFailure(Ljava/lang/String;)V

    .line 160
    :cond_0
    return-void
.end method

.method public onResponse(ILjava/lang/Object;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$2;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;

    if-eqz v0, :cond_0

    .line 143
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_1

    const/16 v0, 0x12c

    if-ge p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$2;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;

    check-cast p2, Lcom/openfeint/api/resource/Score;

    .end local p2    # "responseBody":Ljava/lang/Object;
    invoke-virtual {v0, p2}, Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;->onSuccess(Lcom/openfeint/api/resource/Score;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 145
    .restart local p2    # "responseBody":Ljava/lang/Object;
    :cond_1
    const/16 v0, 0x194

    if-ne v0, p1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$2;->val$cb:Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;->onSuccess(Lcom/openfeint/api/resource/Score;)V

    goto :goto_0

    .line 147
    :cond_2
    instance-of v0, p2, Lcom/openfeint/internal/resource/ServerException;

    if-eqz v0, :cond_3

    .line 148
    check-cast p2, Lcom/openfeint/internal/resource/ServerException;

    .end local p2    # "responseBody":Ljava/lang/Object;
    iget-object v0, p2, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/openfeint/api/resource/Leaderboard$2;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .restart local p2    # "responseBody":Ljava/lang/Object;
    :cond_3
    const-string v0, "unknown server error"

    invoke-virtual {p0, v0}, Lcom/openfeint/api/resource/Leaderboard$2;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/openfeint/api/resource/Leaderboard$2;->val$path:Ljava/lang/String;

    return-object v0
.end method
