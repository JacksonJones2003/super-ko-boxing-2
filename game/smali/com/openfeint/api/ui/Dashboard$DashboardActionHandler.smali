.class Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;
.super Lcom/openfeint/internal/ui/WebNav$ActionHandler;
.source "Dashboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/api/ui/Dashboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DashboardActionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/ui/Dashboard;


# direct methods
.method public constructor <init>(Lcom/openfeint/api/ui/Dashboard;Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0
    .param p2, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;->this$0:Lcom/openfeint/api/ui/Dashboard;

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav;)V

    .line 186
    return-void
.end method


# virtual methods
.method public final openSettings(Ljava/util/Map;)V
    .locals 0
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
    .line 197
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/internal/ui/Settings;->open()V

    .line 198
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
    .line 190
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->populateActionList(Ljava/util/List;)V

    .line 191
    const-string v0, "openSettings"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    const-string v0, "profilePicture"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
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
    .line 202
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;->this$0:Lcom/openfeint/api/ui/Dashboard;

    new-instance v1, Lcom/openfeint/internal/ImagePicker;

    iget-object v2, p0, Lcom/openfeint/api/ui/Dashboard$DashboardActionHandler;->this$0:Lcom/openfeint/api/ui/Dashboard;

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

    iput-object v1, v0, Lcom/openfeint/api/ui/Dashboard;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    .line 207
    return-void
.end method
