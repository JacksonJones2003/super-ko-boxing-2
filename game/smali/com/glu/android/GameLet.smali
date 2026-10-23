.class public Lcom/glu/android/GameLet;
.super Landroid/app/Activity;
.source "GameLet.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field public static final AA_URL:Ljava/lang/String; = "Glu-AA-URL"

.field public static final ADS_APP_NAME:Ljava/lang/String; = "Super KO Boxing 2"

.field public static final ADS_CHANNEL:Ljava/lang/String; = "4428854747"

.field public static final ADS_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

.field public static final AD_EVENT_HIDE:I = 0x1

.field public static final AD_EVENT_SHOW_LARGE:I = 0x3

.field public static final AD_EVENT_SHOW_SMALL:I = 0x2

.field public static final CHOICE_NEVER:I = 0x1

.field public static final CHOICE_NOT_NOW:I = 0x0

.field public static final CHOICE_YES:I = 0x2

.field public static final DOWNLOAD_STATUS_FILENAME:Ljava/lang/String; = "dlstatus.dat"

.field public static final GL_DEPTH_SIZE:I = 0x0

.field public static final GL_STENCIL_SIZE:I = 0x0

.field public static final HANDLER_MESSAGE_LOAD_RESOURCES:I = 0x2

.field public static final HANDLER_MESSAGE_START_GAME:I = 0x1

.field public static final LIBRARY:Ljava/lang/String; = "/data/data/com.glu.android.skob2/lib/libskob2V2.so"

.field public static final LIBRARY_FREE:Ljava/lang/String; = "/data/data/com.glu.android.skob2_free/lib/libskob2V2.so"

.field public static final LIBRARY_FREE_V1:Ljava/lang/String; = "/data/data/com.glu.android.skob2_free/lib/libskob2.so"

.field public static final LIBRARY_LOWEND:Ljava/lang/String; = "/data/data/com.glu.android.skob2/lib/libskob2r.so"

.field public static final LIBRARY_V1:Ljava/lang/String; = "/data/data/com.glu.android.skob2/lib/libskob2.so"

.field public static final MORE_GAMES_ENABLED:Ljava/lang/String; = "Glu-Upsell-Enabled"

.field public static final MORE_GAMES_URL:Ljava/lang/String; = "Glu-Upsell-URL"

.field public static final NATIVE_PROPERTIES_FILENAME:Ljava/lang/String; = "properties.dat"

.field public static final ONLY_PROCESS_MENU_AND_BACK_KEYS:Z = true

.field public static final RES_FILE_URL_PROPERTY_KEY:Ljava/lang/String; = "Glu-Res-File-URL"

.field public static final SDCARD_RESOURCE_FILE_LOCATION:Ljava/lang/String; = "/sdcard/glu/skob2"

.field public static final TEMP_FILENAME:Ljava/lang/String; = "skob2_temp"

.field public static final UPGRADE_STATUS_FILENAME:Ljava/lang/String; = "upgradeStatus.dat"

.field public static final UPGRADE_URL:Ljava/lang/String; = "Glu-Demo-URL"

.field public static final USE_ACCELEROMETER:Z = true

.field public static buildV1:Z

.field public static extensionsQueried:Z

.field public static instance:Lcom/glu/android/GameLet;

.field private static is_xperia:Z

.field public static lastUpgradeChoice:I

.field public static m_doScale:Z

.field public static m_locale:Ljava/lang/String;

.field public static m_realHeight:I

.field public static m_realWidth:I

.field private static numLaunches:I

.field public static numTimesAskedForUpgrade:I

.field public static recreateContext:Z

.field public static supportsAtitcCompression:Z

.field private static xperia_verified:Z


# instance fields
.field ID:I

.field public destroyedFromAndroid:Z

.field public destroyedFromNative:Z

.field public dialog:Landroid/app/Dialog;

.field private dialogRun:Ljava/lang/Runnable;

.field public gameView:Lcom/glu/android/GluView;

.field public initialMenuView:Lcom/glu/android/ResFileDownloadView;

.field public m_JNIinit:Z

.field public m_adStateFromGameHandler:Landroid/os/Handler;

.field public m_destroyQueued:Z

.field public m_nativeProperties:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m_nativeSuspended:Z

