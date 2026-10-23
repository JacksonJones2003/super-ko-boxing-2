.class Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;
.super Lcom/openfeint/internal/ui/WebNav$ActionHandler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/Settings;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/Settings;Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0
    .param p2, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->this$0:Lcom/openfeint/internal/ui/Settings;

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav;)V

    .line 73
    return-void
.end method


# virtual methods
.method public apiRequest(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->apiRequest(Ljava/util/Map;)V

    .line 86
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/api/resource/CurrentUser;->load(Lcom/openfeint/api/resource/User$LoadCB;)V

    .line 87
    return-void
.end method

.method public final introFlow(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->this$0:Lcom/openfeint/internal/ui/Settings;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->this$0:Lcom/openfeint/internal/ui/Settings;

    const-class v3, Lcom/openfeint/internal/ui/IntroFlow;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "content_name"

    const-string v3, "login?mode=switch"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/Settings;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method

.method public final logout(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    new-instance v1, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler$1;

    invoke-direct {v1, p0}, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler$1;-><init>(Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;)V

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->logoutUser(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 97
    return-void
.end method

.method protected populateActionList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->populateActionList(Ljava/util/List;)V

    .line 78
    const-string v0, "logout"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    const-string v0, "introFlow"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    const-string v0, "profilePicture"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public final profilePicture(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->this$0:Lcom/openfeint/internal/ui/Settings;

    new-instance v1, Lcom/openfeint/internal/ImagePicker;

    iget-object v2, p0, Lcom/openfeint/internal/ui/Settings$SettingsActionHandler;->this$0:Lcom/openfeint/internal/ui/Settings;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/xp/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/api/resource/CurrentUser;->resourceID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/profile_picture"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x98

    invoke-direct {v1, v2, v3, v4}, Lcom/openfeint/internal/ImagePicker;-><init>(Landroid/app/Activity;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/openfeint/internal/ImagePicker;->show()Lcom/openfeint/internal/ImagePicker;

    move-result-object v1

    iput-object v1, v0, Lcom/openfeint/internal/ui/Settings;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    .line 111
    return-void
.end method
