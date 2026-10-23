.class public Lcom/openfeint/internal/OpenFeintInternal;
.super Ljava/lang/Object;
.source "OpenFeintInternal.java"


# static fields
.field private static final DEVELOPMENT_LOGGING_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "OpenFeint"

.field private static sInstance:Lcom/openfeint/internal/OpenFeintInternal;


# instance fields
.field analytics:Lcom/openfeint/internal/Analytics;

.field mAppVersion:Ljava/lang/String;

.field private mApproved:Z

.field private mBanned:Z

.field mClient:Lcom/openfeint/internal/request/Client;

.field private mCreatingDeviceSession:Z

.field private mCurrentActivity:Landroid/app/Activity;

.field private mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

.field private mCurrentlyLoggingIn:Z

.field private mDeclined:Z

.field mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

.field private mDeviceSessionCreated:Z

.field mInternalProperties:Ljava/util/Properties;

.field mMainThreadHandler:Landroid/os/Handler;

.field private mPostDeviceSessionRunnable:Ljava/lang/Runnable;

.field private mPostLoginRunnable:Ljava/lang/Runnable;

.field private mPrefs:Lcom/openfeint/internal/SyncedStore;

.field mServerUrl:Ljava/lang/String;

.field mSettings:Lcom/openfeint/api/OpenFeintSettings;

