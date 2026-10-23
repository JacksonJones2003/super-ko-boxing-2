.class public Lcom/openfeint/internal/AchievementUnlockCache;
.super Ljava/lang/Object;
.source "AchievementUnlockCache.java"


# static fields
.field private static cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUnlocked(Ljava/lang/String;)Z
    .locals 3
    .param p0, "achievementId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 12
    sget-object v1, Lcom/openfeint/internal/AchievementUnlockCache;->cache:Ljava/util/HashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/openfeint/internal/AchievementUnlockCache;->cache:Ljava/util/HashMap;

    .line 13
    :cond_0
    sget-object v1, Lcom/openfeint/internal/AchievementUnlockCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .local v0, "bool":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static markAsUnlocked(Ljava/lang/String;)V
    .locals 3
    .param p0, "achievementId"    # Ljava/lang/String;

    .prologue
    .line 18
    sget-object v0, Lcom/openfeint/internal/AchievementUnlockCache;->cache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openfeint/internal/AchievementUnlockCache;->cache:Ljava/util/HashMap;

    .line 19
    :cond_0
    sget-object v0, Lcom/openfeint/internal/AchievementUnlockCache;->cache:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/openfeint/internal/AchievementUnlockCache;->cache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openfeint/internal/AchievementUnlockCache;->cache:Ljava/util/HashMap;

    .line 24
    :cond_0
    sget-object v0, Lcom/openfeint/internal/AchievementUnlockCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 25
    return-void
.end method