.field public m_startGameHandler:Landroid/os/Handler;

.field vcastDemoEnabled:Z

.field vcastFailed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 50
    const-string v0, "glujni"

    invoke-static {v0}, Lcom/glu/android/ZbEmbed;->loadLibrary(Ljava/lang/String;)V

    .line 53
    sput-boolean v1, Lcom/glu/android/GameLet;->supportsAtitcCompression:Z

    .line 54
    sput-boolean v1, Lcom/glu/android/GameLet;->extensionsQueried:Z

    .line 56
    sput-boolean v1, Lcom/glu/android/GameLet;->recreateContext:Z

    .line 85
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/glu/android/GameLet;->ADS_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

    .line 104
    sput v1, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    .line 105
    sput v1, Lcom/glu/android/GameLet;->numTimesAskedForUpgrade:I

    .line 117
    sput-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 124
    sput-boolean v1, Lcom/glu/android/GameLet;->buildV1:Z

    .line 165
    sput-object v3, Lcom/glu/android/GameLet;->m_locale:Ljava/lang/String;

    .line 167
    const/4 v0, 0x1

    sput-boolean v0, Lcom/glu/android/GameLet;->m_doScale:Z

    .line 168
    sput v2, Lcom/glu/android/GameLet;->m_realWidth:I

    .line 169
    sput v2, Lcom/glu/android/GameLet;->m_realHeight:I

    .line 274
    sput-boolean v1, Lcom/glu/android/GameLet;->xperia_verified:Z

    .line 275
    sput-boolean v1, Lcom/glu/android/GameLet;->is_xperia:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    iput-boolean v1, p0, Lcom/glu/android/GameLet;->m_JNIinit:Z

    .line 112
    iput-boolean v1, p0, Lcom/glu/android/GameLet;->m_destroyQueued:Z

    .line 115
    iput-object v0, p0, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    .line 116
    iput-object v0, p0, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResFileDownloadView;

    .line 120
    iput-boolean v1, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    .line 121
    iput-boolean v1, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    .line 122
    iput-boolean v1, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    .line 127
    iput-object v0, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    .line 551
    new-instance v0, Lcom/glu/android/GameLet$2;

    invoke-direct {v0, p0}, Lcom/glu/android/GameLet$2;-><init>(Lcom/glu/android/GameLet;)V

    iput-object v0, p0, Lcom/glu/android/GameLet;->m_startGameHandler:Landroid/os/Handler;

    .line 560
    new-instance v0, Lcom/glu/android/GameLet$3;

    invoke-direct {v0, p0}, Lcom/glu/android/GameLet$3;-><init>(Lcom/glu/android/GameLet;)V

    iput-object v0, p0, Lcom/glu/android/GameLet;->m_adStateFromGameHandler:Landroid/os/Handler;

    .line 847
    new-instance v0, Lcom/glu/android/GameLet$5;

    invoke-direct {v0, p0}, Lcom/glu/android/GameLet$5;-><init>(Lcom/glu/android/GameLet;)V

    iput-object v0, p0, Lcom/glu/android/GameLet;->dialogRun:Ljava/lang/Runnable;

    .line 858
    iput-boolean v1, p0, Lcom/glu/android/GameLet;->vcastDemoEnabled:Z

    .line 859
    iput-boolean v1, p0, Lcom/glu/android/GameLet;->vcastFailed:Z

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/glu/android/GameLet;->numLaunches:I

    return v0
.end method

.method public static checkConfig(Landroid/content/res/Configuration;)V
    .locals 5
    .param p0, "c"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v4, -0x539

    .line 287
    invoke-static {}, Lcom/glu/android/GameLet;->isXperia()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const/4 v1, 0x0

    .line 292
    .local v1, "navHidden":I
    :try_start_0
    const-string v2, "android.content.res.Configuration"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "navigationHidden"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 294
    .local v0, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 299
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :goto_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 301
    invoke-static {v4}, Lcom/glu/android/GluJNI;->keyReleased(I)V

    .line 307
    .end local v1    # "navHidden":I
    :cond_0
    :goto_1
    return-void

    .line 302
    .restart local v1    # "navHidden":I
    :cond_1
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 304
    invoke-static {v4}, Lcom/glu/android/GluJNI;->keyPressed(I)V

    goto :goto_1

    .line 295
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getAccelerometer()V
    .locals 3

    .prologue
    .line 503
    const-string v1, "Registering sensor listeners..."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 505
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 509
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 510
    const-string v1, "Failed to register listener for ORIENTATION."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 513
    :cond_0
    return-void
