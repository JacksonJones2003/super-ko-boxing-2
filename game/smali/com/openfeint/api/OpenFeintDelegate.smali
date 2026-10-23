.class public abstract Lcom/openfeint/api/OpenFeintDelegate;
.super Ljava/lang/Object;
.source "OpenFeintDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDashboardAppear()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method public onDashboardDisappear()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public showCustomApprovalFlow(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "startingActivity"    # Landroid/app/Activity;

    .prologue
    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public userLoggedIn(Lcom/openfeint/api/resource/CurrentUser;)V
    .locals 0
    .param p1, "user"    # Lcom/openfeint/api/resource/CurrentUser;

    .prologue
    .line 28
    return-void
.end method

.method public userLoggedOut(Lcom/openfeint/api/resource/User;)V
    .locals 0
    .param p1, "user"    # Lcom/openfeint/api/resource/User;

    .prologue
    .line 38
    return-void
.end method
