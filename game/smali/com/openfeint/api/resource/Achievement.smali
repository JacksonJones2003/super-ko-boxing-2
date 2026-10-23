.class public Lcom/openfeint/api/resource/Achievement;
.super Lcom/openfeint/internal/resource/Resource;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/resource/Achievement$LoadCB;,
        Lcom/openfeint/api/resource/Achievement$UnlockCB;,
        Lcom/openfeint/api/resource/Achievement$DownloadIconCB;,
        Lcom/openfeint/api/resource/Achievement$ListCB;
    }
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public endVersion:Ljava/lang/String;

.field public gamerscore:I

.field public iconUrl:Ljava/lang/String;

.field public isSecret:Z

.field public isUnlocked:Z

.field public position:I

.field public startVersion:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public unlockDate:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceID"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/openfeint/internal/resource/Resource;-><init>()V

    invoke-virtual {p0, p1}, Lcom/openfeint/api/resource/Achievement;->setResourceID(Ljava/lang/String;)V

    return-void
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 4

    .prologue
    .line 302
    new-instance v0, Lcom/openfeint/api/resource/Achievement$5;

    const-class v1, Lcom/openfeint/api/resource/Achievement;

    const-string v2, "achievement"

    invoke-direct {v0, v1, v2}, Lcom/openfeint/api/resource/Achievement$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 304
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "title"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$6;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$6;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "description"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$7;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$7;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "gamerscore"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$8;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$8;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "icon_url"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$9;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$9;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "is_secret"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$10;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$10;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "is_unlocked"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$11;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$11;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "unlock_date"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$12;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$12;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "position"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$13;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$13;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "end_version"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$14;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$14;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "start_version"

    new-instance v3, Lcom/openfeint/api/resource/Achievement$15;

    invoke-direct {v3}, Lcom/openfeint/api/resource/Achievement$15;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    return-object v0
.end method

.method public static list(Lcom/openfeint/api/resource/Achievement$ListCB;)V
    .locals 4
    .param p0, "cb"    # Lcom/openfeint/api/resource/Achievement$ListCB;

    .prologue
    .line 101
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

    const-string v3, "/achievements"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/openfeint/api/resource/Achievement$1;

    invoke-direct {v1, v0, p0}, Lcom/openfeint/api/resource/Achievement$1;-><init>(Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$ListCB;)V

    .line 125
    .local v1, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v1}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    .line 126
    return-void
.end method


# virtual methods
.method public downloadIcon(Lcom/openfeint/api/resource/Achievement$DownloadIconCB;)V
    .locals 2
    .param p1, "cb"    # Lcom/openfeint/api/resource/Achievement$DownloadIconCB;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/openfeint/api/resource/Achievement;->iconUrl:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 146
    if-eqz p1, :cond_0

    .line 147
    const-string v1, "iconUrl is null - make sure to load() this Achievement before calling downloadIcon."

    invoke-virtual {p1, v1}, Lcom/openfeint/api/resource/Achievement$DownloadIconCB;->onFailure(Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    new-instance v0, Lcom/openfeint/api/resource/Achievement$2;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/resource/Achievement$2;-><init>(Lcom/openfeint/api/resource/Achievement;Lcom/openfeint/api/resource/Achievement$DownloadIconCB;)V

    .line 171
    .local v0, "req":Lcom/openfeint/internal/request/BitmapRequest;
    invoke-virtual {v0}, Lcom/openfeint/internal/request/BitmapRequest;->launch()V

    goto :goto_0
.end method

.method public load(Lcom/openfeint/api/resource/Achievement$LoadCB;)V
    .locals 5
    .param p1, "cb"    # Lcom/openfeint/api/resource/Achievement$LoadCB;

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/openfeint/api/resource/Achievement;->resourceID()Ljava/lang/String;

    move-result-object v2

    .line 263
    .local v2, "resID":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 264
    if-eqz p1, :cond_0

    .line 265
    const-string v3, "Can\'t load an achievement with a null resourceID."

    invoke-virtual {p1, v3}, Lcom/openfeint/api/resource/Achievement$LoadCB;->onFailure(Ljava/lang/String;)V

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
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

    const-string v4, "/achievements/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/openfeint/api/resource/Achievement$4;

    invoke-direct {v1, p0, v0, p1}, Lcom/openfeint/api/resource/Achievement$4;-><init>(Lcom/openfeint/api/resource/Achievement;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$LoadCB;)V

    .line 290
    .local v1, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v1}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    goto :goto_0
.end method

.method public unlock(Lcom/openfeint/api/resource/Achievement$UnlockCB;)V
    .locals 5
    .param p1, "cb"    # Lcom/openfeint/api/resource/Achievement$UnlockCB;

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/openfeint/api/resource/Achievement;->resourceID()Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "resID":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 194
    if-eqz p1, :cond_0

    .line 195
    const-string v3, "Can\'t unlock an achievement with a null resourceID."

    invoke-virtual {p1, v3}, Lcom/openfeint/api/resource/Achievement$UnlockCB;->onFailure(Ljava/lang/String;)V

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-static {v2}, Lcom/openfeint/internal/AchievementUnlockCache;->isUnlocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    if-eqz p1, :cond_0

    .line 202
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/openfeint/api/resource/Achievement$UnlockCB;->onSuccess(Z)V

    goto :goto_0

    .line 207
    :cond_2
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

    const-string v4, "/achievements/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/unlock"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/openfeint/api/resource/Achievement$3;

    invoke-direct {v1, p0, v0, v2, p1}, Lcom/openfeint/api/resource/Achievement$3;-><init>(Lcom/openfeint/api/resource/Achievement;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$UnlockCB;)V

    .line 241
    .local v1, "req":Lcom/openfeint/internal/request/JSONRequest;
    invoke-virtual {v1}, Lcom/openfeint/internal/request/JSONRequest;->launch()V

    goto :goto_0
.end method
