.class public Lcom/openfeint/internal/ui/Settings;
.super Lcom/openfeint/internal/ui/WebNav;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;
    }
.end annotation


# instance fields
.field mImagePicker:Lcom/openfeint/internal/ImagePicker;

.field mOldUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav;-><init>()V

    return-void
.end method

.method public static open()V
    .locals 4

    .prologue
    .line 23
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    .line 24
    .local v2, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 25
    .local v0, "currentActivity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/openfeint/internal/ui/Settings;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected createActionHandler(Lcom/openfeint/internal/ui/WebNav;)Lcom/openfeint/internal/ui/WebNav$ActionHandler;
    .locals 1
    .param p1, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 54
    new-instance v0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;-><init>(Lcom/openfeint/internal/ui/Settings;Lcom/openfeint/internal/ui/WebNav;)V

    return-object v0
.end method

.method protected initialContentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "settings/index"

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "imageReturnedIntent"    # Landroid/content/Intent;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/openfeint/internal/ui/WebNav;->onActivityResult(IILandroid/content/Intent;)V

    .line 60
    if-eqz p3, :cond_0

    .line 61
    const-string v0, "Your profile picture has been changed."

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/openfeint/internal/ImagePicker;->onActivityResult(IILandroid/content/Intent;)Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/ui/Settings;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    .line 68
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 30
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings;->mOldUserId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 31
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/api/resource/CurrentUser;->resourceID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/ui/Settings;->mOldUserId:Ljava/lang/String;

    .line 44
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/openfeint/internal/ui/WebNav;->onResume()V

    .line 45
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings;->mOldUserId:Ljava/lang/String;

    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/api/resource/CurrentUser;->resourceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Switched Accounts"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You are now logged as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v2

    iget-object v2, v2, Lcom/openfeint/api/resource/CurrentUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/openfeint/internal/ui/Settings$1;

    invoke-direct {v2, p0}, Lcom/openfeint/internal/ui/Settings$1;-><init>(Lcom/openfeint/internal/ui/Settings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
