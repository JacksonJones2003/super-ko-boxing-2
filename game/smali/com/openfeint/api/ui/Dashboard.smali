.class public Lcom/openfeint/api/ui/Dashboard;
.super Lcom/openfeint/internal/ui/WebNav;
.source "Dashboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;
    }
.end annotation


# instance fields
.field mImagePicker:Lcom/openfeint/internal/ImagePicker;

.field mRootIsHome:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/api/ui/Dashboard;->mRootIsHome:Z

    .line 26
    return-void
.end method

.method public static open()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private static open(Ljava/lang/String;)V
    .locals 7
    .param p0, "screenName"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    .line 79
    .local v1, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->isFeintServerReachable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 80
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 81
    .local v2, "r":Landroid/content/res/Resources;
    const-string v3, "@string/of_offline_notification"

    invoke-static {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@string/of_offline_notification_line2"

    invoke-static {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/openfeint/api/Notification$Category;->Foreground:Lcom/openfeint/api/Notification$Category;

    sget-object v6, Lcom/openfeint/api/Notification$Type;->NetworkOffline:Lcom/openfeint/api/Notification$Type;

    invoke-static {v3, v4, v5, v6}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 91
    .end local v2    # "r":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getAnalytics()Lcom/openfeint/internal/Analytics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/Analytics;->markDashboardOpen()V

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/openfeint/api/ui/Dashboard;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p0, :cond_1

    const-string v3, "screenName"

    invoke-virtual {v0, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :cond_1
    invoke-virtual {v1, v0}, Lcom/openfeint/internal/OpenFeintInternal;->submitIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static openAchievements()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "achievements"

    invoke-static {v0}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public static openGameDetail(Ljava/lang/String;)V
    .locals 2
    .param p0, "appId"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "game?game_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static openLeaderboard(Ljava/lang/String;)V
    .locals 2
    .param p0, "leaderboardId"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leaderboard?leaderboard_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static openLeaderboards()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "leaderboards"

    invoke-static {v0}, Lcom/openfeint/api/ui/Dashboard;->open(Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected createActionHandler(Lcom/openfeint/internal/ui/WebNav;)Lcom/openfeint/internal/ui/WebNav$ActionHandler;
    .locals 1
    .param p1, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 170
    new-instance v0, Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;-><init>(Lcom/openfeint/api/ui/Dashboard;Lcom/openfeint/internal/ui/WebNav;)V

    return-object v0
.end method

.method protected initialContentPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/openfeint/api/ui/Dashboard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "screenName"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "screenName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/api/ui/Dashboard;->mRootIsHome:Z

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dashboard/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "dashboard/user"

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "imageReturnedIntent"    # Landroid/content/Intent;

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/openfeint/internal/ui/WebNav;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    iget-object v0, p0, Lcom/openfeint/api/ui/Dashboard;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/openfeint/api/ui/Dashboard;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/openfeint/internal/ImagePicker;->onActivityResult(IILandroid/content/Intent;)Z

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/api/ui/Dashboard;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    .line 181
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/openfeint/api/ui/Dashboard;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const-string v1, "@menu/of_dashboard"

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/openfeint/internal/ui/WebNav;->onDestroy()V

    .line 105
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getAnalytics()Lcom/openfeint/internal/Analytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/Analytics;->markDashboardClose()V

    .line 106
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "menuButtonName":Ljava/lang/String;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const-string v2, "@id/home"

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 136
    const-string v0, "home"

    .line 137
    iput-boolean v4, p0, Lcom/openfeint/api/ui/Dashboard;->mRootIsHome:Z

    .line 144
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 147
    :goto_1
    return v1

    .line 138
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const-string v2, "@id/settings"

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 139
    const-string v0, "settings"

    goto :goto_0

    .line 140
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const-string v2, "@id/exit_feint"

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 141
    const-string v0, "exit"

    goto :goto_0

    .line 146
    :cond_3
    const-string v1, "OF.menu(\'%s\')"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/api/ui/Dashboard;->executeJavascript(Ljava/lang/String;)V

    move v1, v4

    .line 147
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 122
    const-string v0, "@id/home"

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/openfeint/api/ui/Dashboard;->mRootIsHome:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/openfeint/api/ui/Dashboard;->pageStackCount:I

    if-le v1, v2, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 123
    return v2

    .line 122
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/openfeint/internal/ui/WebNav;->onResume()V

    .line 99
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/openfeint/api/ui/Dashboard;->finish()V

    .line 100
    :cond_0
    return-void
.end method