.field mUDID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/openfeint/api/OpenFeintSettings;Landroid/app/Activity;)V
    .locals 8
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "currentActivity"    # Landroid/app/Activity;

    .prologue
    const-string v7, "server-url"

    const-string v6, "of-version"

    .line 698
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    sput-object p0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    .line 701
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/OpenFeintInternal;->setCurrentActivity(Landroid/app/Activity;)V

    .line 703
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    .line 705
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v1

    .line 707
    .local v1, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".of_declined"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 712
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    .line 714
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    .line 715
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v3, "server-url"

    const-string v3, "https://api.openfeint.com"

    invoke-virtual {v2, v7, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v3, "of-version"

    const-string v3, "1.0.1"

    invoke-virtual {v2, v6, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v3, "@xml/openfeint_internal_settings"

    invoke-direct {p0, v3}, Lcom/openfeint/internal/OpenFeintInternal;->_getResource(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->loadPropertiesFromXMLResource(Ljava/util/Properties;I)V

    .line 719
    const-string v2, "OpenFeint"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Using OpenFeint version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v5, "of-version"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    const-string v5, "server-url"

    invoke-virtual {v4, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 722
    .local v0, "appProperties":Ljava/util/Properties;
    const-string v2, "@xml/openfeint_app_settings"

    invoke-direct {p0, v2}, Lcom/openfeint/internal/OpenFeintInternal;->_getResource(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/openfeint/internal/OpenFeintInternal;->loadPropertiesFromXMLResource(Ljava/util/Properties;I)V

    .line 723
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    invoke-virtual {v2, v0}, Lcom/openfeint/api/OpenFeintSettings;->applyOverrides(Ljava/util/Properties;)V

    .line 725
    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    invoke-virtual {v2}, Lcom/openfeint/api/OpenFeintSettings;->verify()V

    .line 727
    new-instance v2, Lcom/openfeint/internal/request/Client;

    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v3, v3, Lcom/openfeint/api/OpenFeintSettings;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v4, v4, Lcom/openfeint/api/OpenFeintSettings;->secret:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/openfeint/internal/request/Client;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/SyncedStore;)V

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    .line 730
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/openfeint/internal/ui/WebViewCache;->initialize(Landroid/content/Context;)Lcom/openfeint/internal/ui/WebViewCache;

    .line 731
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->start()V

    .line 732
    new-instance v2, Lcom/openfeint/internal/Analytics;

    invoke-direct {v2}, Lcom/openfeint/internal/Analytics;-><init>()V

    iput-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->analytics:Lcom/openfeint/internal/Analytics;

    .line 733
    return-void

    .line 707
    .end local v0    # "appProperties":Ljava/util/Properties;
    :cond_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 709
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    throw v2
.end method

.method private _getResource(Ljava/lang/String;)I
    .locals 3
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private final _makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V
    .locals 1
    .param p1, "req"    # Lcom/openfeint/internal/request/BaseRequest;

    .prologue
    .line 556
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    invoke-virtual {v0, p1}, Lcom/openfeint/internal/request/Client;->makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 557
    return-void
.end method

.method static synthetic access$000(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/api/resource/User;)V
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;
    .param p1, "x1"    # Lcom/openfeint/api/resource/User;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/openfeint/internal/OpenFeintInternal;->userLoggedIn(Lcom/openfeint/api/resource/User;)V

    return-void
.end method

.method static synthetic access$102(Lcom/openfeint/internal/OpenFeintInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    return p1
.end method

.method static synthetic access$202(Lcom/openfeint/internal/OpenFeintInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostDeviceSessionRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$302(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostDeviceSessionRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lcom/openfeint/internal/OpenFeintInternal;ILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->showOfflineNotification(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$502(Lcom/openfeint/internal/OpenFeintInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/openfeint/internal/OpenFeintInternal;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostLoginRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostLoginRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/BaseRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;
    .param p1, "x1"    # Lcom/openfeint/internal/request/BaseRequest;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    return-void
.end method

.method static synthetic access$802(Lcom/openfeint/internal/OpenFeintInternal;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mBanned:Z

    return p1
.end method

.method static synthetic access$900(Lcom/openfeint/internal/OpenFeintInternal;)Z
    .locals 1
    .param p0, "x0"    # Lcom/openfeint/internal/OpenFeintInternal;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    return v0
.end method

.method private static cat(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 226
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, "f":Ljava/io/FileInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v5, 0x2000

    invoke-direct {v0, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 228
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 230
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 231
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "f":Ljava/io/FileInputStream;
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v4

    .line 239
    const-string v4, "unknown"

    :goto_1
    return-object v4

    .line 233
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "f":Ljava/io/FileInputStream;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 234
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto :goto_1
.end method

.method private checkBan()Z
    .locals 2

    .prologue
    .line 781
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mBanned:Z

    if-eqz v0, :cond_0

    .line 782
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "@string/of_banned_dialog"

    invoke-direct {p0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->_getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->displayErrorDialog(Ljava/lang/CharSequence;)V

    .line 783
    const/4 v0, 0x1

    .line 785
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearPrefs()V
    .locals 2

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v0

    .line 159
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_0
    const-string v1, "last_logged_in_server"

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V

    .line 160
    const-string v1, "last_logged_in_user_name"

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V

    .line 162
    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->clearUser(Lcom/openfeint/internal/SyncedStore$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 166
    return-void

    .line 164
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    throw v1
.end method

.method private clearUser(Lcom/openfeint/internal/SyncedStore$Editor;)V
    .locals 1
    .param p1, "e"    # Lcom/openfeint/internal/SyncedStore$Editor;

    .prologue
    .line 94
    const-string v0, "last_logged_in_user"

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private findUDID()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v4, "udid"

    .line 512
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "android_id"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 515
    .local v0, "androidID":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "9774d56d682e549c"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android-id-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 539
    :goto_0
    return-object v4

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v2

    .line 521
    .local v2, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    const-string v4, "udid"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 523
    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 526
    if-nez v0, :cond_1

    .line 527
    const/16 v4, 0x10

    new-array v3, v4, [B

    .line 528
    .local v3, "randomBytes":[B
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Random;->nextBytes([B)V

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android-emu-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-static {v3}, Lorg/apache/commons/codec/binary/Hex;->encodeHex([B)[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    const-string v6, "\r\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v1

    .line 533
    .local v1, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_1
    const-string v4, "udid"

    invoke-virtual {v1, v4, v0}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 535
    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .end local v1    # "e":Lcom/openfeint/internal/SyncedStore$Editor;
    .end local v3    # "randomBytes":[B
    :cond_1
    move-object v4, v0

    .line 539
    goto :goto_0

    .line 523
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    throw v4

    .line 535
    .restart local v1    # "e":Lcom/openfeint/internal/SyncedStore$Editor;
    .restart local v3    # "randomBytes":[B
    :catchall_1
    move-exception v4

    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    throw v4
.end method

.method public static genericRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 6
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/openfeint/internal/request/IRawRequestDelegate;",
            ")V"
        }
    .end annotation

    .prologue
    .line 398
    .local p2, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "httpParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Lcom/openfeint/internal/request/GenericRequest;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/request/GenericRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    invoke-static {v0}, Lcom/openfeint/internal/OpenFeintInternal;->makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 399
    return-void
.end method

.method public static getInstance()Lcom/openfeint/internal/OpenFeintInternal;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    return-object v0
.end method

.method public static getModelString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "p("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")/m("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getOSVersionString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcessorInfo()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string v11, "\n"

    .line 205
    const-string v1, "unknown"

    .line 207
    .local v1, "family":Ljava/lang/String;
    :try_start_0
    const-string v5, "/proc/cpuinfo"

    invoke-static {v5}, Lcom/openfeint/internal/OpenFeintInternal;->cat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v3, v0, v2

    .line 208
    .local v3, "l":Ljava/lang/String;
    const-string v5, "Processor\t"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 209
    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "l":Ljava/lang/String;
    .end local v4    # "len$":I
    :cond_0
    :goto_1
    const-string v5, "family(%s) min(%s) max(%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v10

    const-string v7, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_min_freq"

    invoke-static {v7}, Lcom/openfeint/internal/OpenFeintInternal;->cat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v10

    aput-object v7, v6, v9

    const/4 v7, 0x2

    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    invoke-static {v8}, Lcom/openfeint/internal/OpenFeintInternal;->cat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v10

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 207
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "l":Ljava/lang/String;
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "l":Ljava/lang/String;
    .end local v4    # "len$":I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static getResource(Ljava/lang/String;)I
    .locals 1
    .param p0, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 598
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/openfeint/internal/OpenFeintInternal;->_getResource(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getScreenInfo()Ljava/lang/String;
    .locals 5

    .prologue
    .line 199
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 200
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 201
    const-string v1, "%dx%d (%f dpi)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initialize(Landroid/app/Activity;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 619
    invoke-static {p0, p1, p2}, Lcom/openfeint/internal/OpenFeintInternal;->initializeWithoutLoggingIn(Landroid/app/Activity;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V

    .line 620
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    .line 621
    .local v0, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    if-eqz v0, :cond_0

    .line 622
    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->login()V

    .line 624
    :cond_0
    return-void
.end method

.method public static initializeWithoutLoggingIn(Landroid/app/Activity;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V
    .locals 1
    .param p0, "currentActivity"    # Landroid/app/Activity;
    .param p1, "settings"    # Lcom/openfeint/api/OpenFeintSettings;
    .param p2, "delegate"    # Lcom/openfeint/api/OpenFeintDelegate;

    .prologue
    .line 603
    invoke-static {p0}, Lcom/openfeint/internal/OpenFeintInternal;->validateManifest(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    if-nez v0, :cond_2

    .line 606
    new-instance v0, Lcom/openfeint/internal/OpenFeintInternal;

    invoke-direct {v0, p1, p0}, Lcom/openfeint/internal/OpenFeintInternal;-><init>(Lcom/openfeint/api/OpenFeintSettings;Landroid/app/Activity;)V

    sput-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    .line 611
    :goto_1
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    iput-object p2, v0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    .line 613
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    iget-boolean v0, v0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    if-nez v0, :cond_0

    .line 614
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->createDeviceSession()V

    goto :goto_0

    .line 608
    :cond_2
    sget-object v0, Lcom/openfeint/internal/OpenFeintInternal;->sInstance:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v0, p0}, Lcom/openfeint/internal/OpenFeintInternal;->setCurrentActivity(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private loadPropertiesFromXMLResource(Ljava/util/Properties;I)V
    .locals 6
    .param p1, "defaults"    # Ljava/util/Properties;
    .param p2, "resourceID"    # I

    .prologue
    .line 848
    const/4 v3, 0x0

    .line 850
    .local v3, "xml":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 853
    :goto_0
    if-eqz v3, :cond_3

    .line 856
    const/4 v2, 0x0

    .line 857
    .local v2, "k":Ljava/lang/String;
    :try_start_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    .local v1, "eventType":I
    :goto_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 858
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 859
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 857
    :cond_0
    :goto_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    goto :goto_1

    .line 860
    :cond_1
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 861
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 864
    .end local v1    # "eventType":I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 865
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 868
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "eventType":I
    :cond_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    .line 870
    .end local v1    # "eventType":I
    .end local v2    # "k":Ljava/lang/String;
    :cond_3
    return-void

    .line 851
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private loadUser()Lcom/openfeint/api/resource/User;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    .local v5, "urep":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v3

    .line 101
    .local v3, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    const-string v6, "last_logged_in_user"

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 103
    invoke-virtual {v3}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 105
    if-nez v5, :cond_0

    move-object v6, v8

    .line 118
    :goto_0
    return-object v6

    .line 103
    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    throw v6

    .line 108
    :cond_0
    :try_start_1
    new-instance v2, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v2}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 109
    .local v2, "jsonFactory":Lorg/codehaus/jackson/JsonFactory;
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v2, v6}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 110
    .local v0, "jp":Lorg/codehaus/jackson/JsonParser;
    new-instance v1, Lcom/openfeint/internal/JsonResourceParser;

    invoke-direct {v1, v0}, Lcom/openfeint/internal/JsonResourceParser;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    .line 111
    .local v1, "jrp":Lcom/openfeint/internal/JsonResourceParser;
    invoke-virtual {v1}, Lcom/openfeint/internal/JsonResourceParser;->parse()Ljava/lang/Object;

    move-result-object v4

    .line 113
    .local v4, "responseBody":Ljava/lang/Object;
    if-eqz v4, :cond_1

    instance-of v6, v4, Lcom/openfeint/api/resource/User;

    if-eqz v6, :cond_1

    .line 114
    check-cast v4, Lcom/openfeint/api/resource/User;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4    # "responseBody":Ljava/lang/Object;
    move-object v6, v4

    goto :goto_0

    .line 116
    .end local v0    # "jp":Lorg/codehaus/jackson/JsonParser;
    .end local v1    # "jrp":Lcom/openfeint/internal/JsonResourceParser;
    .end local v2    # "jsonFactory":Lorg/codehaus/jackson/JsonFactory;
    :catch_0
    move-exception v6

    :cond_1
    move-object v6, v8

    .line 118
    goto :goto_0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 884
    return-void
.end method

.method public static makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V
    .locals 5
    .param p0, "req"    # Lcom/openfeint/internal/request/BaseRequest;

    .prologue
    .line 544
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    .line 545
    .local v1, "ofi":Lcom/openfeint/internal/OpenFeintInternal;
    if-nez v1, :cond_0

    .line 546
    new-instance v0, Lcom/openfeint/internal/resource/ServerException;

    invoke-direct {v0}, Lcom/openfeint/internal/resource/ServerException;-><init>()V

    .line 547
    .local v0, "e":Lcom/openfeint/internal/resource/ServerException;
    const-string v2, "NoFeint"

    iput-object v2, v0, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 548
    const-string v2, "OpenFeint has not been initialized."

    iput-object v2, v0, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 549
    const/4 v2, 0x0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v2, v3}, Lcom/openfeint/internal/request/BaseRequest;->onResponse(ILjava/io/InputStream;)V

    .line 553
    .end local v0    # "e":Lcom/openfeint/internal/resource/ServerException;
    :goto_0
    return-void

    .line 551
    :cond_0
    invoke-direct {v1, p0}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    goto :goto_0
.end method

.method private saveUser(Lcom/openfeint/internal/SyncedStore$Editor;Lcom/openfeint/api/resource/User;)V
    .locals 2
    .param p1, "e"    # Lcom/openfeint/internal/SyncedStore$Editor;
    .param p2, "u"    # Lcom/openfeint/api/resource/User;

    .prologue
    .line 90
    const-string v0, "last_logged_in_user"

    invoke-virtual {p2}, Lcom/openfeint/api/resource/User;->generate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method private saveUserApproval(Lcom/openfeint/internal/SyncedStore$Editor;)V
    .locals 2
    .param p1, "e"    # Lcom/openfeint/internal/SyncedStore$Editor;

    .prologue
    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".of_declined"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private showOfflineNotification(ILjava/lang/Object;)V
    .locals 5
    .param p1, "httpCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 827
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 828
    .local v0, "r":Landroid/content/res/Resources;
    const-string v2, "@string/of_offline_notification_line2"

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 830
    .local v1, "serverMessage":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 831
    const/16 v2, 0x193

    if-ne v2, p1, :cond_0

    .line 832
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mBanned:Z

    .line 835
    :cond_0
    instance-of v2, p2, Lcom/openfeint/internal/resource/ServerException;

    if-eqz v2, :cond_1

    .line 836
    check-cast p2, Lcom/openfeint/internal/resource/ServerException;

    .end local p2    # "responseBody":Ljava/lang/Object;
    iget-object v1, p2, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 840
    :cond_1
    const-string v2, "@string/of_offline_notification"

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/openfeint/api/Notification$Category;->Foreground:Lcom/openfeint/api/Notification$Category;

    sget-object v4, Lcom/openfeint/api/Notification$Type;->NetworkOffline:Lcom/openfeint/api/Notification$Type;

    invoke-static {v2, v1, v3, v4}, Lcom/openfeint/internal/notifications/TwoLineNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 844
    const-string v2, "Reachability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch IntroFlow because: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    return-void
.end method

.method private userLoggedIn(Lcom/openfeint/api/resource/User;)V
    .locals 3
    .param p1, "loggedInUser"    # Lcom/openfeint/api/resource/User;

    .prologue
    .line 122
    new-instance v1, Lcom/openfeint/api/resource/CurrentUser;

    invoke-direct {v1}, Lcom/openfeint/api/resource/CurrentUser;-><init>()V

    iput-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    .line 123
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    invoke-virtual {v1, p1}, Lcom/openfeint/api/resource/CurrentUser;->shallowCopyAncestorType(Lcom/openfeint/internal/resource/Resource;)V

    .line 125
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v0

    .line 127
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_0
    const-string v1, "last_logged_in_server"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->saveUserApproval(Lcom/openfeint/internal/SyncedStore$Editor;)V

    .line 130
    invoke-direct {p0, v0, p1}, Lcom/openfeint/internal/OpenFeintInternal;->saveUser(Lcom/openfeint/internal/SyncedStore$Editor;Lcom/openfeint/api/resource/User;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 135
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    invoke-virtual {v1, v2}, Lcom/openfeint/api/OpenFeintDelegate;->userLoggedIn(Lcom/openfeint/api/resource/CurrentUser;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAnalytics()Lcom/openfeint/internal/Analytics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/openfeint/internal/Analytics;->markSessionOpen(Z)V

    .line 139
    invoke-static {}, Lcom/openfeint/internal/AchievementUnlockCache;->reset()V

    .line 140
    return-void

    .line 132
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    throw v1
.end method

.method private userLoggedOut()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    .line 144
    .local v0, "previousLocalUser":Lcom/openfeint/api/resource/User;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    .line 146
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    .line 148
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->clearPrefs()V

    .line 150
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    invoke-virtual {v1, v0}, Lcom/openfeint/api/OpenFeintDelegate;->userLoggedOut(Lcom/openfeint/api/resource/User;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAnalytics()Lcom/openfeint/internal/Analytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/Analytics;->markSessionClose()V

    .line 154
    return-void
.end method

.method private static validateManifest(Landroid/app/Activity;)Z
    .locals 11
    .param p0, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 631
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 634
    .local v0, "appContext":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 636
    .local p0, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1001

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 638
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/String;

    .end local p0    # "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    const-string v2, "com.openfeint.api.ui.Dashboard"

    aput-object v2, p0, v1

    const/4 v1, 0x1

    const-string v2, "com.openfeint.internal.ui.IntroFlow"

    aput-object v2, p0, v1

    const/4 v1, 0x2

    const-string v2, "com.openfeint.internal.ui.Settings"

    aput-object v2, p0, v1

    .line 644
    .local p0, "neededActivityInfo":[Ljava/lang/String;
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 p0, 0x0

    .local p0, "i$":I
    move v4, p0

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local p0    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v1, v4

    .line 645
    .local v7, "n":Ljava/lang/String;
    const/4 v9, 0x0

    .line 646
    .local v9, "victory":Z
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    .local v2, "arr$":[Landroid/content/pm/ActivityInfo;
    array-length v6, v2

    .local v6, "len$":I
    const/4 p0, 0x0

    .end local v4    # "i$":I
    .restart local p0    # "i$":I
    move v3, p0

    .end local p0    # "i$":I
    .local v3, "i$":I
    :goto_1
    if-ge v3, v6, :cond_9

    aget-object p0, v2, v3

    .line 647
    .local p0, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v10, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 648
    iget p0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    .end local p0    # "ai":Landroid/content/pm/ActivityInfo;
    const/16 v2, 0xa0

    if-eq p0, v2, :cond_0

    .line 650
    .end local v2    # "arr$":[Landroid/content/pm/ActivityInfo;
    const-string p0, "OpenFeint"

    const-string v1, "ActivityInfo for %s has the wrong configChanges.\nPlease consult README.txt for the correct configuration."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    .end local v3    # "i$":I
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/4 p0, 0x0

    .line 695
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v6    # "len$":I
    .end local v7    # "n":Ljava/lang/String;
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "victory":Z
    :goto_2
    return p0

    .line 654
    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v3    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "n":Ljava/lang/String;
    .restart local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "victory":Z
    :cond_0
    const/4 p0, 0x1

    .line 658
    .end local v9    # "victory":Z
    .local p0, "victory":Z
    :goto_3
    if-nez p0, :cond_2

    .line 659
    const-string p0, "OpenFeint"

    .end local p0    # "victory":Z
    const-string v1, "Couldn\'t find ActivityInfo for %s.\nPlease consult README.txt for the correct configuration."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    .end local v3    # "i$":I
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/4 p0, 0x0

    goto :goto_2

    .line 646
    .restart local v2    # "arr$":[Landroid/content/pm/ActivityInfo;
    .restart local v3    # "i$":I
    .restart local v9    # "victory":Z
    .local p0, "ai":Landroid/content/pm/ActivityInfo;
    :cond_1
    add-int/lit8 p0, v3, 0x1

    .end local v3    # "i$":I
    .local p0, "i$":I
    move v3, p0

    .end local p0    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_1

    .line 644
    .end local v2    # "arr$":[Landroid/content/pm/ActivityInfo;
    .end local v9    # "victory":Z
    .local p0, "victory":Z
    :cond_2
    add-int/lit8 p0, v4, 0x1

    .end local v3    # "i$":I
    .local p0, "i$":I
    move v4, p0

    .end local p0    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 665
    .end local v6    # "len$":I
    .end local v7    # "n":Ljava/lang/String;
    :cond_3
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.INTERNET"

    aput-object v2, p0, v1

    .line 669
    .local p0, "neededPermissionInfo":[Ljava/lang/String;
    move-object p0, p0

    .local p0, "arr$":[Ljava/lang/String;
    array-length v4, p0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    move v3, v1

    .end local v1    # "i$":I
    .end local v4    # "len$":I
    .end local p0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    :goto_4
    if-ge v3, v4, :cond_7

    aget-object v6, p0, v3

    .line 670
    .local v6, "n":Ljava/lang/String;
    const/4 v9, 0x0

    .line 671
    .restart local v9    # "victory":Z
    iget-object v1, v8, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .local v2, "i$":I
    :goto_5
    if-ge v2, v5, :cond_8

    aget-object v7, v1, v2

    .line 672
    .local v7, "p":Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .end local v7    # "p":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 673
    const/4 v1, 0x1

    .line 678
    .end local v9    # "victory":Z
    .local v1, "victory":Z
    :goto_6
    if-nez v1, :cond_5

    .line 679
    const-string p0, "OpenFeint"

    const-string v1, "Permission \'%s\' not requested in manifest..\nPlease consult README.txt for the correct configuration."

    .end local v1    # "victory":Z
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .end local v2    # "i$":I
    const/4 v3, 0x0

    aput-object v6, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    const/4 p0, 0x0

    goto :goto_2

    .line 671
    .local v1, "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v9    # "victory":Z
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 683
    .end local v9    # "victory":Z
    .local v1, "victory":Z
    :cond_5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .end local v1    # "victory":Z
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .end local v2    # "i$":I
    invoke-virtual {v1, v6, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_6

    .line 686
    const/4 p0, 0x0

    goto :goto_2

    .line 669
    :cond_6
    add-int/lit8 v1, v3, 0x1

    .local v1, "i$":I
    move v3, v1

    .end local v1    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_4

    .line 690
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "n":Ljava/lang/String;
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception p0

    .line 691
    .local p0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string p0, "OpenFeint"

    .end local p0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "Couldn\'t find PackageInfo for %s.\nPlease initialize OF with an Activity that lives in your root package."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .end local v0    # "appContext":Landroid/content/Context;
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const/4 p0, 0x0

    goto/16 :goto_2

    .line 695
    .restart local v0    # "appContext":Landroid/content/Context;
    .restart local v3    # "i$":I
    .restart local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_7
    const/4 p0, 0x1

    goto/16 :goto_2

    .end local v3    # "i$":I
    .local v1, "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "n":Ljava/lang/String;
    .restart local v9    # "victory":Z
    :cond_8
    move v1, v9

    .end local v9    # "victory":Z
    .local v1, "victory":Z
    goto :goto_6

    .end local v1    # "victory":Z
    .end local v5    # "len$":I
    .local v2, "arr$":[Landroid/content/pm/ActivityInfo;
    .restart local v3    # "i$":I
    .local v6, "len$":I
    .local v7, "n":Ljava/lang/String;
    .restart local v9    # "victory":Z
    :cond_9
    move p0, v9

    .end local v9    # "victory":Z
    .local p0, "victory":Z
    goto/16 :goto_3
.end method


# virtual methods
.method public createDeviceSession()V
    .locals 5

    .prologue
    .line 253
    iget-boolean v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    if-eqz v3, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    .local v0, "argMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v3, "device"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getDeviceParams()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    new-instance v1, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v1, v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>(Ljava/util/Map;)V

    .line 260
    .local v1, "args":Lcom/openfeint/internal/request/OrderedArgList;
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    .line 262
    new-instance v2, Lcom/openfeint/internal/OpenFeintInternal$2;

    invoke-direct {v2, p0, v1}, Lcom/openfeint/internal/OpenFeintInternal$2;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 282
    .local v2, "deviceSession":Lcom/openfeint/internal/request/RawRequest;
    invoke-direct {p0, v2}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    goto :goto_0
.end method

.method public createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 4
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "email"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "passwordConfirmation"    # Ljava/lang/String;
    .param p5, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 169
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 170
    .local v0, "bootstrapArgs":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string v2, "of-version"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getOFVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v2, "app-version"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v2, "user[name]"

    invoke-virtual {v0, v2, p1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string v2, "user[http_basic_credential_attributes][email]"

    invoke-virtual {v0, v2, p2}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v2, "user[http_basic_credential_attributes][password]"

    invoke-virtual {v0, v2, p3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "user[http_basic_credential_attributes][password_confirmation]"

    invoke-virtual {v0, v2, p4}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal$1;

    invoke-direct {v1, p0, v0}, Lcom/openfeint/internal/OpenFeintInternal$1;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 186
    .local v1, "userCreate":Lcom/openfeint/internal/request/RawRequest;
    invoke-virtual {v1, p5}, Lcom/openfeint/internal/request/RawRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 187
    invoke-direct {p0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 188
    return-void
.end method

.method public currentlyLoggingIn()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public displayErrorDialog(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "errorMessage"    # Ljava/lang/CharSequence;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal$7;

    invoke-direct {v1, p0, p1}, Lcom/openfeint/internal/OpenFeintInternal$7;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 508
    return-void
.end method

.method public getAnalytics()Lcom/openfeint/internal/Analytics;
    .locals 1

    .prologue
    .line 735
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->analytics:Lcom/openfeint/internal/Analytics;

    return-object v0
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v0, v0, Lcom/openfeint/api/OpenFeintSettings;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mSettings:Lcom/openfeint/api/OpenFeintSettings;

    iget-object v0, v0, Lcom/openfeint/api/OpenFeintSettings;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 6

    .prologue
    .line 483
    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAppVersion:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 484
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 486
    .local v0, "c":Landroid/content/Context;
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 487
    .local v2, "p":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v0    # "c":Landroid/content/Context;
    .end local v2    # "p":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAppVersion:Ljava/lang/String;

    return-object v3

    .line 488
    .restart local v0    # "c":Landroid/content/Context;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 489
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "1.0"

    iput-object v3, p0, Lcom/openfeint/internal/OpenFeintInternal;->mAppVersion:Ljava/lang/String;

    goto :goto_0
.end method

.method public getClient()Lorg/apache/http/impl/client/AbstractHttpClient;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mClient:Lcom/openfeint/internal/request/Client;

    return-object v0
.end method

.method public getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentUser:Lcom/openfeint/api/resource/CurrentUser;

    return-object v0
.end method

.method public getDelegate()Lcom/openfeint/api/OpenFeintDelegate;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDelegate:Lcom/openfeint/api/OpenFeintDelegate;

    return-object v0
.end method

.method public getDeviceParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 243
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v0, "device":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "identifier"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getUDID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "hardware"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getModelString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v1, "os"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getOSVersionString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const-string v1, "screen_resolution"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getScreenInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    const-string v1, "processor"

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getProcessorInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    return-object v0
.end method

.method public getInternalProperties()Ljava/util/Properties;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mInternalProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getOFVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 478
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getInternalProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "of-version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefs()Lcom/openfeint/internal/SyncedStore;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPrefs:Lcom/openfeint/internal/SyncedStore;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Lcom/openfeint/internal/SyncedStore;

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/openfeint/internal/SyncedStore;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPrefs:Lcom/openfeint/internal/SyncedStore;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPrefs:Lcom/openfeint/internal/SyncedStore;

    return-object v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 465
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mServerUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getInternalProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "server-url"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "raw":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 469
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mServerUrl:Ljava/lang/String;

    .line 475
    .end local v0    # "raw":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mServerUrl:Ljava/lang/String;

    return-object v1

    .line 471
    .restart local v0    # "raw":Ljava/lang/String;
    :cond_1
    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mServerUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUDID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mUDID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 454
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->findUDID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mUDID:Ljava/lang/String;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mUDID:Ljava/lang/String;

    return-object v0
.end method

.method public isFeintServerReachable()Z
    .locals 4

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 874
    .local v1, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 875
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUserLoggedIn()Z
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchIntroFlow()V
    .locals 4

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->checkBan()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->isFeintServerReachable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 792
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getDelegate()Lcom/openfeint/api/OpenFeintDelegate;

    move-result-object v0

    .line 793
    .local v0, "d":Lcom/openfeint/api/OpenFeintDelegate;
    iget-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/openfeint/api/OpenFeintDelegate;->showCustomApprovalFlow(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 798
    :cond_2
    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal$10;

    invoke-direct {v1, p0}, Lcom/openfeint/internal/OpenFeintInternal$10;-><init>(Lcom/openfeint/internal/OpenFeintInternal;)V

    .line 808
    .local v1, "r":Ljava/lang/Runnable;
    iget-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    if-nez v2, :cond_5

    .line 809
    :cond_3
    iget-boolean v2, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v2, :cond_4

    .line 810
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->createDeviceSession()V

    .line 813
    :cond_4
    iput-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostDeviceSessionRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 816
    :cond_5
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 821
    .end local v0    # "d":Lcom/openfeint/api/OpenFeintDelegate;
    .end local v1    # "r":Ljava/lang/Runnable;
    :cond_6
    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->showOfflineNotification(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public login()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "OpenFeint"

    .line 738
    iget-boolean v5, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->isUserLoggedIn()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 778
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->loadUser()Lcom/openfeint/api/resource/User;

    move-result-object v4

    .line 741
    .local v4, "savedUser":Lcom/openfeint/api/resource/User;
    const/4 v0, 0x0

    .line 743
    .local v0, "lastKnownUserGood":Z
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v2

    .line 746
    .local v2, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 747
    .local v3, "saved":Ljava/net/URL;
    new-instance v1, Ljava/net/URL;

    const-string v5, "last_logged_in_server"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 748
    .local v1, "loaded":Ljava/net/URL;
    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move v0, v5

    .line 751
    :goto_1
    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 754
    .end local v1    # "loaded":Ljava/net/URL;
    .end local v3    # "saved":Ljava/net/URL;
    :goto_2
    if-eqz v0, :cond_3

    .line 755
    const-string v5, "OpenFeint"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Logging in last known user: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/openfeint/api/resource/User;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    new-instance v5, Lcom/openfeint/internal/OpenFeintInternal$9;

    invoke-direct {v5, p0, v4}, Lcom/openfeint/internal/OpenFeintInternal$9;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/api/resource/User;)V

    invoke-virtual {p0, v7, v7, v7, v5}, Lcom/openfeint/internal/OpenFeintInternal;->loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    goto :goto_0

    .line 748
    .restart local v1    # "loaded":Ljava/net/URL;
    .restart local v3    # "saved":Ljava/net/URL;
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1

    .line 749
    .end local v1    # "loaded":Ljava/net/URL;
    .end local v3    # "saved":Ljava/net/URL;
    :catch_0
    move-exception v5

    .line 751
    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    goto :goto_2

    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    throw v5

    .line 774
    :cond_3
    const-string v5, "OpenFeint"

    const-string v5, "No last user, launch intro flow"

    invoke-static {v8, v5}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->clearPrefs()V

    .line 776
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->launchIntroFlow()V

    goto :goto_0
.end method

.method public loginUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 10
    .param p1, "userName"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userID"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    const-string v2, "password"

    .line 286
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->checkBan()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeviceSessionCreated:Z

    if-nez v0, :cond_3

    .line 289
    :cond_1
    iget-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCreatingDeviceSession:Z

    if-nez v0, :cond_2

    .line 290
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->createDeviceSession()V

    .line 294
    :cond_2
    const-string v0, "OpenFeint"

    const-string v1, "No device session yet - queueing login."

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v0, Lcom/openfeint/internal/OpenFeintInternal$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/OpenFeintInternal$3;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostDeviceSessionRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 304
    :cond_3
    const/4 v6, 0x1

    .line 306
    .local v6, "allowToast":Z
    new-instance v7, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v7}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 307
    .local v7, "bootstrapArgs":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v0, "platform"

    const-string v1, "android"

    invoke-virtual {v7, v0, v1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 309
    const-string v0, "login"

    invoke-virtual {v7, v0, p1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "password"

    invoke-virtual {v7, v2, p2}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v6, 0x0

    .line 316
    :cond_4
    if-eqz p3, :cond_5

    if-eqz p2, :cond_5

    .line 317
    const-string v0, "user_id"

    invoke-virtual {v7, v0, p3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "password"

    invoke-virtual {v7, v2, p2}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const/4 v6, 0x0

    .line 321
    :cond_5
    const-string v0, "of-version"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getOFVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v0, "app-version"

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentlyLoggingIn:Z

    .line 326
    move v8, v6

    .line 328
    .local v8, "finalToast":Z
    new-instance v9, Lcom/openfeint/internal/OpenFeintInternal$4;

    invoke-direct {v9, p0, v7, v8}, Lcom/openfeint/internal/OpenFeintInternal$4;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;Z)V

    .line 350
    .local v9, "userLogin":Lcom/openfeint/internal/request/RawRequest;
    invoke-virtual {v9, p4}, Lcom/openfeint/internal/request/RawRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 351
    invoke-direct {p0, v9}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    goto :goto_0
.end method

.method public logoutUser(Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 4
    .param p1, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 382
    new-instance v0, Lcom/openfeint/internal/request/OrderedArgList;

    invoke-direct {v0}, Lcom/openfeint/internal/request/OrderedArgList;-><init>()V

    .line 383
    .local v0, "bootstrapArgs":Lcom/openfeint/internal/request/OrderedArgList;
    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    new-instance v1, Lcom/openfeint/internal/OpenFeintInternal$6;

    invoke-direct {v1, p0, v0}, Lcom/openfeint/internal/OpenFeintInternal$6;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V

    .line 390
    .local v1, "userLogout":Lcom/openfeint/internal/request/RawRequest;
    invoke-virtual {v1, p1}, Lcom/openfeint/internal/request/RawRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 391
    invoke-direct {p0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 394
    invoke-direct {p0}, Lcom/openfeint/internal/OpenFeintInternal;->userLoggedOut()V

    .line 395
    return-void
.end method

.method public setCurrentActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "currentActivity"    # Landroid/app/Activity;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mCurrentActivity:Landroid/app/Activity;

    .line 628
    return-void
.end method

.method public submitIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 360
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    .line 362
    new-instance v0, Lcom/openfeint/internal/OpenFeintInternal$5;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/OpenFeintInternal$5;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Landroid/content/Intent;)V

    .line 368
    .local v0, "r":Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->isUserLoggedIn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 369
    const-string v1, "OpenFeint"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not logged in yet - queueing intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for now."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iput-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal;->mPostLoginRunnable:Ljava/lang/Runnable;

    .line 371
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->currentlyLoggingIn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->login()V

    .line 379
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->launchIntroFlow()V

    goto :goto_0

    .line 377
    :cond_1
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mMainThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public uploadFile(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 6
    .param p1, "xpApiPath"    # Ljava/lang/String;
    .param p2, "partSource"    # Lcom/openfeint/internal/request/multipart/PartSource;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 580
    new-instance v0, Lcom/openfeint/internal/OpenFeintInternal$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/openfeint/internal/OpenFeintInternal$8;-><init>(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 589
    .local v0, "xpRequest":Lcom/openfeint/internal/request/JSONRequest;
    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->_makeRequest(Lcom/openfeint/internal/request/BaseRequest;)V

    .line 590
    return-void
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 6
    .param p1, "xpApiPath"    # Ljava/lang/String;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 561
    move-object v2, p2

    .line 562
    .local v2, "fileName":Ljava/lang/String;
    :try_start_0
    const-string v4, "/"

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "parts":[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 564
    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-object v2, v3, v4

    .line 566
    :cond_0
    new-instance v4, Lcom/openfeint/internal/request/multipart/FilePartSource;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v2, v5}, Lcom/openfeint/internal/request/multipart/FilePartSource;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual {p0, p1, v4, p3, p4}, Lcom/openfeint/internal/OpenFeintInternal;->uploadFile(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    .end local v3    # "parts":[Ljava/lang/String;
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 568
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/openfeint/internal/resource/ServerException;

    invoke-direct {v1}, Lcom/openfeint/internal/resource/ServerException;-><init>()V

    .line 569
    .local v1, "fakeServerException":Lcom/openfeint/internal/resource/ServerException;
    const-string v4, "FileNotFound"

    iput-object v4, v1, Lcom/openfeint/internal/resource/ServerException;->exceptionClass:Ljava/lang/String;

    .line 570
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t open the file \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/openfeint/internal/resource/ServerException;->message:Ljava/lang/String;

    .line 571
    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/openfeint/internal/resource/ServerException;->generate()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p4, v4, v5}, Lcom/openfeint/internal/request/IRawRequestDelegate;->onResponse(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 1
    .param p1, "xpApiPath"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileData"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "delegate"    # Lcom/openfeint/internal/request/IRawRequestDelegate;

    .prologue
    .line 576
    new-instance v0, Lcom/openfeint/internal/request/multipart/ByteArrayPartSource;

    invoke-direct {v0, p2, p3}, Lcom/openfeint/internal/request/multipart/ByteArrayPartSource;-><init>(Ljava/lang/String;[B)V

    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/openfeint/internal/OpenFeintInternal;->uploadFile(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 577
    return-void
.end method

.method public userApprovedFeint()V
    .locals 2

    .prologue
    .line 411
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    .line 412
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    .line 413
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v0

    .line 416
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/openfeint/internal/OpenFeintInternal;->saveUserApproval(Lcom/openfeint/internal/SyncedStore$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 421
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->launchIntroFlow()V

    .line 422
    return-void

    .line 418
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    throw v1
.end method

.method public userDeclinedFeint()V
    .locals 3

    .prologue
    .line 429
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mApproved:Z

    .line 430
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/openfeint/internal/OpenFeintInternal;->mDeclined:Z

    .line 432
    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getPrefs()Lcom/openfeint/internal/SyncedStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;

    move-result-object v0

    .line 434
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".of_declined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sadly"

    invoke-virtual {v0, v1, v2}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    .line 438
    return-void

    .line 436
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    throw v1
.end method
