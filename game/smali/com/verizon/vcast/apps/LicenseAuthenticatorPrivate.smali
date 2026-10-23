.class public Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;
.super Ljava/lang/Object;
.source "LicenseAuthenticatorPrivate.java"


# static fields
.field public static final ERROR_CONTENT_HANDLER:I = 0x64

.field public static final ERROR_GENERAL:I = 0x6a

.field public static final ERROR_ILLEGAL_ARGUMENT:I = 0x65

.field public static final ERROR_SECURITY:I = 0x66

.field public static final ERROR_UNABLE_TO_CONNECT_TO_CDS:I = 0x6b

.field private static final GRACE_PERIOD:J = 0x5265c00L

.field public static final ITEM_NOT_FOUND:I = 0x33

.field public static final LICENSE_NOT_FOUND:I = 0x34

.field public static final LICENSE_OK:I = 0x0

.field public static final LICENSE_TRIAL_OK:I = 0x1

.field public static final LICENSE_VALIDATION_FAILED:I = 0x32

.field private static final TIME_CHECK_KEY:J = 0x211e6dea3a5dd933L

.field protected static callingContext:Landroid/content/Context;


# instance fields
.field private volatile db:Lcom/verizon/vcast/apps/DatabaseHelper;

.field private isTrial:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->callingContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->isTrial:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    .line 127
    sput-object p1, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->callingContext:Landroid/content/Context;

    .line 128
    return-void
.end method

