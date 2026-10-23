.class public Lcom/openfeint/internal/ui/WebViewCache;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;,
        Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;,
        Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;,
        Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;,
        Lcom/openfeint/internal/ui/WebViewCache$ManifestData;,
        Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WebViewCache"

.field static copyBuffer:[B = null

.field static final kClientManifestReady:I = 0x2

.field static final kDataLoaded:I = 0x1

.field static final kManifestLoaded:I

.field static loadingBuffer:[B

.field static loadingFinished:Z

.field public static manifestPrefixOverride:Ljava/lang/String;

.field static sInstance:Lcom/openfeint/internal/ui/WebViewCache;

.field public static serverOverride:Ljava/net/URI;


# instance fields
.field appContext:Landroid/content/Context;

.field clientManifest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field delegate:Lcom/openfeint/internal/ui/WebViewCacheCallback;

.field mHandler:Landroid/os/Handler;

.field manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

.field pathsToLoad:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field prioritizedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final serverURI:Ljava/net/URI;

.field storeHelper:Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;

.field trackedItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;",
            ">;"
        }
    .end annotation
.end field

.field trackedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x4000

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    .line 613
    new-array v0, v1, [B

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache;->copyBuffer:[B

    .line 614
    new-array v0, v1, [B

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache;->loadingBuffer:[B

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "_appContext"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getServerURI()Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->serverURI:Ljava/net/URI;

    .line 253
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    .line 254
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    .line 256
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    .line 257
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    .line 258
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->storeHelper:Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;

    .line 260
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$1;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache$1;-><init>(Lcom/openfeint/internal/ui/WebViewCache;)V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    .line 283
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->copyDefaultItems()V

    .line 285
    return-void
.end method

.method static synthetic access$000(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$ManifestData;)V
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/ui/WebViewCache;
    .param p1, "x1"    # Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/openfeint/internal/ui/WebViewCache;->loadedManifest(Lcom/openfeint/internal/ui/WebViewCache$ManifestData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/ui/WebViewCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebViewCache;->finishItem(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/ui/WebViewCache;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->sync()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getManifestPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/openfeint/internal/ui/WebViewCache;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/ui/WebViewCache;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/openfeint/internal/ui/WebViewCache;->copyDefaultBackground(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$500(Lcom/openfeint/internal/ui/WebViewCache;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/openfeint/internal/ui/WebViewCache;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/openfeint/internal/ui/WebViewCache;->submitToSQL([Ljava/lang/String;)V

    return-void
.end method

.method private copyDefaultBackground(Ljava/io/File;)V
    .locals 10
    .param p1, "baseDir"    # Ljava/io/File;

    .prologue
    const-string v9, "webui/images/loading.spinner.mdpi.png"

    const-string v8, "webui/images/loading.spinner.hdpi.png"

    const-string v7, "webui/images/header_bg.mdpi.png"

    const-string v6, "webui/images/header_bg.hdpi.png"

    .line 395
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 396
    .local v0, "defaultItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v4, "webui"

    invoke-direct {p0, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->gatherDefaultItems(Ljava/lang/String;Ljava/util/Set;)V

    .line 397
    invoke-direct {p0, v0}, Lcom/openfeint/internal/ui/WebViewCache;->stripUnused(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 398
    const-string v4, "webui/manifest.plist"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 399
    const-string v4, "webui/javascripts/"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copyDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 400
    const-string v4, "webui/stylesheets/"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copyDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 401
    const-string v4, "webui/intro/"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copyDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 402
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getDpiName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mdpi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    const-string v4, "webui/images/space.grid.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 404
    const-string v4, "webui/images/button.gray.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 405
    const-string v4, "webui/images/button.gray.hit.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 406
    const-string v4, "webui/images/button.green.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 407
    const-string v4, "webui/images/button.green.hit.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 408
    const-string v4, "webui/images/logo.small.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 409
    const-string v4, "webui/images/header_bg.mdpi.png"

    invoke-direct {p0, p1, v7, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 410
    const-string v4, "webui/images/loading.spinner.mdpi.png"

    invoke-direct {p0, p1, v9, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 411
    const-string v4, "webui/images/input.text.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 412
    const-string v4, "webui/images/frame.small.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 413
    const-string v4, "webui/images/icon.leaf.gray.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 414
    const-string v4, "webui/images/tab.divider.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 415
    const-string v4, "webui/images/tab.active_indicator.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 417
    const-string v4, "webui/images/logo.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 418
    const-string v4, "webui/images/header_bg.mdpi.png"

    invoke-direct {p0, p1, v7, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 419
    const-string v4, "webui/images/loading.spinner.mdpi.png"

    invoke-direct {p0, p1, v9, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 420
    const-string v4, "webui/images/icon.user.male.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 421
    const-string v4, "webui/images/intro.leaderboards.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 422
    const-string v4, "webui/images/intro.friends.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 423
    const-string v4, "webui/images/intro.achievements.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 424
    const-string v4, "webui/images/intro.games.mdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 452
    :goto_0
    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 453
    .local v2, "msg":Landroid/os/Message;
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->getDefaultClientManifest()Ljava/util/Map;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 454
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 456
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 457
    .local v3, "path":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/openfeint/internal/ui/WebViewCache;->copySingleItem(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    .line 428
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "path":Ljava/lang/String;
    :cond_0
    const-string v4, "webui/images/space.grid.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 429
    const-string v4, "webui/images/button.gray.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 430
    const-string v4, "webui/images/button.gray.hit.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 431
    const-string v4, "webui/images/button.green.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 432
    const-string v4, "webui/images/button.green.hit.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 433
    const-string v4, "webui/images/logo.small.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 434
    const-string v4, "webui/images/header_bg.hdpi.png"

    invoke-direct {p0, p1, v6, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 435
    const-string v4, "webui/images/loading.spinner.hdpi.png"

    invoke-direct {p0, p1, v8, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 436
    const-string v4, "webui/images/input.text.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 437
    const-string v4, "webui/images/frame.small.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 438
    const-string v4, "webui/images/icon.leaf.gray.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 439
    const-string v4, "webui/images/tab.divider.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 440
    const-string v4, "webui/images/tab.active_indicator.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 442
    const-string v4, "webui/images/logo.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 443
    const-string v4, "webui/images/header_bg.hdpi.png"

    invoke-direct {p0, p1, v6, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 444
    const-string v4, "webui/images/loading.spinner.hdpi.png"

    invoke-direct {p0, p1, v8, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 445
    const-string v4, "webui/images/icon.user.male.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 446
    const-string v4, "webui/images/intro.leaderboards.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 447
    const-string v4, "webui/images/intro.friends.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 448
    const-string v4, "webui/images/intro.achievements.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    .line 449
    const-string v4, "webui/images/intro.games.hdpi.png"

    invoke-direct {p0, p1, v4, v0}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    goto/16 :goto_0

    .line 459
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "msg":Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private copyDefaultItems()V
    .locals 4

    .prologue
    .line 462
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 464
    .local v0, "baseDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v3, "webui"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 465
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/openfeint/internal/ui/WebViewCache$3;

    invoke-direct {v2, p0, v0}, Lcom/openfeint/internal/ui/WebViewCache$3;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 470
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 475
    .end local v1    # "t":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->getDefaultClientManifest()Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    goto :goto_0
.end method

.method private copyDirectory(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "root"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p3, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 387
    .local v0, "dirItems":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 388
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 390
    .end local v2    # "path":Ljava/lang/String;
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "path":Ljava/lang/String;
    invoke-direct {p0, p1, v2, p3}, Lcom/openfeint/internal/ui/WebViewCache;->copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_1

    .line 391
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private copySingleItem(Ljava/io/File;Ljava/lang/String;)V
    .locals 9
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 348
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 349
    .local v2, "filePath":Ljava/io/File;
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 350
    .local v4, "inputStream":Ljava/io/InputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 352
    .local v5, "reader":Ljava/io/DataInputStream;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 353
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 354
    .local v3, "fileStream":Ljava/io/FileOutputStream;
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 357
    .local v6, "writer":Ljava/io/DataOutputStream;
    :goto_0
    sget-object v7, Lcom/openfeint/internal/ui/WebViewCache;->copyBuffer:[B

    invoke-virtual {v5, v7}, Ljava/io/DataInputStream;->read([B)I

    move-result v0

    .local v0, "count":I
    if-lez v0, :cond_0

    .line 358
    sget-object v7, Lcom/openfeint/internal/ui/WebViewCache;->copyBuffer:[B

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v0}, Ljava/io/DataOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 363
    .end local v0    # "count":I
    .end local v2    # "filePath":Ljava/io/File;
    .end local v3    # "fileStream":Ljava/io/FileOutputStream;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "reader":Ljava/io/DataInputStream;
    .end local v6    # "writer":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 364
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "WebViewCache"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 360
    .restart local v0    # "count":I
    .restart local v2    # "filePath":Ljava/io/File;
    .restart local v3    # "fileStream":Ljava/io/FileOutputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "reader":Ljava/io/DataInputStream;
    .restart local v6    # "writer":Ljava/io/DataOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 361
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private copySpecific(Ljava/io/File;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p3, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ui/WebViewCache;->copySingleItem(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    invoke-interface {p3, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 383
    :cond_0
    return-void
.end method

.method private deleteAll(Ljava/io/File;)V
    .locals 7
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 314
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "files":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 316
    .local v5, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/openfeint/internal/ui/WebViewCache;->deleteAll(Ljava/io/File;)V

    .line 315
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "files":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "name":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 321
    return-void
.end method

.method private finishItem(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 681
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;

    .line 682
    .local v2, "itemAndCb":Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
    iget-object v6, v2, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v6, v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 684
    .end local v2    # "itemAndCb":Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
    :cond_0
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 685
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v6, v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 686
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v6, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 689
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v6, v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 690
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 691
    .local v4, "pathsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;

    .line 692
    .restart local v2    # "itemAndCb":Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    iget-object v7, v2, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v7, v7, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v2, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v6, v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 693
    iget-object v6, v2, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v6, v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 694
    iget-object v6, v2, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    iget-object v7, v2, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v7, v7, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    goto :goto_1

    .line 697
    .end local v2    # "itemAndCb":Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
    :cond_2
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 698
    .local v5, "removePath":Ljava/lang/String;
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 703
    .end local v4    # "pathsToRemove":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5    # "removePath":Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_4

    .line 704
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v6, v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    iget-object v0, v6, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->hash:Ljava/lang/String;

    .line 710
    .local v0, "hashValue":Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    invoke-interface {v6, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v3, v6

    const/4 v6, 0x1

    aput-object v0, v3, v6

    .line 712
    .local v3, "params":[Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/openfeint/internal/ui/WebViewCache;->submitToSQL([Ljava/lang/String;)V

    .line 713
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->loadNextItem()V

    .line 714
    return-void

    .line 707
    .end local v0    # "hashValue":Ljava/lang/String;
    .end local v3    # "params":[Ljava/lang/String;
    :cond_4
    const-string v0, "FAILED"

    .restart local v0    # "hashValue":Ljava/lang/String;
    goto :goto_3
.end method

.method private gatherDefaultItems(Ljava/lang/String;Ljava/util/Set;)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, "items":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_0
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 327
    .local v7, "stuff":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v6, v0, v4

    .line 328
    .local v6, "s":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 330
    .local v3, "fullpath":Ljava/lang/String;
    :try_start_1
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 331
    .local v1, "check":Ljava/io/InputStream;
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    .end local v1    # "check":Ljava/io/InputStream;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 336
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    invoke-direct {p0, v3, p2}, Lcom/openfeint/internal/ui/WebViewCache;->gatherDefaultItems(Ljava/lang/String;Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 339
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fullpath":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "s":Ljava/lang/String;
    .end local v7    # "stuff":[Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v2, v8

    .line 340
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "WebViewCache"

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method private getDefaultClientManifest()Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    .line 502
    iget-object v13, p0, Lcom/openfeint/internal/ui/WebViewCache;->storeHelper:Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;

    invoke-virtual {v13}, Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 503
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v13, "SELECT * FROM manifest"

    invoke-virtual {v1, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 504
    .local v9, "result":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-lez v13, :cond_1

    .line 506
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 507
    .local v7, "outManifest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 509
    :cond_0
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 510
    .local v8, "path":Ljava/lang/String;
    const/4 v13, 0x1

    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 511
    .local v4, "hash":Ljava/lang/String;
    invoke-interface {v7, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_0

    .line 513
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v13, v7

    .line 539
    .end local v4    # "hash":Ljava/lang/String;
    .end local v7    # "outManifest":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "path":Ljava/lang/String;
    :goto_0
    return-object v13

    .line 517
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 519
    iget-object v13, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 520
    .local v0, "baseDir":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    const-string v13, "webui/manifest.plist"

    invoke-direct {v6, v0, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 521
    .local v6, "manifestFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 523
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v11

    .line 524
    .local v11, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v11}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v10

    .line 525
    .local v10, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v10}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v12

    .line 526
    .local v12, "xr":Lorg/xml/sax/XMLReader;
    new-instance v3, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;

    const/4 v13, 0x0

    invoke-direct {v3, p0, v13}, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$1;)V

    .line 527
    .local v3, "handler":Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;
    invoke-interface {v12, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 528
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 529
    .local v5, "inputStream":Ljava/io/InputStream;
    new-instance v13, Lorg/xml/sax/InputSource;

    invoke-direct {v13, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v12, v13}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 530
    invoke-virtual {v3}, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->getOutputMap()Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    goto :goto_0

    .line 532
    .end local v3    # "handler":Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v11    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v12    # "xr":Lorg/xml/sax/XMLReader;
    :catch_0
    move-exception v13

    move-object v2, v13

    .line 533
    .local v2, "e":Ljava/lang/Exception;
    const-string v13, "WebViewCache"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public static getDpiName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getInstance()Lcom/openfeint/internal/ui/WebViewCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebViewCache;->_getDpiName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance()Lcom/openfeint/internal/ui/WebViewCache;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    return-object v0
.end method

.method public static final getItemUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "itemPath"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getRootUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final getManifestPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 553
    const-string v0, "/webui/manifest/android"

    .line 555
    .local v0, "prefix":Ljava/lang/String;
    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->manifestPrefixOverride:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->manifestPrefixOverride:Ljava/lang/String;

    .line 557
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getDpiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static final getRootUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getInstance()Lcom/openfeint/internal/ui/WebViewCache;

    move-result-object v1

    iget-object v1, v1, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "webui"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .local v0, "rootDir":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static final getServerURI()Ljava/net/URI;
    .locals 3

    .prologue
    .line 544
    :try_start_0
    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->serverOverride:Ljava/net/URI;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/openfeint/internal/ui/WebViewCache;->serverOverride:Ljava/net/URI;

    .line 547
    :goto_0
    return-object v1

    .line 545
    :cond_0
    new-instance v1, Ljava/net/URI;

    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getServerUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 546
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/openfeint/internal/ui/WebViewCache;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    .line 48
    sget-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    return-object v0
.end method

.method public static isLoaded(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getInstance()Lcom/openfeint/internal/ui/WebViewCache;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache;->isLoadedInner(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isLoadedInner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    .line 249
    :goto_0
    return v0

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 249
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadNextItem()V
    .locals 5

    .prologue
    .line 617
    const/4 v1, 0x0

    .line 618
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 619
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 621
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 636
    .restart local v1    # "path":Ljava/lang/String;
    :goto_0
    move-object v0, v1

    .line 637
    .local v0, "finalPath":Ljava/lang/String;
    const-string v2, "WebViewCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Syncing item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-instance v2, Lcom/openfeint/internal/ui/WebViewCache$4;

    invoke-direct {v2, p0, v0}, Lcom/openfeint/internal/ui/WebViewCache$4;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/openfeint/internal/ui/WebViewCache$4;->launch()V

    .line 676
    .end local v0    # "finalPath":Ljava/lang/String;
    :goto_1
    return-void

    .line 624
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 625
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 627
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 628
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "path":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "path":Ljava/lang/String;
    goto :goto_0

    .line 632
    :cond_2
    const/4 v2, 0x1

    sput-boolean v2, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    goto :goto_1
.end method

.method private loadedManifest(Lcom/openfeint/internal/ui/WebViewCache$ManifestData;)V
    .locals 11
    .param p1, "_manifest"    # Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    .prologue
    .line 562
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    .line 563
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-eqz v7, :cond_6

    .line 565
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v7, v7, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 566
    .local v1, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    iget-object v7, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->hash:Ljava/lang/String;

    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    iget-object v9, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 567
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    iget-object v8, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 572
    .end local v1    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :cond_1
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 573
    .local v6, "removedPaths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;

    .line 574
    .local v4, "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    iget-object v8, v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 575
    iget-object v7, v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    iget-object v8, v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    .line 576
    iget-object v7, v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 580
    :cond_2
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v7, v7, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    iget-object v8, v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 581
    .restart local v1    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    new-instance v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    invoke-direct {v2, p0, v1}, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;)V

    .line 582
    .local v2, "newItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    iget-object v7, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 583
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    iget-object v8, v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    new-instance v9, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;

    iget-object v10, v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    invoke-direct {v9, p0, v2, v10}, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 586
    .end local v1    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v2    # "newItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v4    # "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    :cond_3
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 587
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v7, v7, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 590
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 591
    .local v5, "priorityDependents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 592
    .local v3, "path":Ljava/lang/String;
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 593
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v7, v7, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 594
    .restart local v1    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    if-eqz v1, :cond_4

    .line 595
    iget-object v7, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 598
    .end local v1    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v3    # "path":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v5, v7}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 599
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 601
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCache;->loadNextItem()V

    .line 611
    .end local v5    # "priorityDependents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "removedPaths":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_3
    return-void

    .line 605
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_6
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;

    .line 606
    .restart local v4    # "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    iget-object v7, v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    iget-object v8, v4, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    goto :goto_4

    .line 608
    .end local v4    # "pathAndCb":Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
    :cond_7
    iget-object v7, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->clear()V

    .line 609
    const/4 v7, 0x1

    sput-boolean v7, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    goto :goto_3
.end method

.method public static prioritize(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getInstance()Lcom/openfeint/internal/ui/WebViewCache;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache;->prioritizeInner(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method private prioritizeInner(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 717
    sget-boolean v2, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    if-eqz v2, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 718
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 719
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-eqz v2, :cond_0

    .line 721
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 722
    .local v0, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    if-eqz v0, :cond_0

    .line 723
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 726
    .local v1, "loadingDependents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 727
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->prioritizedPaths:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 728
    const-string v2, "WebViewCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prioritizing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " deps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static resync()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getInstance()Lcom/openfeint/internal/ui/WebViewCache;

    move-result-object v0

    .line 84
    .local v0, "instance":Lcom/openfeint/internal/ui/WebViewCache;
    sget-boolean v1, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    if-eqz v1, :cond_0

    invoke-direct {v0}, Lcom/openfeint/internal/ui/WebViewCache;->sync()V

    .line 85
    :cond_0
    return-void
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getInstance()Lcom/openfeint/internal/ui/WebViewCache;

    move-result-object v0

    iget-object v0, v0, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 78
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getInstance()Lcom/openfeint/internal/ui/WebViewCache;

    move-result-object v0

    invoke-direct {v0}, Lcom/openfeint/internal/ui/WebViewCache;->sync()V

    .line 80
    :cond_0
    return-void
.end method

.method private stripUnused(Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    .local p1, "table":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getDpiName()Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "currentDpi":Ljava/lang/String;
    const-string v5, "mdpi"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ".hdpi."

    move-object v4, v5

    .line 371
    .local v4, "test":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 372
    .local v3, "reducedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 373
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 370
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "path":Ljava/lang/String;
    .end local v3    # "reducedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "test":Ljava/lang/String;
    :cond_1
    const-string v5, ".mdpi."

    move-object v4, v5

    goto :goto_0

    .line 375
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "reducedSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "test":Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method private submitToSQL([Ljava/lang/String;)V
    .locals 4
    .param p1, "values"    # [Ljava/lang/String;

    .prologue
    .line 737
    :try_start_0
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->storeHelper:Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;

    invoke-virtual {v2}, Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 738
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "INSERT OR REPLACE INTO manifest VALUES(?, ?)"

    invoke-virtual {v0, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    return-void

    .line 741
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 742
    .local v1, "e":Landroid/database/SQLException;
    const-string v2, "SQL"

    invoke-virtual {v1}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sync()V
    .locals 2

    .prologue
    .line 288
    const-string v0, "WebViewCache"

    const-string v1, "--- WebViewCache Sync ---"

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    new-instance v0, Lcom/openfeint/internal/ui/WebViewCache$2;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache$2;-><init>(Lcom/openfeint/internal/ui/WebViewCache;)V

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebViewCache$2;->launch()V

    .line 309
    return-void
.end method

.method public static teardown()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/openfeint/internal/ui/WebViewCache;->sInstance:Lcom/openfeint/internal/ui/WebViewCache;

    .line 53
    return-void
.end method

.method public static trackPath(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "cb"    # Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .prologue
    .line 60
    invoke-static {}, Lcom/openfeint/internal/ui/WebViewCache;->getInstance()Lcom/openfeint/internal/ui/WebViewCache;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/WebViewCache;->trackPathInner(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z

    move-result v0

    return v0
.end method

.method private trackPathInner(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 218
    sget-boolean v2, Lcom/openfeint/internal/ui/WebViewCache;->loadingFinished:Z

    if-eqz v2, :cond_0

    .line 219
    invoke-virtual {p2, p1}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    move v2, v3

    .line 240
    :goto_0
    return v2

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    if-nez v2, :cond_1

    .line 223
    invoke-virtual {p2}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->onTrackingNeeded()V

    .line 224
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedPaths:Ljava/util/Set;

    new-instance v3, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;

    invoke-direct {v3, p0, p1, p2}, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v2, v4

    .line 225
    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->manifest:Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 229
    .local v0, "loadedItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    if-eqz v0, :cond_2

    .line 231
    invoke-virtual {p2}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->onTrackingNeeded()V

    .line 232
    new-instance v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    invoke-direct {v1, p0, v0}, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;)V

    .line 233
    .local v1, "newItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    iget-object v2, v1, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache;->pathsToLoad:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 234
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->trackedItems:Ljava/util/Map;

    new-instance v3, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;

    invoke-direct {v3, p0, v1, p2}, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    .line 235
    goto :goto_0

    .line 239
    .end local v1    # "newItem":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :cond_2
    invoke-virtual {p2, p1}, Lcom/openfeint/internal/ui/WebViewCacheCallback;->pathLoaded(Ljava/lang/String;)V

    move v2, v3

    .line 240
    goto :goto_0
.end method


# virtual methods
.method public _getDpiName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 200
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 201
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache;->appContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 202
    .local v1, "winMan":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 204
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x40000000    # 2.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 205
    const-string v2, "udpi"

    .line 209
    :goto_0
    return-object v2

    .line 206
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    .line 207
    const-string v2, "hdpi"

    goto :goto_0

    .line 209
    :cond_1
    const-string v2, "mdpi"

    goto :goto_0
.end method
