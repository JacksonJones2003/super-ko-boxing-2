.class public final Lcom/verizon/vcast/apps/LicenseAuthenticator;
.super Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;
.source "LicenseAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;
    }
.end annotation


# static fields
.field public static final ERROR_CONTENT_HANDLER:I = 0x64

.field public static final ERROR_GENERAL:I = 0x6a

.field public static final ERROR_ILLEGAL_ARGUMENT:I = 0x65

.field public static final ERROR_SECURITY:I = 0x66

.field public static final ERROR_UNABLE_TO_CONNECT_TO_CDS:I = 0x6b

.field public static final ITEM_NOT_FOUND:I = 0x33

.field public static final LICENSE_NOT_FOUND:I = 0x34

.field public static final LICENSE_OK:I = 0x0

.field public static final LICENSE_TRIAL_OK:I = 0x1

.field public static final LICENSE_VALIDATION_FAILED:I = 0x32


# instance fields
.field private volatile initLock:Ljava/lang/Object;

.field private volatile licenseService:Lcom/verizon/vcast/apps/IVCastAppsLicenseService;

.field private volatile licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

.field private serviceStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseService:Lcom/verizon/vcast/apps/IVCastAppsLicenseService;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->initLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->serviceStarted:Z

    .line 229
    return-void
.end method