.method private declared-synchronized checkLicenseAux([BLjava/lang/String;)Z
    .locals 7
    .param p1, "licenseFile"    # [B
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x80

    const/4 v6, 0x0

    .line 216
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    array-length v3, p1

    sub-int/2addr v3, v4

    new-array v0, v3, [B

    .line 219
    .local v0, "license":[B
    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {p1, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {p0, v3, p2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->validateLicense(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    const/16 v3, 0x80

    new-array v2, v3, [B

    .line 225
    .local v2, "signature":[B
    array-length v3, v0

    const/4 v4, 0x0

    array-length v5, v2

    invoke-static {p1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 226
    invoke-direct {p0, v2, v0}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->isSignatureValid([B[B)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const/4 v3, 0x1

    .line 239
    .end local v0    # "license":[B
    .end local v2    # "signature":[B
    :goto_0
    monitor-exit p0

    return v3

    .line 232
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 233
    .local v1, "se":Ljava/lang/SecurityException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 235
    :catch_1
    move-exception v3

    :cond_0
    move v3, v6

    .line 239
    goto :goto_0
.end method

.method private convertToLong(Ljava/lang/String;)J
    .locals 13
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const-string v10, ":"

    const-string v10, "-"

    .line 291
    const/16 v9, 0x7b2

    .line 292
    .local v9, "year":I
    const/4 v6, 0x0

    .line 293
    .local v6, "month":I
    const/4 v1, 0x1

    .line 294
    .local v1, "day":I
    const/4 v4, 0x0

    .line 295
    .local v4, "hour":I
    const/4 v5, 0x0

    .line 296
    .local v5, "minute":I
    const/4 v7, 0x0

    .line 301
    .local v7, "second":I
    const/4 v8, 0x0

    .line 302
    .local v8, "startIndex":I
    :try_start_0
    const-string v10, "-"

    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 303
    .local v3, "endIndex":I
    const/4 v10, 0x0

    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 306
    add-int/lit8 v8, v3, 0x1

    .line 307
    const-string v10, "-"

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 308
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    sub-int v6, v10, v12

    .line 311
    add-int/lit8 v8, v3, 0x1

    .line 312
    const-string v10, "T"

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 313
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 316
    add-int/lit8 v8, v3, 0x1

    .line 317
    const-string v10, ":"

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 318
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 321
    add-int/lit8 v8, v3, 0x1

    .line 322
    const-string v10, ":"

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {p1, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    .line 323
    invoke-virtual {p1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 326
    add-int/lit8 v8, v3, 0x1

    .line 327
    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 341
    .end local v3    # "endIndex":I
    :goto_0
    const-string v10, "GMT"

    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 342
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v12, v9}, Ljava/util/Calendar;->set(II)V

    .line 343
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v6}, Ljava/util/Calendar;->set(II)V

    .line 344
    const/4 v10, 0x5

    invoke-virtual {v0, v10, v1}, Ljava/util/Calendar;->set(II)V

    .line 345
    const/16 v10, 0xb

    invoke-virtual {v0, v10, v4}, Ljava/util/Calendar;->set(II)V

    .line 346
    const/16 v10, 0xc

    invoke-virtual {v0, v10, v5}, Ljava/util/Calendar;->set(II)V

    .line 347
    const/16 v10, 0xd

    invoke-virtual {v0, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 350
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    return-wide v10

    .line 329
    .end local v0    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 332
    .local v2, "e":Ljava/lang/Exception;
    const/16 v9, 0x7b2

    .line 333
    const/4 v6, 0x0

    .line 334
    const/4 v1, 0x1

    .line 335
    const/4 v4, 0x0

    .line 336
    const/4 v5, 0x0

    .line 337
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private getBestCurrentTime()J
    .locals 6

    .prologue
    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 433
    .local v0, "localTime":J
    invoke-direct {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getSavedNetworkTime()J

    move-result-wide v2

    .line 434
    .local v2, "savedTime":J
    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    move-wide v4, v2

    :goto_0
    return-wide v4

    :cond_0
    move-wide v4, v0

    goto :goto_0
.end method

.method private getMDN()Ljava/lang/String;
    .locals 6

    .prologue
    .line 521
    sget-object v3, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->callingContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 522
    .local v2, "telm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 523
    .local v1, "phoneType":I
    const/4 v0, 0x0

    .line 525
    .local v0, "mdn":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 532
    const-string v3, "VZWLicense"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LicenseAuthenticator.getMDN(): Unsupported phoneType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_0
    return-object v0

    .line 528
    :pswitch_0
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 529
    goto :goto_0

    .line 525
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "license"    # Ljava/lang/String;

    .prologue
    const-string v3, ">"

    .line 361
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v1, v3, v4

    .line 362
    .local v1, "startIndex":I
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "</"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 363
    .local v0, "endIndex":I
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "value":Ljava/lang/String;
    move-object v3, v2

    .line 368
    .end local v0    # "endIndex":I
    .end local v1    # "startIndex":I
    .end local v2    # "value":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 365
    :catch_0
    move-exception v3

    .line 368
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getSavedNetworkTime()J
    .locals 8

    .prologue
    .line 375
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 376
    .local v0, "savedTime":Ljava/lang/Long;
    iget-object v4, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    if-nez v4, :cond_0

    .line 377
    new-instance v4, Lcom/verizon/vcast/apps/DatabaseHelper;

    sget-object v5, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->callingContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/verizon/vcast/apps/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    .line 379
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    invoke-virtual {v4}, Lcom/verizon/vcast/apps/DatabaseHelper;->selectAll()Ljava/util/List;

    move-result-object v3

    .line 380
    .local v3, "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    .local v2, "timeTable":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 390
    .end local v2    # "timeTable":Ljava/lang/String;
    .end local v3    # "times":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_0
    const-string v4, "VZWLicense"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getSavedNetworkTime()="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4

    .line 386
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 387
    .local v1, "t":Ljava/lang/Throwable;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 388
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isSignatureValid([B[B)Z
    .locals 13
    .param p1, "signature"    # [B
    .param p2, "license"    # [B

    .prologue
    const/16 v12, 0x14

    const/4 v11, 0x0

    .line 252
    :try_start_0
    new-instance v0, Lcom/verizon/vcast/apps/VzwRSAKyParam;

    const/4 v7, 0x0

    .line 253
    new-instance v8, Lcom/verizon/vcast/apps/VzwBigInt;

    const-string v9, "113751985209425220389904911573418596054906626841732881629605928013581871729424978229159252758527107263930688983674762647850445576382155543169643622580638253014102297871653770954828091210266102863696922720690032125039249372686528361690969551775463749111601961827967139084754353180300766686096391389069084141699"

    invoke-direct {v8, v9}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(Ljava/lang/String;)V

    .line 254
    new-instance v9, Lcom/verizon/vcast/apps/VzwBigInt;

    const-string v10, "65537"

    invoke-direct {v9, v10}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-direct {v0, v7, v8, v9}, Lcom/verizon/vcast/apps/VzwRSAKyParam;-><init>(ZLcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;)V

    .line 257
    .local v0, "_RSAPublicKey":Lcom/verizon/vcast/apps/VzwRSAKyParam;
    new-instance v5, Lcom/verizon/vcast/apps/VzwRSAEng;

    invoke-direct {v5}, Lcom/verizon/vcast/apps/VzwRSAEng;-><init>()V

    .line 258
    .local v5, "theEngine":Lcom/verizon/vcast/apps/VzwAsymBlkCipher;
    new-instance v6, Lcom/verizon/vcast/apps/VzwPKCS1Encd;

    invoke-direct {v6, v5}, Lcom/verizon/vcast/apps/VzwPKCS1Encd;-><init>(Lcom/verizon/vcast/apps/VzwAsymBlkCipher;)V

    .line 259
    .end local v5    # "theEngine":Lcom/verizon/vcast/apps/VzwAsymBlkCipher;
    .local v6, "theEngine":Lcom/verizon/vcast/apps/VzwAsymBlkCipher;
    const/4 v7, 0x0

    invoke-interface {v6, v7, v0}, Lcom/verizon/vcast/apps/VzwAsymBlkCipher;->init(ZLcom/verizon/vcast/apps/VzwRSAKyParam;)V

    .line 260
    const/4 v7, 0x0

    array-length v8, p1

    invoke-interface {v6, p1, v7, v8}, Lcom/verizon/vcast/apps/VzwAsymBlkCipher;->processBlock([BII)[B

    move-result-object v1

    .line 263
    .local v1, "decrypted":[B
    new-instance v3, Lcom/verizon/vcast/apps/VzwSHA;

    invoke-direct {v3}, Lcom/verizon/vcast/apps/VzwSHA;-><init>()V

    .line 264
    .local v3, "messageDigest":Lcom/verizon/vcast/apps/VzwDigest;
    const/16 v7, 0x14

    new-array v4, v7, [B

    .line 265
    .local v4, "shaBytes":[B
    const/4 v7, 0x0

    array-length v8, p2

    invoke-interface {v3, p2, v7, v8}, Lcom/verizon/vcast/apps/VzwDigest;->update([BII)V

    .line 266
    const/4 v7, 0x0

    invoke-interface {v3, v4, v7}, Lcom/verizon/vcast/apps/VzwDigest;->doFinal([BI)I

    .line 269
    array-length v7, v1

    if-ne v7, v12, :cond_2

    .line 270
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v4

    if-lt v2, v7, :cond_0

    .line 275
    const/4 v7, 0x1

    .line 281
    .end local v0    # "_RSAPublicKey":Lcom/verizon/vcast/apps/VzwRSAKyParam;
    .end local v1    # "decrypted":[B
    .end local v2    # "i":I
    .end local v3    # "messageDigest":Lcom/verizon/vcast/apps/VzwDigest;
    .end local v4    # "shaBytes":[B
    .end local v6    # "theEngine":Lcom/verizon/vcast/apps/VzwAsymBlkCipher;
    :goto_1
    return v7

    .line 271
    .restart local v0    # "_RSAPublicKey":Lcom/verizon/vcast/apps/VzwRSAKyParam;
    .restart local v1    # "decrypted":[B
    .restart local v2    # "i":I
    .restart local v3    # "messageDigest":Lcom/verizon/vcast/apps/VzwDigest;
    .restart local v4    # "shaBytes":[B
    .restart local v6    # "theEngine":Lcom/verizon/vcast/apps/VzwAsymBlkCipher;
    :cond_0
    aget-byte v7, v4, v2

    aget-byte v8, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v7, v8, :cond_1

    move v7, v11

    .line 272
    goto :goto_1

    .line 270
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    .end local v0    # "_RSAPublicKey":Lcom/verizon/vcast/apps/VzwRSAKyParam;
    .end local v1    # "decrypted":[B
    .end local v2    # "i":I
    .end local v3    # "messageDigest":Lcom/verizon/vcast/apps/VzwDigest;
    .end local v4    # "shaBytes":[B
    .end local v6    # "theEngine":Lcom/verizon/vcast/apps/VzwAsymBlkCipher;
    :catch_0
    move-exception v7

    :cond_2
    move v7, v11

    .line 281
    goto :goto_1
.end method

.method private onDestroy()V
    .locals 2

    .prologue
    .line 204
    const-string v0, "LicenseAuthenticator"

    const-string v1, "onDestroy() was hit."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method private validateLicense(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 21
    .param p1, "licValues"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 445
    :try_start_0
    const-string v20, "MDN"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 446
    .local v15, "tempMDN":Ljava/lang/String;
    const-string v20, "IsSubscriptionExpired"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 447
    .local v10, "subExp":Ljava/lang/String;
    const-string v20, "IsLimitedTimeExpired"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, "limExp":Ljava/lang/String;
    const-string v20, "IsPurchaseRequired"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 449
    .local v11, "tempIsPurchaseRequired":Ljava/lang/String;
    const-string v20, "Keyword"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 450
    .local v12, "tempKeyword":Ljava/lang/String;
    const-string v20, "PriceType"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, "priceType":Ljava/lang/String;
    const-string v20, "IssueTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->convertToLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 452
    .local v13, "tempLastIssueTime":J
    const-string v20, "NextCheckTime"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->convertToLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 453
    .local v16, "tempNextCheckTime":J
    const-string v20, "PurchaseDate"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMapValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->convertToLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 456
    .local v18, "tempPurchaseDate":J
    const-string v20, "Subscription"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 458
    const-string v20, "FALSE"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_0

    .line 459
    const/16 v20, 0x0

    .line 513
    .end local v6    # "limExp":Ljava/lang/String;
    .end local v8    # "priceType":Ljava/lang/String;
    .end local v10    # "subExp":Ljava/lang/String;
    .end local v11    # "tempIsPurchaseRequired":Ljava/lang/String;
    .end local v12    # "tempKeyword":Ljava/lang/String;
    .end local v13    # "tempLastIssueTime":J
    .end local v15    # "tempMDN":Ljava/lang/String;
    .end local v16    # "tempNextCheckTime":J
    .end local v18    # "tempPurchaseDate":J
    :goto_0
    return v20

    .line 462
    .restart local v6    # "limExp":Ljava/lang/String;
    .restart local v8    # "priceType":Ljava/lang/String;
    .restart local v10    # "subExp":Ljava/lang/String;
    .restart local v11    # "tempIsPurchaseRequired":Ljava/lang/String;
    .restart local v12    # "tempKeyword":Ljava/lang/String;
    .restart local v13    # "tempLastIssueTime":J
    .restart local v15    # "tempMDN":Ljava/lang/String;
    .restart local v16    # "tempNextCheckTime":J
    .restart local v18    # "tempPurchaseDate":J
    :cond_0
    const-string v20, "FALSE"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 463
    const/16 v20, 0x0

    goto :goto_0

    .line 465
    :cond_1
    const-string v20, "Per Period"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 467
    const-string v20, "FALSE"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 468
    const/16 v20, 0x0

    goto :goto_0

    .line 471
    :cond_2
    const-string v20, "FALSE"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_3

    .line 472
    const/16 v20, 0x0

    goto :goto_0

    .line 476
    :cond_3
    const-string v20, "First Download"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_4

    const-string v20, "Free"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 478
    :cond_4
    const-string v20, "FALSE"

    move-object v0, v11

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 479
    const/16 v20, 0x0

    goto :goto_0

    .line 484
    :cond_5
    const-string v20, "Trial Period"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 486
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->isTrial:Z

    .line 487
    const-string v20, "FALSE"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_6

    .line 488
    const/16 v20, 0x0

    goto :goto_0

    .line 493
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getMDN()Ljava/lang/String;

    move-result-object v7

    .line 495
    .local v7, "mdn":Ljava/lang/String;
    invoke-virtual {v15, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 496
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 500
    :cond_7
    move-object v0, v12

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 501
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 505
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getBestCurrentTime()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v3

    .line 506
    .local v3, "currentTime":J
    cmp-long v20, v3, v13

    if-ltz v20, :cond_9

    cmp-long v20, v3, v16

    if-gtz v20, :cond_9

    cmp-long v20, v3, v18

    if-ltz v20, :cond_9

    const/16 v20, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 508
    .end local v3    # "currentTime":J
    .end local v6    # "limExp":Ljava/lang/String;
    .end local v7    # "mdn":Ljava/lang/String;
    .end local v8    # "priceType":Ljava/lang/String;
    .end local v10    # "subExp":Ljava/lang/String;
    .end local v11    # "tempIsPurchaseRequired":Ljava/lang/String;
    .end local v12    # "tempKeyword":Ljava/lang/String;
    .end local v13    # "tempLastIssueTime":J
    .end local v15    # "tempMDN":Ljava/lang/String;
    .end local v16    # "tempNextCheckTime":J
    .end local v18    # "tempPurchaseDate":J
    :catch_0
    move-exception v20

    move-object/from16 v9, v20

    .line 509
    .local v9, "se":Ljava/lang/SecurityException;
    throw v9

    .line 511
    .end local v9    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v20

    move-object/from16 v5, v20

    .line 513
    .local v5, "e":Ljava/lang/Exception;
    const/16 v20, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method protected checkLicenseData(Ljava/lang/String;[B)I
    .locals 7
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "bLicenseData"    # [B

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x6a

    const/4 v4, 0x0

    const-string v3, "LicenseAuthenticator"

    .line 144
    if-eqz p2, :cond_3

    .line 146
    :try_start_0
    array-length v2, p2

    if-ne v2, v6, :cond_0

    .line 147
    const/4 v2, 0x0

    aget-byte v2, p2, v2

    packed-switch v2, :pswitch_data_0

    move v2, v5

    .line 198
    :goto_0
    return v2

    .line 153
    :pswitch_0
    const/16 v2, 0x34

    goto :goto_0

    .line 157
    :pswitch_1
    const/16 v2, 0x33

    goto :goto_0

    .line 160
    :pswitch_2
    const/16 v2, 0x6b

    goto :goto_0

    .line 169
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->checkLicenseAux([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    iget-boolean v2, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->isTrial:Z

    if-eqz v2, :cond_1

    .line 171
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->isTrial:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v6

    .line 172
    goto :goto_0

    :cond_1
    move v2, v4

    .line 175
    goto :goto_0

    .line 178
    :cond_2
    const/16 v2, 0x32

    goto :goto_0

    :cond_3
    move v2, v5

    .line 183
    goto :goto_0

    .line 186
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 188
    .local v1, "se":Ljava/lang/SecurityException;
    const-string v2, "LicenseAuthenticator"

    const-string v2, "Security error validating license"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    const-string v2, "LicenseAuthenticator"

    const-string v2, "Likely cause: missing READ_PHONE_STATE permission when fetching MDN"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v2, "LicenseAuthenticator"

    const-string v2, "Required permissions:"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v2, "LicenseAuthenticator"

    const-string v2, "  android.permission.READ_PHONE_STATE"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v2, "LicenseAuthenticator"

    const-string v2, "  android.permission.START_BACKGROUND_SERVICE"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const-string v2, "LicenseAuthenticator"

    const-string v2, "  com.verizon.vcast.apps.VCAST_APPS_LICENSE_SERVICE"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/16 v2, 0x66

    goto :goto_0

    .line 196
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, "e":Ljava/lang/Exception;
    move v2, v5

    .line 198
    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected cleanupDB()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    invoke-virtual {v0}, Lcom/verizon/vcast/apps/DatabaseHelper;->cleanup()V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    .line 135
    :cond_0
    return-void
.end method

.method protected saveNetworkTime()V
    .locals 2

    .prologue
    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->saveNetworkTime(J)V

    .line 401
    return-void
.end method

.method protected saveNetworkTime(J)V
    .locals 10
    .param p1, "networkTime"    # J

    .prologue
    .line 408
    const-wide/16 v0, 0x0

    .line 409
    .local v0, "bestTime":J
    iget-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    if-nez v7, :cond_0

    .line 410
    new-instance v7, Lcom/verizon/vcast/apps/DatabaseHelper;

    sget-object v8, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->callingContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/verizon/vcast/apps/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    .line 413
    :cond_0
    move-wide v2, p1

    .line 414
    .local v2, "currentTime":J
    :try_start_0
    invoke-direct {p0}, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->getSavedNetworkTime()J

    move-result-wide v4

    .line 415
    .local v4, "lastSavedTime":J
    cmp-long v7, v2, v4

    if-lez v7, :cond_2

    move-wide v0, v2

    .line 416
    :goto_0
    cmp-long v7, v0, v4

    if-eqz v7, :cond_1

    .line 418
    iget-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    invoke-virtual {v7}, Lcom/verizon/vcast/apps/DatabaseHelper;->deleteAll()V

    .line 419
    iget-object v7, p0, Lcom/verizon/vcast/apps/LicenseAuthenticatorPrivate;->db:Lcom/verizon/vcast/apps/DatabaseHelper;

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/verizon/vcast/apps/DatabaseHelper;->insert(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    .end local v4    # "lastSavedTime":J
    :cond_1
    :goto_1
    const-string v7, "VZWLicense"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "saveNetworkTime()="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .restart local v4    # "lastSavedTime":J
    :cond_2
    move-wide v0, v4

    .line 415
    goto :goto_0

    .line 421
    .end local v4    # "lastSavedTime":J
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 422
    .local v6, "t":Ljava/lang/Throwable;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v6}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 423
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