.end method

.method public static incrementTimesAskedForUpgrade()V
    .locals 1

    .prologue
    .line 806
    sget v0, Lcom/glu/android/GameLet;->numTimesAskedForUpgrade:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    sput v0, Lcom/glu/android/GameLet;->numTimesAskedForUpgrade:I

    .line 807
    return-void
.end method

.method private isLowEndBuildRequired()V
    .locals 2

    .prologue
    .line 533
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "bahamas"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-static {}, Lcom/glu/android/GluJNI;->setLowEndBuild()V

    .line 535
    :cond_0
    return-void
.end method

.method public static isXperia()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 277
    sget-boolean v0, Lcom/glu/android/GameLet;->xperia_verified:Z

    if-nez v0, :cond_0

    .line 278
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony Ericsson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "R800"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/glu/android/GameLet;->is_xperia:Z

    .line 279
    sput-boolean v2, Lcom/glu/android/GameLet;->xperia_verified:Z

    .line 282
    :cond_0
    sget-boolean v0, Lcom/glu/android/GameLet;->is_xperia:Z

    return v0

    .line 278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadNumLaunches()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 379
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "aa.dat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "filename":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 382
    sput v6, Lcom/glu/android/GameLet;->numLaunches:I

    .line 383
    const-string v4, "no exising prompt count"

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    move v4, v6

    .line 396
    :goto_0
    return v4

    .line 388
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 389
    .local v0, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    sput v4, Lcom/glu/android/GameLet;->numLaunches:I

    .line 390
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    const/4 v4, 0x1

    goto :goto_0

    .line 391
    .end local v0    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 392
    .local v1, "ex":Ljava/lang/Exception;
    sput v6, Lcom/glu/android/GameLet;->numLaunches:I

    .line 393
    const-string v4, "exception"

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    move v4, v6

    .line 394
    goto :goto_0
.end method

.method private releaseAccelerometer()V
    .locals 2

    .prologue
    .line 518
    const-string v1, "unRegistering sensor listeners..."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 520
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 524
    .local v0, "sensorManager":Landroid/hardware/SensorManager;
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 525
    const-string v1, "unregistered listener for ORIENTATION."

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 528
    return-void
.end method

