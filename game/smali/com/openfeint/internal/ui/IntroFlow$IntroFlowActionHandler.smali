.class Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;
.super Lcom/openfeint/internal/ui/WebNav$ActionHandler;
.source "IntroFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/IntroFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntroFlowActionHandler"
.end annotation


# instance fields
.field cachedImage:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/openfeint/internal/ui/IntroFlow;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/IntroFlow;Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0
    .param p2, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav;)V

    .line 63
    return-void
.end method

.method private upload(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .param p1, "apiPath"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 148
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    const-string v2, "profile.png"

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "image/png"

    new-instance v5, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$4;

    invoke-direct {v5, p0}, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$4;-><init>(Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/OpenFeintInternal;->uploadFile(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 153
    return-void
.end method


# virtual methods
.method public final cacheImage(Ljava/util/Map;)V
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
    .line 113
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    new-instance v1, Lcom/openfeint/internal/ImagePicker;

    iget-object v2, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    const/16 v3, 0x98

    new-instance v4, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$3;

    invoke-direct {v4, p0}, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$3;-><init>(Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/openfeint/internal/ImagePicker;-><init>(Landroid/app/Activity;ILcom/openfeint/internal/ImagePicker$ImagePickerCB;)V

    invoke-virtual {v1}, Lcom/openfeint/internal/ImagePicker;->show()Lcom/openfeint/internal/ImagePicker;

    move-result-object v1

    iput-object v1, v0, Lcom/openfeint/internal/ui/IntroFlow;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    .line 123
    return-void
.end method

.method public final clearImage(Ljava/util/Map;)V
    .locals 1
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
    .line 138
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->cachedImage:Landroid/graphics/Bitmap;

    .line 139
    return-void
.end method

.method public final createUser(Ljava/util/Map;)V
    .locals 6
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
    .line 78
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    const-string v1, "name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "password"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "password_confirmation"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$1;

    invoke-direct {v5, p0, p1}, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$1;-><init>(Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;Ljava/util/Map;)V

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/OpenFeintInternal;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 91
    return-void
.end method

.method public decline(Ljava/util/Map;)V
    .locals 1
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
    .line 143
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->userDeclinedFeint()V

    .line 144
    iget-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->this$0:Lcom/openfeint/internal/ui/IntroFlow;

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/IntroFlow;->finish()V

    .line 145
    return-void
.end method

.method public final loginUser(Ljava/util/Map;)V
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
    .line 95
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    const-string v0, "email"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "password"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "user_id"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v4, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$2;

    invoke-direct {v4, p0, p1}, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$2;-><init>(Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;Ljava/util/Map;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/openfeint/internal/OpenFeintInternal;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 107
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
    .line 67
    .local p1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->populateActionList(Ljava/util/List;)V

    .line 68
    const-string v0, "createUser"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    const-string v0, "loginUser"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    const-string v0, "cacheImage"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    const-string v0, "uploadImage"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    const-string v0, "clearImage"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    const-string v0, "decline"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public final uploadImage(Ljava/util/Map;)V
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
    .line 128
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->cachedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/xp/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/openfeint/api/resource/CurrentUser;->resourceID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/profile_picture"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "apiUrl":Ljava/lang/String;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 131
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    iget-object v2, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->cachedImage:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 132
    invoke-direct {p0, v0, v1}, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->upload(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 134
    .end local v0    # "apiUrl":Ljava/lang/String;
    .end local v1    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-void
.end method
