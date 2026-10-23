.class public Lcom/openfeint/api/resource/Score;
.super Lcom/openfeint/internal/resource/Resource;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/resource/Score$SubmitToCB;
    }
.end annotation


# instance fields
.field public blobUploadParameters:Lcom/openfeint/internal/resource/BlobUploadParameters;

.field public blobUrl:Ljava/lang/String;

.field public customData:Ljava/lang/String;

.field public displayText:Ljava/lang/String;

.field public latitude:D

.field public leaderboardId:I

.field public longitude:D

.field public rank:I

.field public score:J

.field public user:Lcom/openfeint/api/resource/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0
    .param p1, "score"    # J

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    iput-wide p1, p0, Lcom/openfeint/api/resource/Score;->score:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .param p1, "score"    # J
    .param p3, "displayText"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    iput-wide p1, p0, Lcom/openfeint/api/resource/Score;->score:J

    iput-object p3, p0, Lcom/openfeint/api/resource/Score;->displayText:Ljava/lang/String;

    return-void
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 5

    .prologue
    .line 157
    new-instance v0, Lcom/openfeint/api/resource/Score$2;

    const-class v1, Lcom/openfeint/api/resource/Score;

    const-string v2, "high_score"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/api/resource/Score$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 159
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "score"

    new-instance v3, Lcom/openfeint/api/resource/Score$3;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$3;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "rank"

    new-instance v3, Lcom/openfeint/api/resource/Score$4;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$4;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "leaderboard_id"

    new-instance v3, Lcom/openfeint/api/resource/Score$5;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$5;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "display_text"

    new-instance v3, Lcom/openfeint/api/resource/Score$6;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "custom_data"

    new-instance v3, Lcom/openfeint/api/resource/Score$7;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "blob_url"

    new-instance v3, Lcom/openfeint/api/resource/Score$8;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$8;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "lat"

    new-instance v3, Lcom/openfeint/api/resource/Score$9;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$9;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "lng"

    new-instance v3, Lcom/openfeint/api/resource/Score$10;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Score$10;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "user"

    new-instance v3, Lcom/openfeint/api/resource/Score$11;

    const-class v4, Lcom/openfeint/api/resource/User;

    invoke-direct {v3, v4}, Lcom/openfeint/api/resource/Score$11;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "blob_upload_parameters"

    new-instance v3, Lcom/openfeint/api/resource/Score$12;

    const-class v4, Lcom/openfeint/internal/resource/BlobUploadParameters;

    invoke-direct {v3, v4}, Lcom/openfeint/api/resource/Score$12;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-object v0
.end method


# virtual methods
.method public submitTo(Lcom/openfeint/api/resource/Leaderboard;Lcom/openfeint/api/resource/Score$SubmitToCB;)V
    .locals 7
    .param p1, "leaderboard"    # Lcom/openfeint/api/resource/Leaderboard;
    .param p2, "cb"    # Lcom/openfeint/api/resource/Score$SubmitToCB;

    .prologue
    .line 111
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

    invoke-virtual {p1}, Lcom/openfeint/api/resource/Leaderboard;->resourceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/high_scores"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 115
    .local v0, "args":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v3, "high_score[score]"

    new-instance v4, Ljava/lang/Long;

    iget-wide v5, p0, Lcom/openfeint/api/resource/Score;->score:J

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/openfeint/api/resource/Score;->displayText:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 117
    const-string v3, "high_score[display_text]"

    iget-object v4, p0, Lcom/openfeint/api/resource/Score;->displayText:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_0
    const-string v3, "high_score[has_blob]"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    new-instance v2, Lcom/openfeint/api/resource/Score$1;

    invoke-direct {v2, p0, v0, v1, p2}, Lcom/openfeint/api/resource/Score$1;-><init>(Lcom/openfeint/api/resource/Score;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V

    .line 145
    .local v2, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v2}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 146
    return-void
.end method
