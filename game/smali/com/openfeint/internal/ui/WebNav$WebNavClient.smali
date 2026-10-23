.class Lcom/openfeint/internal/ui/WebNav$WebNavClient;
.super Landroid/webkit/WebViewClient;
.source "WebNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebNavClient"
.end annotation


# instance fields
.field mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebNav;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav$ActionHandler;)V
    .locals 0
    .param p2, "anActionHandler"    # Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    .line 284
    return-void
.end method

.method static synthetic access$200(Lcom/openfeint/internal/ui/WebNav$WebNavClient;)V
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    .prologue
    .line 273
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->submitCrashReport()V

    return-void
.end method

.method private submitCrashReport()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 338
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 339
    .local v0, "crashReport":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "console"

    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    iget-object v5, v5, Lcom/openfeint/internal/ui/WebNav;->mPreloadConsoleOutput:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 343
    .local v1, "json":Lorg/json/JSONObject;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 344
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "crash_report"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v3, "/webui/crash_report"

    const-string v4, "POST"

    invoke-static {v3, v4, v2, v6, v6}, Lcom/openfeint/internal/OpenFeintInternal;->genericRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 346
    return-void
.end method


# virtual methods
.method public loadInitialContent()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    const-string v10, "name"

    const-string v9, "id"

    .line 354
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v5

    .line 355
    .local v5, "of":Lcom/openfeint/internal/OpenFeintInternal;
    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v4

    .line 356
    .local v4, "localUser":Lcom/openfeint/api/resource/User;
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v8}, Lcom/openfeint/internal/ui/WebNav;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v6, v8, Landroid/content/res/Configuration;->orientation:I

    .line 358
    .local v6, "orientation":I
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 359
    .local v7, "user":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_0

    .line 360
    const-string v8, "id"

    invoke-virtual {v4}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v8, "name"

    iget-object v8, v4, Lcom/openfeint/api/resource/User;->name:Ljava/lang/String;

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 365
    .local v2, "game":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "id"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getAppID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v8, "name"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getAppName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    const-string v8, "version"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v8

    invoke-virtual {v8}, Lcom/openfeint/internal/OpenFeintInternal;->getDeviceParams()Ljava/util/Map;

    move-result-object v1

    .line 371
    .local v1, "device":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v0, "config":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "platform"

    const-string v9, "android"

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string v8, "clientVersion"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getOFVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string v8, "hasNativeInterface"

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string v8, "dpi"

    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getDpiName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v8, "locale"

    iget-object v9, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v9}, Lcom/openfeint/internal/ui/WebNav;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v8, "user"

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v8, "game"

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v8, "device"

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v8, "actions"

    new-instance v9, Lorg/json/JSONArray;

    iget-object v10, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v10}, Lcom/openfeint/internal/ui/WebNav;->getActionHandler()Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    move-result-object v10

    invoke-virtual {v10}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->getActionList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v8, "orientation"

    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    const-string v9, "landscape"

    :goto_0
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v8, "serverUrl"

    invoke-virtual {v5}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 391
    .local v3, "json":Lorg/json/JSONObject;
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    const-string v9, "OF.init.clientBoot(%s)"

    new-array v10, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 394
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    iget-object v8, v8, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v8}, Lcom/openfeint/internal/ui/WebNav;->loadInitialContent()V

    .line 395
    return-void

    .line 382
    .end local v3    # "json":Lorg/json/JSONObject;
    :cond_1
    const-string v9, "portrait"

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 317
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    iget-boolean v0, v0, Lcom/openfeint/internal/ui/WebNav;->mIsFrameworkLoaded:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->loadInitialContent()V

    .line 335
    :goto_0
    return-void

    .line 320
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Feint couldn\'t initialize\nWould you like to send a crash report?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lcom/openfeint/internal/ui/WebNav$WebNavClient$2;

    invoke-direct {v2, p0}, Lcom/openfeint/internal/ui/WebNav$WebNavClient$2;-><init>(Lcom/openfeint/internal/ui/WebNav$WebNavClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Yes"

    new-instance v2, Lcom/openfeint/internal/ui/WebNav$WebNavClient$1;

    invoke-direct {v2, p0}, Lcom/openfeint/internal/ui/WebNav$WebNavClient$1;-><init>(Lcom/openfeint/internal/ui/WebNav$WebNavClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->hideLoader(Ljava/util/Map;)V

    .line 313
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "stringUrl"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 293
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 302
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 296
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "openfeint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->dispatch(Landroid/net/Uri;)V

    goto :goto_0

    .line 299
    :cond_2
    const-string v1, "WebUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNHANDLED PROTOCOL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
