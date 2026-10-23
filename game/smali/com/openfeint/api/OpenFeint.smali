.class public Lcom/openfeint/api/OpenFeint;
.super Ljava/lang/Object;
.source "OpenFeint.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Landroid/app/Activity;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 0
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 38
    invoke-static {p0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->initialize(Landroid/app/Activity;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V

    .line 39
    return-void
.end method

.method public static initializeWithoutLoggingIn(Landroid/app/Activity;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 0
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 51
    invoke-static {p0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->initializeWithoutLoggingIn(Landroid/app/Activity;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V

    .line 52
    return-void
.end method

.method public static isNetworkConnected()Z
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->isFeintServerReachable()Z

    move-result v0

    return v0
.end method

.method public static isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->isUserLoggedIn()Z

    move-result v0

    return v0
.end method

.method public static login()V
    .locals 1

    .prologue
    .line 59
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->login()V

    .line 60
    return-void
.end method

.method public static logoutUser()V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->logoutUser(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 102
    return-void
.end method

.method public static setCurrentActivity(Landroid/app/Activity;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 70
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/openfeint/internal/OpenFeintInternal;->setCurrentActivity(Landroid/app/Activity;)V

    .line 71
    return-void
.end method

.method public static userApprovedFeint()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->userApprovedFeint()V

    .line 87
    return-void
.end method

.method public static userDeclinedFeint()V
    .locals 1

    .prologue
    .line 94
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->userDeclinedFeint()V

    .line 95
    return-void
.end method
