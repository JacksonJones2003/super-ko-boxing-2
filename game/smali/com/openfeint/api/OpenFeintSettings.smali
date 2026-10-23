.class public Lcom/openfeint/api/OpenFeintSettings;
.super Ljava/lang/Object;
.source "OpenFeintSettings.java"


# instance fields
.field public id:Ljava/lang/String;

.field public key:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public secret:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "_name"    # Ljava/lang/String;
    .param p2, "_key"    # Ljava/lang/String;
    .param p3, "_secret"    # Ljava/lang/String;
    .param p4, "_id"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/openfeint/api/OpenFeintSettings;->name:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/openfeint/api/OpenFeintSettings;->key:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/openfeint/api/OpenFeintSettings;->id:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public applyOverrides(Ljava/util/Properties;)V
    .locals 2
    .param p1, "settings"    # Ljava/util/Properties;

    .prologue
    .line 54
    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v1, "app-id"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "property":Ljava/lang/String;
    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/openfeint/api/OpenFeintSettings;->id:Ljava/lang/String;

    .line 61
    :cond_2
    const-string v1, "game-name"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    iput-object v0, p0, Lcom/openfeint/api/OpenFeintSettings;->name:Ljava/lang/String;

    .line 64
    :cond_3
    const-string v1, "app-key"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_4

    iput-object v0, p0, Lcom/openfeint/api/OpenFeintSettings;->key:Ljava/lang/String;

    .line 67
    :cond_4
    const-string v1, "app-secret"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    goto :goto_0
.end method

.method public verify()V
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    .local v0, "verificationError":Ljava/lang/String;
    iget-object v1, p0, Lcom/openfeint/api/OpenFeintSettings;->key:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 75
    const-string v0, "OpenFeintSettings.key cannot be null. Please specify your application\'s product key during construction."

    .line 83
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 84
    const-string v1, "OpenFeintSettings"

    invoke-static {v1, v0}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/OpenFeintInternal;->displayErrorDialog(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    return-void

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 77
    const-string v0, "OpenFeintSettings.secret cannot be null. Please specify your application\'s product secret during construction."

    goto :goto_0

    .line 78
    :cond_3
    iget-object v1, p0, Lcom/openfeint/api/OpenFeintSettings;->id:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 79
    const-string v0, "OpenFeintSettings.id cannot be null. Please specify your application id during construction."

    goto :goto_0

    .line 80
    :cond_4
    iget-object v1, p0, Lcom/openfeint/api/OpenFeintSettings;->name:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 81
    const-string v0, "OpenFeintSettings.name cannot be null. Please specify your application\'s name during construction."

    goto :goto_0
.end method