.method public static saveNumLaunches()V
    .locals 6

    .prologue
    .line 367
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "aa.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v0, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 370
    .local v0, "dos":Ljava/io/DataOutputStream;
    sget v3, Lcom/glu/android/GameLet;->numLaunches:I

    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 371
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .end local v0    # "dos":Ljava/io/DataOutputStream;
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 373
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving upgrade status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private vcastValidator()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "Glu-VCAST-Keyword"

    .line 865
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v3, v3, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v4, "Glu-VCAST-Keyword"

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 866
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v3, v3, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v4, "Glu-VCAST-Keyword"

    invoke-virtual {v3, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 870
    .local v2, "vcastKeyword":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/glu/android/GluVCAST;

    invoke-direct {v0, v2, p0}, Lcom/glu/android/GluVCAST;-><init>(Ljava/lang/String;Lcom/glu/android/GameLet;)V

    .line 871
    .local v0, "gluVCAST":Lcom/glu/android/GluVCAST;
    invoke-virtual {v0}, Lcom/glu/android/GluVCAST;->validateLicense()I

    move-result v1

    .line 875
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 877
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/glu/android/GameLet;->vcastDemoEnabled:Z

    .line 889
    :goto_1
    return-void

    .line 868
    .end local v0    # "gluVCAST":Lcom/glu/android/GluVCAST;
    .end local v1    # "status":I
    .end local v2    # "vcastKeyword":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    .restart local v2    # "vcastKeyword":Ljava/lang/String;
    goto :goto_0

    .line 880
    .restart local v0    # "gluVCAST":Lcom/glu/android/GluVCAST;
    .restart local v1    # "status":I
    :cond_1
    if-ne v1, v5, :cond_2

    .line 882
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v3, v3, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v4, "Glu-Demo-Enabled"

    const-string v5, "true"

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 886
    :cond_2
    iput-boolean v5, p0, Lcom/glu/android/GameLet;->vcastFailed:Z

    .line 887
    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->sendMsg(I)V

    goto :goto_1
.end method


# virtual methods
.method public createSurfaceView()V
    .locals 3

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 200
    .local v0, "_display":Landroid/view/Display;
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->setContentView(I)V

    .line 201
    const/high16 v1, 0x7f090000

    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/glu/android/GluView;

    iput-object v1, p0, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    .line 202
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/glu/android/GluAds;->createAdSpec(II)V

    .line 203
    invoke-static {}, Lcom/glu/android/GluAds;->createGameViewAds()V

    .line 204
    invoke-static {}, Lcom/glu/android/GluOpenFeint;->initialize()V

    .line 205
    iget-object v1, p0, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    invoke-virtual {v1}, Lcom/glu/android/GluView;->init()V

    .line 206
    iget-object v1, p0, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    invoke-virtual {v1}, Lcom/glu/android/GluView;->requestFocus()Z

    .line 209
    invoke-static {}, Lcom/glu/android/GameLet;->loadNumLaunches()Z

    .line 210
    sget v1, Lcom/glu/android/GameLet;->numLaunches:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/glu/android/GameLet;->numLaunches:I

    .line 211
    invoke-static {}, Lcom/glu/android/GameLet;->saveNumLaunches()V

    .line 213
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->submitAnalytics()V

    .line 214
    return-void
.end method

.method public finishApp()V
    .locals 1

    .prologue
    .line 718
    const-string v0, "finishApp() called"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 720
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->finish()V

    .line 721
    return-void
.end method

.method public fixDirectoryPaths()V
    .locals 9

    .prologue
    .line 768
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getOldLocalSaveDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    .local v3, "oldDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 771
    .local v2, "newDir":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Save dir: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 773
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 775
    const-string v5, "Serious error: Cannot create a local save directory!"

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 802
    :cond_0
    return-void

    .line 779
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 781
    .local v0, "files":[Ljava/io/File;
    array-length v5, v0

    if-lez v5, :cond_2

    .line 782
    const-string v5, "Old location for save files found. Moving..."

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 784
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    .line 786
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 784
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 790
    :cond_3
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 791
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 794
    :cond_4
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/GluUtil;->getRelativeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 796
    .local v4, "relativeFilename":Ljava/lang/String;
    aget-object v5, v0, v1

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5, v6}, Lcom/glu/android/GluUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 797
    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 799
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " copy failed somehow..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getDeviceLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 154
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "locale":Ljava/lang/String;
    const-string v1, "pt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "br"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string v0, "ptbr"

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Locale found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   country="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 162
    return-object v0
.end method

.method public loadExtensionsView()V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-direct {v0, p0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "mGLView":Landroid/opengl/GLSurfaceView;
    new-instance v1, Lcom/glu/android/ClearRenderer;

    invoke-direct {v1}, Lcom/glu/android/ClearRenderer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/glu/android/GameLet;->setContentView(Landroid/view/View;)V

    .line 222
    return-void
.end method

.method public loadGame()V
    .locals 3

    .prologue
    const/16 v2, 0x400

    .line 174
    new-instance v1, Lcom/glu/android/DeviceSound;

    invoke-direct {v1}, Lcom/glu/android/DeviceSound;-><init>()V

    .line 176
    invoke-static {p0}, Lcom/glu/android/Debug;->printPathFiles(Lcom/glu/android/GameLet;)V

    .line 182
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getDeviceLocale()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/glu/android/GameLet;->m_locale:Ljava/lang/String;

    .line 184
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 185
    .local v0, "_window":Landroid/view/Window;
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 194
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->createSurfaceView()V

    .line 195
    return-void
.end method

.method public loadResourceMenu()V
    .locals 4

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 230
    .local v0, "_display":Landroid/view/Display;
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->setContentView(I)V

    .line 231
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/glu/android/ResFileDownloadView;

    iput-object v1, p0, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResFileDownloadView;

    .line 232
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/glu/android/GluAds;->createAdSpec(II)V

    .line 233
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/glu/android/GluAds;->createAds(II)V

    .line 234
    iget-object v1, p0, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResFileDownloadView;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/glu/android/ResFileDownloadView;->init(II)V

    .line 235
    iget-object v1, p0, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResFileDownloadView;

    invoke-virtual {v1}, Lcom/glu/android/ResFileDownloadView;->requestFocus()Z

    .line 236
    const-string v1, "showing resoure view"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public makeJNILink()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 242
    const-string v0, "/data/data/com.glu.android.skob2_free/lib/libskob2V2.so"
    invoke-static {v0}, Lcom/glu/android/ZbEmbed;->mapLibPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0

    .line 243
    .local v0, "libName":Ljava/lang/String;
    invoke-static {}, Lcom/glu/android/ResFileDownloadView;->resourceFileV1Exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    sput-boolean v4, Lcom/glu/android/GameLet;->buildV1:Z

    .line 246
    const-string v0, "/data/data/com.glu.android.skob2_free/lib/libskob2.so"
    invoke-static {v0}, Lcom/glu/android/ZbEmbed;->mapLibPath(Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0

    .line 249
    :cond_0
    invoke-static {v0}, Lcom/glu/android/GluUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    sget-boolean v3, Lcom/glu/android/GameLet;->buildV1:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v2, v3}, Lcom/glu/android/GluJNI;->initJNILinkJ([BI)I

    move-result v1

    .line 251
    .local v1, "res":I
    if-eqz v1, :cond_2

    .line 253
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JNI link failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 249
    .end local v1    # "res":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 264
    .restart local v1    # "res":I
    :cond_2
    return-void
.end method

.method public moreGamesLaunch()V
    .locals 2

    .prologue
    .line 735
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v1, "Glu-Upsell-URL"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/glu/android/GameLet;->platformRequest(Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public nativeNotReady()Z
    .locals 1

    .prologue
    .line 725
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_destroyQueued:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_JNIinit:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nativeSuspended()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 1
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 657
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    :cond_0
    return-void
.end method

.method public onAdEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 568
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 569
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glu/android/GluAds;->setAdState(I)V

    .line 576
    :goto_0
    return-void

    .line 570
    :cond_0
    if-ne p1, v1, :cond_1

    .line 571
    invoke-static {v1}, Lcom/glu/android/GluAds;->setAdState(I)V

    goto :goto_0

    .line 572
    :cond_1
    if-ne p1, v2, :cond_2

    .line 573
    invoke-static {v2}, Lcom/glu/android/GluAds;->setAdState(I)V

    goto :goto_0

    .line 575
    :cond_2
    const-string v0, "Invalid ad event received."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    invoke-static {}, Lcom/glu/android/GameLet;->isXperia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    invoke-static {p1}, Lcom/glu/android/GameLet;->checkConfig(Landroid/content/res/Configuration;)V

    .line 272
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const-string v6, "Glu-VCAST-Enabled"

    const-string v5, "Glu-Res-File-URL"

    .line 312
    const-string v1, "~~ onCreate"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 313
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 319
    sput-object p0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 320
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->fixDirectoryPaths()V

    .line 321
    invoke-static {}, Lcom/glu/android/GluUtil;->createRandomizer()V

    .line 322
    sput-object p0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 323
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 324
    .local v0, "_window":Landroid/view/Window;
    invoke-virtual {p0, v4}, Lcom/glu/android/GameLet;->requestWindowFeature(I)Z

    .line 327
    invoke-static {}, Lcom/glu/android/GluUtil;->copyPropertiesFileToCache()V

    .line 328
    invoke-static {}, Lcom/glu/android/GluUtil;->getNativeProperties()Ljava/util/Hashtable;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    .line 333
    iget-object v1, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v2, "Glu-Res-File-URL"

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 334
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Critical key: Glu-Res-File-URL missing!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resource URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v3, "Glu-Res-File-URL"

    invoke-virtual {v1, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v2, "Glu-VCAST-Enabled"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v2, "Glu-VCAST-Enabled"

    invoke-virtual {v1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/glu/android/GameLet;->vcastValidator()V

    .line 340
    iget-boolean v1, p0, Lcom/glu/android/GameLet;->vcastFailed:Z

    if-eqz v1, :cond_2

    .line 362
    :goto_0
    return-void

    .line 345
    :cond_2
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->makeJNILink()V

    .line 346
    invoke-direct {p0}, Lcom/glu/android/GameLet;->isLowEndBuildRequired()V

    .line 348
    sget-boolean v1, Lcom/glu/android/GameLet;->buildV1:Z

    if-eqz v1, :cond_4

    .line 350
    invoke-static {}, Lcom/glu/android/GluUtil;->loadUpgradeStatus()Z

    move-result v1

    if-eqz v1, :cond_4

    sget v1, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    if-eq v1, v4, :cond_3

    sget v1, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    if-nez v1, :cond_4

    sget v1, Lcom/glu/android/GameLet;->numTimesAskedForUpgrade:I

    rem-int/lit8 v1, v1, 0x5

    if-eqz v1, :cond_4

    .line 353
    :cond_3
    invoke-static {}, Lcom/glu/android/GameLet;->incrementTimesAskedForUpgrade()V

    .line 354
    invoke-static {}, Lcom/glu/android/GluUtil;->saveUpgradeStatus()V

    .line 355
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->startGame()V

    goto :goto_0

    .line 359
    :cond_4
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->loadExtensionsView()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 814
    iget-object v2, p0, Lcom/glu/android/GameLet;->dialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    .line 815
    iget-object v2, p0, Lcom/glu/android/GameLet;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 817
    :cond_0
    const-string v1, ""

    .line 819
    .local v1, "text":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 821
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while validating license.\nErrorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    :goto_0
    const-string v2, "Ok"

    new-instance v3, Lcom/glu/android/GameLet$4;

    invoke-direct {v3, p0}, Lcom/glu/android/GameLet$4;-><init>(Lcom/glu/android/GameLet;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 842
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 843
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/glu/android/GameLet;->dialog:Landroid/app/Dialog;

    .line 844
    iget-object v2, p0, Lcom/glu/android/GameLet;->dialog:Landroid/app/Dialog;

    return-object v2

    .line 824
    :pswitch_0
    const-string v1, "This item is not available for your device or no longer available in the V Cast Apps catalog.\nApplication will now exit"

    .line 825
    goto :goto_0

    .line 827
    :pswitch_1
    const-string v1, "You have not purchased this application\tor purchase period has expired. Launch V Cast Apps client to purchase.\nApplication will now exit "

    .line 828
    goto :goto_0

    .line 821
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 625
    const-string v0, "~~ onDestroy"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 627
    invoke-direct {p0}, Lcom/glu/android/GameLet;->releaseAccelerometer()V

    .line 629
    invoke-static {}, Lcom/glu/android/GluUtil;->saveDownloadResumeStatus()V

    .line 631
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-boolean v0, v0, Lcom/glu/android/GameLet;->m_JNIinit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    if-nez v0, :cond_0

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromAndroid:Z

    .line 635
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    .line 638
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 639
    return-void
.end method

.method public onNativeDestroyed()V
    .locals 1

    .prologue
    .line 702
    const-string v0, "~~ onNativeDestroyed"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->destroyedFromNative:Z

    .line 706
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->finishApp()V

    .line 707
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v0, 0x1
    invoke-static {v0}, Lcom/glu/android/MusicPlayer;->onActivityPause(Z)V
    const/4 v1, 0x1

    .line 584
    const-string v0, "~~ onPause"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 585
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 587
    invoke-direct {p0}, Lcom/glu/android/GameLet;->releaseAccelerometer()V

    .line 588
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    if-nez v0, :cond_0

    .line 592
    iput-boolean v1, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    .line 594
    invoke-static {v1}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    .line 595
    iget-object v0, p0, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->onPause()V

    goto :goto_0
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 650
    const-string v0, "~~ onRestart"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 652
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 653
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-static {p0}, Lcom/glu/android/ResInstaller;->hideBars(Landroid/app/Activity;)V
    const/4 v0, 0x0
    invoke-static {v0}, Lcom/glu/android/MusicPlayer;->onActivityPause(Z)V

    .prologue
    .line 602
    const-string v0, "~~ onResume"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 603
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 605
    invoke-direct {p0}, Lcom/glu/android/GameLet;->getAccelerometer()V

    .line 606
    invoke-virtual {p0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    iget-boolean v0, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    if-eqz v0, :cond_0

    .line 610
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/glu/android/GameLet;->onAdEvent(I)V

    .line 611
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_nativeSuspended:Z

    .line 617
    invoke-direct {p0}, Lcom/glu/android/GameLet;->getAccelerometer()V

    .line 618
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/glu/android/GluJNI;->systemEvent(I)V

    .line 619
    iget-object v0, p0, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    invoke-virtual {v0}, Lcom/glu/android/GluView;->onResume()V

    goto :goto_0
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/high16 v11, 0x42b40000    # 90.0f

    const/4 v10, 0x1

    const/high16 v9, 0x43340000    # 180.0f

    const/4 v8, 0x2

    .line 664
    sget-object v6, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v6}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 698
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v6, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    .line 667
    .local v4, "sensorType":I
    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 669
    .local v5, "values":[F
    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 676
    aget v0, v5, v8

    .line 677
    .local v0, "baseVal0":F
    aget v6, v5, v10

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v11

    if-lez v6, :cond_2

    .line 678
    aget v6, v5, v8

    const/4 v7, 0x0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_3

    const/high16 v6, -0x3d4c0000    # -90.0f

    aget v7, v5, v8

    add-float/2addr v7, v11

    sub-float/2addr v6, v7

    move v0, v6

    .line 686
    :cond_2
    :goto_1
    div-float v6, v0, v9

    invoke-static {v6}, Lcom/glu/android/GluUtil;->floatToFixed(F)I

    move-result v1

    .line 687
    .local v1, "nativeX":I
    aget v6, v5, v10

    div-float/2addr v6, v9

    invoke-static {v6}, Lcom/glu/android/GluUtil;->floatToFixed(F)I

    move-result v2

    .line 688
    .local v2, "nativeY":I
    const/4 v3, 0x0

    .line 690
    .local v3, "nativeZ":I
    invoke-static {v1, v2, v3}, Lcom/glu/android/GluJNI;->reportAccelerometerPosition(III)V

    goto :goto_0

    .line 678
    .end local v1    # "nativeX":I
    .end local v2    # "nativeY":I
    .end local v3    # "nativeZ":I
    :cond_3
    aget v6, v5, v8

    sub-float v6, v9, v6

    move v0, v6

    goto :goto_1

    .line 694
    .end local v0    # "baseVal0":F
    :cond_4
    if-ne v4, v10, :cond_0

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 579
    const-string v0, "~~ onStart"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 580
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 581
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 643
    const-string v0, "~~ onStop"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 645
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 646
    return-void
.end method

.method public platformRequest(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 748
    if-nez p1, :cond_0

    .line 764
    :goto_0
    return-void

    .line 750
    :cond_0
    const-string v3, "calling platorm request"

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 753
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 754
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 755
    .local v1, "i":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 756
    invoke-virtual {p0, v1}, Lcom/glu/android/GameLet;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    .end local v1    # "i":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 760
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queueDestroy()V
    .locals 1

    .prologue
    .line 711
    const-string v0, "~~ queueDestroy"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/GameLet;->m_destroyQueued:Z

    .line 714
    return-void
.end method

.method public sendMsg(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 854
    iput p1, p0, Lcom/glu/android/GameLet;->ID:I

    .line 855
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_startGameHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/glu/android/GameLet;->dialogRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 856
    return-void
.end method

.method public showResView()V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_startGameHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 546
    return-void
.end method

.method public startGame()V
    .locals 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/glu/android/GameLet;->m_startGameHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 541
    return-void
.end method

.method public submitAnalytics()V
    .locals 1

    .prologue
    .line 403
    new-instance v0, Lcom/glu/android/GameLet$1;

    invoke-direct {v0, p0}, Lcom/glu/android/GameLet$1;-><init>(Lcom/glu/android/GameLet;)V

    invoke-virtual {v0}, Lcom/glu/android/GameLet$1;->start()V

    .line 498
    return-void
.end method

.method public upgradeLaunch()V
    .locals 2

    .prologue
    .line 741
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v1, "Glu-Demo-URL"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/glu/android/GameLet;->platformRequest(Ljava/lang/String;)V

    .line 742
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V
    if-eqz p1, :cond_x
    invoke-static {p0}, Lcom/glu/android/ResInstaller;->hideBars(Landroid/app/Activity;)V
    :cond_x
    return-void
.end method
