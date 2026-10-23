.class final Lcom/glu/android/GluOpenFeint$1;
.super Lcom/openfeint/api/OpenFeintDelegate;
.source "GluOpenFeint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/GluOpenFeint;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/openfeint/api/OpenFeintDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onDashboardDisappear()V
    .locals 1

    .prologue
    .line 155
    const-string v0, "dashboard dismissed"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/glu/android/GluOpenFeint;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/openfeint/api/OpenFeint;->isUserLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    const-string v0, "user didn\'t login +1 nag"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/glu/android/GluOpenFeint;->access$108()B

    .line 159
    invoke-static {}, Lcom/glu/android/GluOpenFeint;->saveNumPrompts()V

    .line 161
    :cond_0
    return-void
.end method
