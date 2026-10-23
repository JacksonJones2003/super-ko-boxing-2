.class public Lcom/openfeint/internal/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# instance fields
.field dashboardMilliseconds:J

.field dashboardStart:Ljava/util/Date;

.field gameSessionMilliseconds:J

.field numDashboardLaunches:I

.field numGameSessions:I

.field numOnlineGameSessions:I

.field sessionStart:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FeintAnalytics"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 26
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v1, "dashboardLaunches"

    iget v2, p0, Lcom/openfeint/internal/Analytics;->numDashboardLaunches:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 27
    const-string v1, "sessionLaunches"

    iget v2, p0, Lcom/openfeint/internal/Analytics;->numGameSessions:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 28
    const-string v1, "onlineSessions"

    iget v2, p0, Lcom/openfeint/internal/Analytics;->numOnlineGameSessions:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 29
    const-string v1, "sessionMilliseconds"

    iget-wide v2, p0, Lcom/openfeint/internal/Analytics;->gameSessionMilliseconds:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 30
    const-string v1, "dashboardMilliseconds"

    iget-wide v2, p0, Lcom/openfeint/internal/Analytics;->dashboardMilliseconds:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 31
    return-void
.end method

.method private update()V
    .locals 4

    .prologue
    .line 69
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FeintAnalytics"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, "prefs":Landroid/content/SharedPreferences$Editor;
    const-string v1, "dashboardLaunches"

    iget v2, p0, Lcom/openfeint/internal/Analytics;->numDashboardLaunches:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 71
    const-string v1, "sessionLaunches"

    iget v2, p0, Lcom/openfeint/internal/Analytics;->numGameSessions:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 72
    const-string v1, "onlineSessions"

    iget v2, p0, Lcom/openfeint/internal/Analytics;->numOnlineGameSessions:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v1, "sessionMilliseconds"

    iget-wide v2, p0, Lcom/openfeint/internal/Analytics;->gameSessionMilliseconds:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 74
    const-string v1, "dashboardMilliseconds"

    iget-wide v2, p0, Lcom/openfeint/internal/Analytics;->dashboardMilliseconds:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 76
    return-void
.end method


# virtual methods
.method public markDashboardClose()V
    .locals 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/openfeint/internal/Analytics;->dashboardStart:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 41
    iget-wide v0, p0, Lcom/openfeint/internal/Analytics;->dashboardMilliseconds:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/openfeint/internal/Analytics;->dashboardStart:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/openfeint/internal/Analytics;->dashboardMilliseconds:J

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/Analytics;->dashboardStart:Ljava/util/Date;

    .line 43
    invoke-direct {p0}, Lcom/openfeint/internal/Analytics;->update()V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "Analytics"

    const-string v1, "Dashboard closed without known starting time"

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public markDashboardOpen()V
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/openfeint/internal/Analytics;->numDashboardLaunches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/Analytics;->numDashboardLaunches:I

    .line 35
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/Analytics;->dashboardStart:Ljava/util/Date;

    .line 36
    invoke-direct {p0}, Lcom/openfeint/internal/Analytics;->update()V

    .line 37
    return-void
.end method

.method public markSessionClose()V
    .locals 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/openfeint/internal/Analytics;->sessionStart:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 59
    iget-wide v0, p0, Lcom/openfeint/internal/Analytics;->gameSessionMilliseconds:J

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/openfeint/internal/Analytics;->sessionStart:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/openfeint/internal/Analytics;->gameSessionMilliseconds:J

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/Analytics;->sessionStart:Ljava/util/Date;

    .line 61
    invoke-direct {p0}, Lcom/openfeint/internal/Analytics;->update()V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v0, "Analytics"

    const-string v1, "Session closed without known starting time"

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public markSessionOpen(Z)V
    .locals 1
    .param p1, "online"    # Z

    .prologue
    .line 51
    iget v0, p0, Lcom/openfeint/internal/Analytics;->numGameSessions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/Analytics;->numGameSessions:I

    .line 52
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/openfeint/internal/Analytics;->numOnlineGameSessions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/openfeint/internal/Analytics;->numOnlineGameSessions:I

    .line 53
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/Analytics;->sessionStart:Ljava/util/Date;

    .line 54
    invoke-direct {p0}, Lcom/openfeint/internal/Analytics;->update()V

    .line 55
    return-void
.end method
