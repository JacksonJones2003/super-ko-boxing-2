.class public Lcom/openfeint/api/resource/User;
.super Lcom/openfeint/internal/resource/Resource;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;,
        Lcom/openfeint/api/resource/User$GetFriendsCB;,
        Lcom/openfeint/api/resource/User$FindCB;,
        Lcom/openfeint/api/resource/User$LoadCB;
    }
.end annotation


# instance fields
.field public followedByLocalUser:Z

.field public followsLocalUser:Z

.field public gamerScore:I

.field public lastPlayedGameId:Ljava/lang/String;

.field public lastPlayedGameName:Ljava/lang/String;

.field public latitude:D

.field public longitude:D

.field public name:Ljava/lang/String;

.field public online:Z

.field public profilePictureSource:Ljava/lang/String;

.field public profilePictureUrl:Ljava/lang/String;

.field public usesFacebookProfilePicture:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    invoke-virtual {p0, p1}, Lcom/openfeint/api/resource/User;->setResourceID(Ljava/lang/String;)V

    return-void
.end method

.method public static findByID(Ljava/lang/String;Lcom/openfeint/api/resource/User$FindCB;)V
    .locals 1
    .param p0, "resourceID"    # Ljava/lang/String;
    .param p1, "cb"    # Lcom/openfeint/api/resource/User$FindCB;

    .prologue
    .line 169
    new-instance v0, Lcom/openfeint/api/resource/User$3;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/resource/User$3;-><init>(Ljava/lang/String;Lcom/openfeint/api/resource/User$FindCB;)V

    .line 186
    .local v0, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 187
    return-void
.end method

.method public static findByName(Ljava/lang/String;Lcom/openfeint/api/resource/User$FindCB;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "cb"    # Lcom/openfeint/api/resource/User$FindCB;

    .prologue
    .line 141
    new-instance v0, Lcom/openfeint/api/resource/User$2;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/resource/User$2;-><init>(Ljava/lang/String;Lcom/openfeint/api/resource/User$FindCB;)V

    .line 158
    .local v0, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 159
    return-void
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 4

    .prologue
    .line 286
    new-instance v0, Lcom/openfeint/api/resource/User$6;

    const-class v1, Lcom/openfeint/api/resource/User;

    const-string v2, "user"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/api/resource/User$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 288
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "name"

    new-instance v3, Lcom/openfeint/api/resource/User$7;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "profile_picture_url"

    new-instance v3, Lcom/openfeint/api/resource/User$8;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$8;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "profile_picture_source"

    new-instance v3, Lcom/openfeint/api/resource/User$9;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$9;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "uses_facebook_profile_picture"

    new-instance v3, Lcom/openfeint/api/resource/User$10;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$10;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "last_played_game_id"

    new-instance v3, Lcom/openfeint/api/resource/User$11;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$11;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "last_played_game_name"

    new-instance v3, Lcom/openfeint/api/resource/User$12;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$12;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "gamer_score"

    new-instance v3, Lcom/openfeint/api/resource/User$13;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$13;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "following_local_user"

    new-instance v3, Lcom/openfeint/api/resource/User$14;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$14;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "followed_by_local_user"

    new-instance v3, Lcom/openfeint/api/resource/User$15;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$15;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "online"

    new-instance v3, Lcom/openfeint/api/resource/User$16;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$16;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "lat"

    new-instance v3, Lcom/openfeint/api/resource/User$17;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$17;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "lng"

    new-instance v3, Lcom/openfeint/api/resource/User$18;

    invoke-direct {v3}, Lcom/openfeint/api/resource/User$18;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-object v0
.end method


# virtual methods
.method public downloadProfilePicture(Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;)V
    .locals 2
    .param p1, "cb"    # Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;

    .prologue
    .line 249
    iget-object v1, p0, Lcom/openfeint/api/resource/User;->profilePictureUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 250
    if-eqz p1, :cond_0

    .line 251
    const-string v1, "profilePictureUrl is null - make sure to load() this User before calling downloadProfilePicture."

    invoke-virtual {p1, v1}, Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;->onFailure(Ljava/lang/String;)V

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    new-instance v0, Lcom/openfeint/api/resource/User$5;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/resource/User$5;-><init>(Lcom/openfeint/api/resource/User;Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;)V

    .line 274
    .local v0, "req":Lcom/openfeint/internal/request/BitmapRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/BitmapRequest;->launch()V

    goto :goto_0
.end method

.method public getFriends(Lcom/openfeint/api/resource/User$GetFriendsCB;)V
    .locals 4
    .param p1, "cb"    # Lcom/openfeint/api/resource/User$GetFriendsCB;

    .prologue
    .line 205
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 206
    .local v0, "args":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v2, "user_id"

    invoke-virtual {p0}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v1, Lcom/openfeint/api/resource/User$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/openfeint/api/resource/User$4;-><init>(Lcom/openfeint/api/resource/User;Lcom/openfeint/internal/request/OrderedArgList;Lcom/openfeint/api/resource/User$GetFriendsCB;)V

    .line 229
    .local v1, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v1}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 230
    return-void
.end method

.method public load(Lcom/openfeint/api/resource/User$LoadCB;)V
    .locals 1
    .param p1, "cb"    # Lcom/openfeint/api/resource/User$LoadCB;

    .prologue
    .line 99
    new-instance v0, Lcom/openfeint/api/resource/User$1;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/resource/User$1;-><init>(Lcom/openfeint/api/resource/User;Lcom/openfeint/api/resource/User$LoadCB;)V

    .line 119
    .local v0, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 120
    return-void
.end method

.method public userID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