.method static synthetic access$0(Lcom/verizon/vcast/apps/LicenseAuthenticator;Lcom/verizon/vcast/apps/IVCastAppsLicenseService;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseService:Lcom/verizon/vcast/apps/IVCastAppsLicenseService;

    return-void
.end method

.method static synthetic access$1(Lcom/verizon/vcast/apps/LicenseAuthenticator;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->initLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/verizon/vcast/apps/LicenseAuthenticator;Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

    return-void
.end method


# virtual methods
.method public declared-synchronized checkLicense(Ljava/lang/String;)I
    .locals 10
    .param p1, "keyword"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x64

    const-string v7, "checkLicense() finished.  Trying to shutDownLicenseService()"

    const-string v7, "LicenseAuthenticator"

    .line 256
    monitor-enter p0

    :try_start_0
    const-string v7, "LicenseAuthenticator"

    const-string v8, "begin checkLicense()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 260
    if-eqz p1, :cond_0

    :try_start_1
    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 318
    :cond_0
    :try_start_2
    const-string v7, "LicenseAuthenticator"

    const-string v8, "checkLicense() finished.  Trying to shutDownLicenseService()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->shutDownLicenseService()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    const/16 v7, 0x65

    .line 315
    :goto_0
    monitor-exit p0

    return v7

    .line 265
    :cond_1
    :try_start_3
    iget-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseService:Lcom/verizon/vcast/apps/IVCastAppsLicenseService;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_3

    .line 267
    :cond_2
    :try_start_4
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->initLicenseService()V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 278
    :cond_3
    :try_start_5
    iget-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseService:Lcom/verizon/vcast/apps/IVCastAppsLicenseService;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

    if-nez v7, :cond_5

    .line 279
    :cond_4
    const-string v7, "LicenseAuthenticator"

    const-string v8, "Failure connecting to remote service"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 318
    :try_start_6
    const-string v7, "LicenseAuthenticator"

    const-string v8, "checkLicense() finished.  Trying to shutDownLicenseService()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->shutDownLicenseService()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v7, v9

    .line 280
    goto :goto_0

    .line 268
    :catch_0
    move-exception v6

    .line 269
    .local v6, "se":Ljava/lang/SecurityException;
    :try_start_7
    const-string v7, "LicenseAuthenticator"

    const-string v8, "Security error connecting to remote service"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    const-string v7, "LicenseAuthenticator"

    const-string v8, "Likely cause: missing service permission. Required permissions:"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const-string v7, "LicenseAuthenticator"

    const-string v8, "  android.permission.READ_PHONE_STATE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v7, "LicenseAuthenticator"

    const-string v8, "  android.permission.START_BACKGROUND_SERVICE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v7, "LicenseAuthenticator"

    const-string v8, "  com.verizon.vcast.apps.VCAST_APPS_LICENSE_SERVICE"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 318
    :try_start_8
    const-string v7, "LicenseAuthenticator"

    const-string v8, "checkLicense() finished.  Trying to shutDownLicenseService()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->shutDownLicenseService()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 274
    const/16 v7, 0x66

    goto :goto_0

    .line 284
    .end local v6    # "se":Ljava/lang/SecurityException;
    :cond_5
    const/4 v0, 0x0

    :try_start_9
    check-cast v0, [B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 287
    .local v0, "bLicenseData":[B
    :try_start_a
    iget-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseService:Lcom/verizon/vcast/apps/IVCastAppsLicenseService;

    invoke-interface {v7, p1}, Lcom/verizon/vcast/apps/IVCastAppsLicenseService;->getLicense(Ljava/lang/String;)[B
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    .line 294
    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v3

    .line 296
    .local v3, "networkTime":J
    :try_start_c
    iget-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseService:Lcom/verizon/vcast/apps/IVCastAppsLicenseService;

    invoke-interface {v7}, Lcom/verizon/vcast/apps/IVCastAppsLicenseService;->getTime()J
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-wide v3

    .line 300
    :goto_1
    const-wide/16 v7, -0x1

    cmp-long v7, v3, v7

    if-nez v7, :cond_6

    .line 301
    :try_start_d
    const-string v7, "LicenseAuthenticator"

    const-string v8, "Failure to fetch network time from CDS servers"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 318
    :try_start_e
    const-string v7, "LicenseAuthenticator"

    const-string v8, "checkLicense() finished.  Trying to shutDownLicenseService()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->shutDownLicenseService()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 302
    const/16 v7, 0x6b

    goto/16 :goto_0

    .line 288
    .end local v3    # "networkTime":J
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 289
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_f
    const-string v7, "LicenseAuthenticator"

    const-string v8, "Error fetching license from remote service"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 318
    :try_start_10
    const-string v7, "LicenseAuthenticator"

    const-string v8, "checkLicense() finished.  Trying to shutDownLicenseService()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->shutDownLicenseService()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move v7, v9

    .line 290
    goto/16 :goto_0

    .line 297
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v3    # "networkTime":J
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 298
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_11
    const-string v7, "LicenseAuthenticator"

    const-string v8, "Error fetching network time from remote service"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_1

    .line 317
    .end local v0    # "bLicenseData":[B
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "networkTime":J
    :catchall_0
    move-exception v7

    .line 318
    :try_start_12
    const-string v8, "LicenseAuthenticator"

    const-string v9, "checkLicense() finished.  Trying to shutDownLicenseService()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->shutDownLicenseService()V

    .line 320
    throw v7
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 256
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 305
    .restart local v0    # "bLicenseData":[B
    .restart local v3    # "networkTime":J
    :cond_6
    :try_start_13
    invoke-virtual {p0, v3, v4}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->saveNetworkTime(J)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 308
    const/16 v5, 0x6a

    .line 310
    .local v5, "retVal":I
    :try_start_14
    invoke-virtual {p0, p1, v0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->checkLicenseData(Ljava/lang/String;[B)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result v5

    .line 318
    :goto_2
    :try_start_15
    const-string v7, "LicenseAuthenticator"

    const-string v8, "checkLicense() finished.  Trying to shutDownLicenseService()"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->shutDownLicenseService()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move v7, v5

    .line 315
    goto/16 :goto_0

    .line 311
    :catch_3
    move-exception v2

    .line 312
    .local v2, "e2":Ljava/lang/Exception;
    :try_start_16
    const-string v7, "LicenseAuthenticator"

    const-string v8, "Error validating license"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_2
.end method

.method public checkTestLicense(Ljava/lang/String;I)I
    .locals 0
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "returnVal"    # I

    .prologue
    .line 243
    return p2
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 211
    const-string v0, "LicenseAuthenticator"

    const-string v1, "finalize().  trying to shutDownLicenseService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->shutDownLicenseService()V

    .line 213
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 214
    return-void
.end method

.method protected initLicenseService()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const-string v4, "com.verizon.vcast.apps.VCastAppsLicenseService"

    const-string v4, "com.gravitymobile.app.hornbill"

    const-string v8, "LicenseAuthenticator"

    .line 167
    sget-object v4, Lcom/verizon/vcast/apps/LicenseAuthenticator;->callingContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 207
    :goto_0
    return-void

    .line 171
    :cond_0
    :try_start_0
    iget-boolean v4, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->serviceStarted:Z

    if-nez v4, :cond_1

    .line 173
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 174
    .local v1, "i":Landroid/content/Intent;
    const-string v4, "com.gravitymobile.app.hornbill"

    const-string v5, "com.verizon.vcast.apps.VCastAppsLicenseService"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    sget-object v4, Lcom/verizon/vcast/apps/LicenseAuthenticator;->callingContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 176
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->serviceStarted:Z

    .line 180
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v4, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v4, :cond_2

    .line 182
    :try_start_1
    sget-object v4, Lcom/verizon/vcast/apps/LicenseAuthenticator;->callingContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    :goto_1
    const/4 v4, 0x0

    :try_start_2
    iput-object v4, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

    .line 186
    :cond_2
    new-instance v4, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

    invoke-direct {v4, p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;-><init>(Lcom/verizon/vcast/apps/LicenseAuthenticator;)V

    iput-object v4, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

    .line 187
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v2, "i2":Landroid/content/Intent;
    const-string v4, "com.gravitymobile.app.hornbill"

    const-string v5, "com.verizon.vcast.apps.VCastAppsLicenseService"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    sget-object v4, Lcom/verizon/vcast/apps/LicenseAuthenticator;->callingContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 193
    iget-object v4, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->initLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 195
    :try_start_3
    iget-object v5, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->initLock:Ljava/lang/Object;

    const-wide/16 v6, 0x1f40

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    :goto_2
    :try_start_4
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 201
    .end local v2    # "i2":Landroid/content/Intent;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 202
    .local v3, "se":Ljava/lang/SecurityException;
    throw v3

    .line 196
    .end local v3    # "se":Ljava/lang/SecurityException;
    .restart local v2    # "i2":Landroid/content/Intent;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 197
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    const-string v5, "LicenseAuthenticator"

    const-string v6, "interrupted waiting to init license service"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 204
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "i2":Landroid/content/Intent;
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "LicenseAuthenticator"

    const-string v4, "initting license service failed"

    invoke-static {v8, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method protected shutDownLicenseService()V
    .locals 2

    .prologue
    .line 151
    const-string v0, "LicenseAuthenticator"

    const-string v1, "shutDownLicenseService()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->cleanupDB()V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->callingContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator;->licenseServiceConnection:Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method
