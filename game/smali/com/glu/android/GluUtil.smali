.class public Lcom/glu/android/GluUtil;
.super Ljava/lang/Object;
.source "GluUtil.java"


# static fields
.field public static final LINE_BREAK:Ljava/lang/String; = "\n"

.field public static randomizer:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 837
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluUtil;->randomizer:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final charArrayToByteArray([C)[B
    .locals 3
    .param p0, "ca"    # [C

    .prologue
    .line 27
    array-length v2, p0

    new-array v0, v2, [B

    .line 29
    .local v0, "ba":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 30
    aget-char v2, p0, v1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-object v0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .param p0, "oldFile"    # Ljava/io/File;
    .param p1, "newFile"    # Ljava/io/File;

    .prologue
    const/4 v8, 0x0

    .line 225
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 226
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 228
    .local v3, "fos":Ljava/io/FileOutputStream;
    const/4 v0, -0x1

    .line 230
    .local v0, "ch":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 231
    int-to-byte v4, v0

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v0    # "ch":I
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 238
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Warning: Cannot copy "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/GluUtil;->getRelativeFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    move v4, v8

    .line 243
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return v4

    .line 233
    .restart local v0    # "ch":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 234
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 236
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/io/File;->length()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v8

    goto :goto_1
.end method

.method public static final copyPropertiesFileToCache()V
    .locals 9

    .prologue
    .line 254
    sget-object v4, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 257
    .local v4, "game":Lcom/glu/android/GameLet;
    :try_start_0
    invoke-virtual {v4}, Lcom/glu/android/GameLet;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f040000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 259
    .local v5, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "properties.dat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "expectedPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    .local v6, "nativePropertiesFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v3, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 267
    .local v3, "fos":Ljava/io/FileOutputStream;
    :goto_0
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    .line 268
    int-to-byte v7, v0

    invoke-virtual {v3, v7}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 271
    .end local v0    # "c":I
    .end local v2    # "expectedPath":Ljava/lang/String;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "nativePropertiesFile":Ljava/io/File;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 272
    .local v1, "ex":Ljava/lang/Exception;
    const-string v7, "Error: Could not copy properties file."

    invoke-static {v7}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 274
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 270
    .restart local v0    # "c":I
    .restart local v2    # "expectedPath":Ljava/lang/String;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "nativePropertiesFile":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static createRandomizer()V
    .locals 3

    .prologue
    .line 841
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/glu/android/GluUtil;->randomizer:Ljava/util/Random;

    .line 842
    return-void
.end method

.method public static createURLConnection(Ljava/lang/String;I)Ljava/net/HttpURLConnection;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "resumeAt"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 741
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0    # "url":Ljava/lang/String;
    check-cast p0, Ljava/net/HttpURLConnection;

    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 744
    .local v1, "huc":Ljava/net/HttpURLConnection;
    if-lez p1, :cond_0

    .line 745
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    :cond_0
    const v2, 0xea60

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 747
    return-object v1
.end method

.method public static deleteUpgradeStatus()V
    .locals 4

    .prologue
    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "upgradeStatus.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 724
    .local v1, "filename":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 726
    .local v0, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 727
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 731
    :cond_0
    :goto_0
    return-void

    .line 729
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static downloadResourceFile()Ljava/lang/String;
    .locals 19

    .prologue
    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_nativeProperties:Ljava/util/Hashtable;

    const-string v2, "Glu-Res-File-URL"

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/glu/android/ResFileDownloadView;->getResFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 448
    .local v14, "url":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v0, v0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 450
    .local v6, "fileTemp":Ljava/io/File;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Downloading res file from URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 453
    const/4 v3, 0x0

    .line 455
    .local v3, "downloadInterrupted":Z
    const/4 v4, 0x0

    .line 457
    .local v4, "error":Ljava/lang/String;
    const/4 v9, 0x0

    .line 458
    .local v9, "huc":Ljava/net/HttpURLConnection;
    const/4 v11, -0x1

    .line 460
    .local v11, "responseCode":I
    const/4 v10, 0x0

    .line 461
    .local v10, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 463
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget v0, v0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 465
    .local v1, "append":Z
    :goto_0
    const/4 v5, 0x0

    .line 468
    .local v5, "file":Ljava/io/File;
    const/16 v0, 0xffc

    .line 469
    .local v0, "BUFFER_SIZE":I
    const/16 v0, 0xffc

    :try_start_0
    new-array v0, v0, [B

    .line 470
    .local v0, "buffer":[B
    new-instance v7, Ljava/io/FileOutputStream;

    const/4 v8, 0x0

    invoke-direct {v7, v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_2c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v7, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .line 472
    .local v2, "count":I
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 473
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 474
    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v12

    sget-object v8, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget v8, v8, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    int-to-long v15, v8

    sub-long/2addr v12, v15

    .line 475
    .local v12, "spaceNeeded":J
    :goto_1
    int-to-long v15, v2

    cmp-long v8, v15, v12

    if-gez v8, :cond_7

    sget-object v8, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-boolean v8, v8, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v8, :cond_7

    .line 479
    const/4 v8, 0x0

    const/16 v15, 0xffc

    :try_start_2
    invoke-virtual {v7, v0, v8, v15}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1a
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 480
    add-int/lit16 v2, v2, 0xffc

    goto :goto_1

    .line 463
    .end local v0    # "buffer":[B
    .end local v1    # "append":Z
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "spaceNeeded":J
    .local v2, "fos":Ljava/io/FileOutputStream;
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 481
    .restart local v0    # "buffer":[B
    .restart local v1    # "append":Z
    .local v2, "count":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "spaceNeeded":J
    :catch_0
    move-exception v0

    .line 482
    .local v0, "ioexx":Ljava/io/IOException;
    :try_start_3
    const-string v0, "Could not create temp file. Insufficient storage. bailing..."

    .end local v0    # "ioexx":Ljava/io/IOException;
    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 483
    const v0, 0x7f060016

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .end local v1    # "append":Z
    const/4 v2, 0x0

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    .end local v2    # "count":I
    move-result-wide v12

    .end local v12    # "spaceNeeded":J
    invoke-static {v12, v13}, Lcom/glu/android/GluUtil;->getBytesStringNice(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_2d
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1a
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    .line 487
    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_2e
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_23
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 488
    const/4 v1, 0x0

    .line 493
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_5
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 494
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_36
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_24
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 497
    :cond_1
    :goto_3
    :try_start_6
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_6
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1b
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 579
    :catch_1
    move-exception v2

    move-object v6, v2

    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v5, v10

    .line 580
    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    .local v6, "pex":Ljava/net/ProtocolException;
    :goto_4
    :try_start_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Connection failed, error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .end local v6    # "pex":Ljava/net/ProtocolException;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 581
    const v6, 0x7f060014

    invoke-static {v6}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    move-result-object v0

    .line 595
    if-eqz v2, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_11

    .line 596
    :cond_2
    :goto_5
    if-eqz v5, :cond_3

    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12

    .line 597
    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    :try_start_a
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_a

    :cond_4
    move v6, v7

    .end local v7    # "responseCode":I
    .local v6, "responseCode":I
    move-object/from16 v17, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    move-object v2, v1

    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "error":Ljava/lang/String;
    .local v1, "error":Ljava/lang/String;
    move-object/from16 v0, v17

    .line 599
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    :goto_7
    if-eqz v2, :cond_21

    .line 601
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .end local v0    # "fos":Ljava/io/FileOutputStream;
    if-eqz v0, :cond_20

    .line 603
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1c

    .line 604
    .end local v6    # "responseCode":I
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move v0, v3

    .line 610
    .end local v3    # "downloadInterrupted":Z
    .local v0, "downloadInterrupted":Z
    :goto_8
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget v3, v3, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    if-nez v3, :cond_5

    .line 612
    const/4 v0, 0x0

    .line 614
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 615
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 618
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    .end local v2    # "file":Ljava/io/File;
    if-nez v2, :cond_6

    if-nez v1, :cond_6

    .line 620
    const v1, 0x7f060019

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    .end local v1    # "error":Ljava/lang/String;
    move-result-object v1

    .line 623
    .restart local v1    # "error":Ljava/lang/String;
    :cond_6
    :goto_9
    if-nez v1, :cond_1d

    .line 625
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    .end local v0    # "downloadInterrupted":Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    .line 626
    invoke-static {}, Lcom/glu/android/GluUtil;->saveDownloadResumeStatus()V

    .line 631
    :goto_a
    return-object v1

    .line 489
    .end local v1    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    .restart local v3    # "downloadInterrupted":Z
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .local v7, "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_2
    move-exception v1

    move-object v1, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 502
    .local v0, "buffer":[B
    .local v1, "append":Z
    .local v2, "count":I
    .local v4, "error":Ljava/lang/String;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "spaceNeeded":J
    :cond_7
    :try_start_b
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/net/ProtocolException; {:try_start_b .. :try_end_b} :catch_2d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_22
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 503
    const/4 v7, 0x0

    move-object v8, v7

    .line 506
    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v8, "fos":Ljava/io/FileOutputStream;
    :goto_b
    :try_start_c
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 507
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_35
    .catch Ljava/net/ProtocolException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_25
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 512
    .end local v6    # "fileTemp":Ljava/io/File;
    :cond_8
    :goto_c
    :try_start_d
    sget-object v6, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget v6, v6, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    invoke-static {v14, v6}, Lcom/glu/android/GluUtil;->createURLConnection(Ljava/lang/String;I)Ljava/net/HttpURLConnection;

    move-result-object v9

    .line 514
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11

    .line 516
    const/16 v6, 0xce

    if-ne v11, v6, :cond_c

    .line 518
    const-string v6, "Resume successful."

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 533
    :cond_9
    :goto_d
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1c
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-result-object v10

    .line 539
    :try_start_e
    sget-object v6, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-boolean v6, v6, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    if-nez v6, :cond_a

    .line 540
    sget-object v6, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    invoke-virtual {v6}, Lcom/glu/android/ResFileDownloadView;->deletePreviousResFiles()V

    .line 541
    :cond_a
    sget-object v6, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-object v7, v6, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 542
    .local v7, "filename":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/net/ProtocolException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1c
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 545
    .end local v5    # "file":Ljava/io/File;
    .local v6, "file":Ljava/io/File;
    :try_start_f
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_f
    .catch Ljava/net/ProtocolException; {:try_start_f .. :try_end_f} :catch_2f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_27
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1e
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v5, "fos":Ljava/io/FileOutputStream;
    move v1, v2

    .line 548
    .end local v2    # "count":I
    .end local v7    # "filename":Ljava/lang/String;
    .local v1, "count":I
    :goto_e
    :try_start_10
    invoke-virtual {v10, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    sget-object v2, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-boolean v2, v2, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z
    :try_end_10
    .catch Ljava/net/ProtocolException; {:try_start_10 .. :try_end_10} :catch_30
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_28
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1f
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    if-nez v2, :cond_e

    .line 551
    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {v5, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 553
    sget-object v2, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget v7, v2, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    add-int/2addr v7, v1

    iput v7, v2, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/net/ProtocolException; {:try_start_11 .. :try_end_11} :catch_30
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1f
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_e

    .line 554
    :catch_3
    move-exception v0

    .line 555
    .local v0, "ioexx":Ljava/io/IOException;
    const v0, 0x7f060016

    :try_start_12
    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    .end local v0    # "ioexx":Ljava/io/IOException;
    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .end local v1    # "count":I
    const/4 v2, 0x0

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/glu/android/GluUtil;->getBytesStringNice(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_12
    .catch Ljava/net/ProtocolException; {:try_start_12 .. :try_end_12} :catch_30
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_28
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1f
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    move-result-object v0

    .line 560
    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_33
    .catch Ljava/net/ProtocolException; {:try_start_13 .. :try_end_13} :catch_31
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_29
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    .line 561
    const/4 v1, 0x0

    .line 564
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_14
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 565
    sget-object v2, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    iput v4, v2, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_34
    .catch Ljava/net/ProtocolException; {:try_start_14 .. :try_end_14} :catch_4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2a
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    .line 568
    :cond_b
    :goto_f
    :try_start_15
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    throw v2
    :try_end_15
    .catch Ljava/net/ProtocolException; {:try_start_15 .. :try_end_15} :catch_4
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_20
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    .line 579
    :catch_4
    move-exception v2

    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    move-object/from16 v17, v2

    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object/from16 v6, v17

    goto/16 :goto_4

    .line 504
    .local v0, "buffer":[B
    .local v1, "append":Z
    .local v2, "count":I
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .local v7, "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_5
    move-exception v8

    move-object v8, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_b

    .line 520
    .end local v6    # "fileTemp":Ljava/io/File;
    :cond_c
    const/16 v6, 0xc8

    if-ne v11, v6, :cond_d

    .line 522
    :try_start_16
    sget-object v6, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget v6, v6, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    if-eqz v6, :cond_9

    .line 524
    const-string v6, "Resume not supported."

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 525
    sget-object v6, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/4 v7, 0x0

    iput v7, v6, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1c
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    goto/16 :goto_d

    .line 534
    .end local v0    # "buffer":[B
    .end local v1    # "append":Z
    .end local v2    # "count":I
    :catch_6
    move-exception v0

    move-object v1, v0

    move v2, v11

    .end local v11    # "responseCode":I
    .local v2, "responseCode":I
    move-object v0, v9

    .line 535
    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v0, "huc":Ljava/net/HttpURLConnection;
    .local v1, "ioexx":Ljava/io/IOException;
    :try_start_17
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 536
    new-instance v6, Ljava/net/ProtocolException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "ioexx":Ljava/io/IOException;
    invoke-direct {v6, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_17
    .catch Ljava/net/ProtocolException; {:try_start_17 .. :try_end_17} :catch_7
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_26
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1d
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 579
    :catch_7
    move-exception v1

    move-object v6, v1

    move v7, v2

    .end local v2    # "responseCode":I
    .local v7, "responseCode":I
    move-object v2, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object/from16 v17, v0

    .end local v0    # "huc":Ljava/net/HttpURLConnection;
    .local v17, "huc":Ljava/net/HttpURLConnection;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object/from16 v4, v17

    .end local v17    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_4

    .line 530
    .end local v7    # "responseCode":I
    .local v0, "buffer":[B
    .local v1, "append":Z
    .local v2, "count":I
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :cond_d
    :try_start_18
    new-instance v0, Ljava/io/IOException;

    .end local v0    # "buffer":[B
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "append":Z
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response code: "

    .end local v2    # "count":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_6
    .catch Ljava/net/ProtocolException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1c
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 579
    :catch_8
    move-exception v0

    move-object v6, v0

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v2, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_4

    .line 572
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "responseCode":I
    .local v0, "buffer":[B
    .local v1, "count":I
    .local v4, "error":Ljava/lang/String;
    .local v5, "fos":Ljava/io/FileOutputStream;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :cond_e
    :try_start_19
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/net/ProtocolException; {:try_start_19 .. :try_end_19} :catch_30
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_28
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_1f
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 573
    const/4 v1, 0x0

    .line 575
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_1a
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    .end local v0    # "buffer":[B
    iget-boolean v0, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    if-eqz v0, :cond_22

    .line 577
    const v0, 0x7f060012

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;
    :try_end_1a
    .catch Ljava/net/ProtocolException; {:try_start_1a .. :try_end_1a} :catch_32
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_21
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    move-result-object v0

    .line 595
    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    :goto_10
    if-eqz v1, :cond_f

    :try_start_1b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f

    .line 596
    :cond_f
    :goto_11
    if-eqz v10, :cond_10

    :try_start_1c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_10

    .line 597
    :cond_10
    :goto_12
    if-eqz v9, :cond_11

    :try_start_1d
    invoke-virtual {v9}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_9

    :cond_11
    move-object v2, v6

    .end local v6    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    move v6, v11

    .end local v11    # "responseCode":I
    .local v6, "responseCode":I
    move-object/from16 v17, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    move-object v1, v0

    .end local v0    # "error":Ljava/lang/String;
    .local v1, "error":Ljava/lang/String;
    move-object/from16 v0, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .end local v5    # "is":Ljava/io/InputStream;
    .local v0, "error":Ljava/lang/String;
    .local v1, "fos":Ljava/io/FileOutputStream;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_9
    move-exception v2

    move-object v2, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v4    # "huc":Ljava/net/HttpURLConnection;
    move v6, v11

    .end local v11    # "responseCode":I
    .local v6, "responseCode":I
    move-object/from16 v17, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v0

    .end local v0    # "error":Ljava/lang/String;
    .local v1, "error":Ljava/lang/String;
    move-object/from16 v0, v17

    .line 598
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 597
    .end local v6    # "responseCode":I
    .end local v12    # "spaceNeeded":J
    .local v0, "error":Ljava/lang/String;
    .local v1, "file":Ljava/io/File;
    .local v2, "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "responseCode":I
    :catch_a
    move-exception v6

    move v6, v7

    .end local v7    # "responseCode":I
    .restart local v6    # "responseCode":I
    move-object/from16 v17, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v17    # "fos":Ljava/io/FileOutputStream;
    move-object v2, v1

    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "error":Ljava/lang/String;
    .local v1, "error":Ljava/lang/String;
    move-object/from16 v0, v17

    .line 598
    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .line 582
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "append":Z
    .local v2, "fos":Ljava/io/FileOutputStream;
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_b
    move-exception v0

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v5, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v9

    .line 583
    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    .local v5, "ioex":Ljava/io/IOException;
    :goto_13
    const v5, 0x7f060015

    :try_start_1e
    invoke-static {v5}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    .end local v5    # "ioex":Ljava/io/IOException;
    move-result-object v0

    .line 595
    if-eqz v2, :cond_12

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_13

    .line 596
    :cond_12
    :goto_14
    if-eqz v6, :cond_13

    :try_start_20
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_14

    .line 597
    :cond_13
    :goto_15
    if-eqz v4, :cond_14

    :try_start_21
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    :cond_14
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move v6, v7

    .end local v7    # "responseCode":I
    .local v6, "responseCode":I
    move-object/from16 v17, v1

    .end local v1    # "file":Ljava/io/File;
    .local v17, "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "error":Ljava/lang/String;
    .local v1, "error":Ljava/lang/String;
    move-object v0, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v2, v17

    .end local v17    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    goto/16 :goto_7

    .end local v5    # "is":Ljava/io/InputStream;
    .local v0, "error":Ljava/lang/String;
    .local v1, "file":Ljava/io/File;
    .local v2, "fos":Ljava/io/FileOutputStream;
    .local v6, "is":Ljava/io/InputStream;
    .restart local v7    # "responseCode":I
    :catch_c
    move-exception v5

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    move v6, v7

    .end local v7    # "responseCode":I
    .local v6, "responseCode":I
    move-object/from16 v17, v1

    .end local v1    # "file":Ljava/io/File;
    .restart local v17    # "file":Ljava/io/File;
    move-object v1, v0

    .end local v0    # "error":Ljava/lang/String;
    .local v1, "error":Ljava/lang/String;
    move-object v0, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v2, v17

    .line 598
    .end local v17    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    goto/16 :goto_7

    .line 584
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "append":Z
    .local v2, "fos":Ljava/io/FileOutputStream;
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_d
    move-exception v0

    move-object v1, v0

    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    move-object v2, v5

    .end local v5    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move-object v5, v9

    .line 587
    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v1, "ex":Ljava/lang/Exception;
    .local v5, "huc":Ljava/net/HttpURLConnection;
    :goto_16
    if-nez v0, :cond_15

    .line 592
    :try_start_22
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f060017

    invoke-static {v9}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ")"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    move-result-object v0

    .line 595
    :cond_15
    if-eqz v4, :cond_16

    :try_start_23
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_15

    .line 596
    :cond_16
    :goto_17
    if-eqz v6, :cond_17

    :try_start_24
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_16

    .line 597
    :cond_17
    :goto_18
    if-eqz v5, :cond_18

    :try_start_25
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_e

    :cond_18
    move-object v1, v0

    .end local v0    # "error":Ljava/lang/String;
    .local v1, "error":Ljava/lang/String;
    move-object v0, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move v6, v7

    .end local v7    # "responseCode":I
    .local v6, "responseCode":I
    goto/16 :goto_7

    .end local v1    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    .local v4, "fos":Ljava/io/FileOutputStream;
    .local v5, "huc":Ljava/net/HttpURLConnection;
    .local v6, "is":Ljava/io/InputStream;
    .restart local v7    # "responseCode":I
    :catch_e
    move-exception v1

    move-object v1, v0

    .end local v0    # "error":Ljava/lang/String;
    .restart local v1    # "error":Ljava/lang/String;
    move-object v0, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v0, "fos":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move v6, v7

    .line 598
    .end local v7    # "responseCode":I
    .local v6, "responseCode":I
    goto/16 :goto_7

    .line 595
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .local v1, "append":Z
    .local v2, "fos":Ljava/io/FileOutputStream;
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move v5, v11

    .end local v11    # "responseCode":I
    .local v5, "responseCode":I
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v10

    .end local v6    # "fileTemp":Ljava/io/File;
    .end local v10    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :goto_19
    if-eqz v2, :cond_19

    :try_start_26
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_17

    .line 596
    .end local v0    # "error":Ljava/lang/String;
    :cond_19
    :goto_1a
    if-eqz v4, :cond_1a

    :try_start_27
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_18

    .line 597
    :cond_1a
    :goto_1b
    if-eqz v3, :cond_1b

    :try_start_28
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_19

    :cond_1b
    :goto_1c
    throw v6

    .line 606
    .end local v4    # "is":Ljava/io/InputStream;
    .local v1, "error":Ljava/lang/String;
    .local v2, "file":Ljava/io/File;
    .local v3, "downloadInterrupted":Z
    .local v5, "is":Ljava/io/InputStream;
    :cond_1c
    const/4 v0, 0x1

    .end local v3    # "downloadInterrupted":Z
    .local v0, "downloadInterrupted":Z
    goto/16 :goto_8

    .line 629
    .end local v2    # "file":Ljava/io/File;
    :cond_1d
    sget-object v2, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    sget-object v3, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-boolean v3, v3, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    if-nez v3, :cond_1e

    if-eqz v0, :cond_1f

    :cond_1e
    const/4 v0, 0x1

    .end local v0    # "downloadInterrupted":Z
    :goto_1d
    iput-boolean v0, v2, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    goto/16 :goto_a

    .restart local v0    # "downloadInterrupted":Z
    :cond_1f
    const/4 v0, 0x0

    goto :goto_1d

    .line 595
    .end local v5    # "is":Ljava/io/InputStream;
    .local v0, "error":Ljava/lang/String;
    .local v1, "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "downloadInterrupted":Z
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    .restart local v12    # "spaceNeeded":J
    :catch_f
    move-exception v2

    goto/16 :goto_11

    .line 596
    :catch_10
    move-exception v2

    goto/16 :goto_12

    .line 595
    .end local v6    # "file":Ljava/io/File;
    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "responseCode":I
    .end local v12    # "spaceNeeded":J
    .local v1, "file":Ljava/io/File;
    .local v2, "fos":Ljava/io/FileOutputStream;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "responseCode":I
    :catch_11
    move-exception v6

    goto/16 :goto_5

    .line 596
    :catch_12
    move-exception v6

    goto/16 :goto_6

    .line 595
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    :catch_13
    move-exception v5

    goto/16 :goto_14

    .line 596
    :catch_14
    move-exception v5

    goto/16 :goto_15

    .line 595
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    .local v4, "fos":Ljava/io/FileOutputStream;
    .local v5, "huc":Ljava/net/HttpURLConnection;
    :catch_15
    move-exception v1

    goto :goto_17

    .line 596
    :catch_16
    move-exception v1

    goto :goto_18

    .line 595
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "responseCode":I
    .restart local v1    # "file":Ljava/io/File;
    .local v2, "fos":Ljava/io/FileOutputStream;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    .local v4, "is":Ljava/io/InputStream;
    .local v5, "responseCode":I
    :catch_17
    move-exception v0

    goto :goto_1a

    .line 596
    .end local v0    # "error":Ljava/lang/String;
    :catch_18
    move-exception v0

    goto :goto_1b

    .line 597
    :catch_19
    move-exception v0

    goto :goto_1c

    .line 595
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "downloadInterrupted":Z
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .local v7, "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v2, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move v5, v11

    .end local v11    # "responseCode":I
    .local v5, "responseCode":I
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    goto :goto_19

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .local v3, "downloadInterrupted":Z
    .local v5, "file":Ljava/io/File;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v2, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move v5, v11

    .end local v11    # "responseCode":I
    .local v5, "responseCode":I
    goto :goto_19

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    .local v3, "downloadInterrupted":Z
    .local v5, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catchall_3
    move-exception v2

    move-object v6, v2

    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move v5, v11

    .end local v11    # "responseCode":I
    .local v5, "responseCode":I
    goto :goto_19

    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "fileTemp":Ljava/io/File;
    .local v3, "downloadInterrupted":Z
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    .restart local v12    # "spaceNeeded":J
    :catchall_4
    move-exception v0

    move-object v6, v0

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v2, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move v5, v11

    .end local v11    # "responseCode":I
    .local v5, "responseCode":I
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    goto :goto_19

    .end local v1    # "file":Ljava/io/File;
    .local v0, "huc":Ljava/net/HttpURLConnection;
    .local v2, "responseCode":I
    .local v3, "downloadInterrupted":Z
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catchall_5
    move-exception v1

    move-object v6, v1

    move-object v3, v0

    .end local v0    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move v5, v2

    .end local v2    # "responseCode":I
    .local v5, "responseCode":I
    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    move-object v2, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto :goto_19

    .end local v5    # "responseCode":I
    .local v0, "buffer":[B
    .local v1, "append":Z
    .local v2, "count":I
    .local v3, "downloadInterrupted":Z
    .local v4, "error":Ljava/lang/String;
    .local v6, "file":Ljava/io/File;
    .local v7, "filename":Ljava/lang/String;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catchall_6
    move-exception v0

    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v2, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move v5, v11

    .end local v11    # "responseCode":I
    .restart local v5    # "responseCode":I
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move-object v6, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    goto :goto_19

    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "filename":Ljava/lang/String;
    .local v3, "downloadInterrupted":Z
    .local v4, "error":Ljava/lang/String;
    .local v5, "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catchall_7
    move-exception v0

    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v2, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move v5, v11

    .end local v11    # "responseCode":I
    .local v5, "responseCode":I
    move-object v6, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    goto :goto_19

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .local v3, "downloadInterrupted":Z
    .local v5, "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catchall_8
    move-exception v1

    move-object v2, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move v5, v11

    .end local v11    # "responseCode":I
    .local v5, "responseCode":I
    move-object/from16 v17, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v17    # "file":Ljava/io/File;
    move-object v6, v1

    move-object/from16 v1, v17

    .end local v17    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto/16 :goto_19

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "responseCode":I
    .local v1, "fos":Ljava/io/FileOutputStream;
    .local v3, "downloadInterrupted":Z
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catchall_9
    move-exception v2

    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    move v5, v11

    .end local v11    # "responseCode":I
    .restart local v5    # "responseCode":I
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move-object/from16 v17, v2

    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object/from16 v6, v17

    goto/16 :goto_19

    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "responseCode":I
    .local v1, "fos":Ljava/io/FileOutputStream;
    .local v3, "downloadInterrupted":Z
    .local v4, "error":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catchall_a
    move-exception v0

    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move v5, v11

    .end local v11    # "responseCode":I
    .restart local v5    # "responseCode":I
    move-object v3, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v6, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    goto/16 :goto_19

    .end local v12    # "spaceNeeded":J
    .local v3, "downloadInterrupted":Z
    .local v4, "huc":Ljava/net/HttpURLConnection;
    .local v5, "is":Ljava/io/InputStream;
    .local v7, "responseCode":I
    :catchall_b
    move-exception v3

    move-object v6, v3

    move-object v3, v4

    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move-object v4, v5

    .end local v5    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    move v5, v7

    .end local v7    # "responseCode":I
    .local v5, "responseCode":I
    goto/16 :goto_19

    .end local v5    # "responseCode":I
    .local v3, "downloadInterrupted":Z
    .local v4, "huc":Ljava/net/HttpURLConnection;
    .local v6, "is":Ljava/io/InputStream;
    .restart local v7    # "responseCode":I
    :catchall_c
    move-exception v3

    move v5, v7

    .end local v7    # "responseCode":I
    .restart local v5    # "responseCode":I
    move-object/from16 v17, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .local v17, "is":Ljava/io/InputStream;
    move-object v6, v3

    move-object v3, v4

    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move-object/from16 v4, v17

    .end local v17    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    goto/16 :goto_19

    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    .local v3, "downloadInterrupted":Z
    .local v4, "fos":Ljava/io/FileOutputStream;
    .local v5, "huc":Ljava/net/HttpURLConnection;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v7    # "responseCode":I
    :catchall_d
    move-exception v1

    move-object v3, v5

    .end local v5    # "huc":Ljava/net/HttpURLConnection;
    .local v3, "huc":Ljava/net/HttpURLConnection;
    move v5, v7

    .end local v7    # "responseCode":I
    .local v5, "responseCode":I
    move-object/from16 v17, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v17, "fos":Ljava/io/FileOutputStream;
    move-object v4, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    move-object v6, v1

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object/from16 v2, v17

    .end local v17    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_19

    .line 584
    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "downloadInterrupted":Z
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .local v7, "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_1a
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    .end local v5    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v5, "huc":Ljava/net/HttpURLConnection;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    goto/16 :goto_16

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "responseCode":I
    .local v1, "fos":Ljava/io/FileOutputStream;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_1b
    move-exception v2

    move-object v4, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v1, v2

    move-object v2, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v5, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v5, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_16

    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "responseCode":I
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    .restart local v12    # "spaceNeeded":J
    :catch_1c
    move-exception v0

    move-object v1, v0

    move-object v2, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v5, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v5, "huc":Ljava/net/HttpURLConnection;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_16

    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "responseCode":I
    .local v0, "huc":Ljava/net/HttpURLConnection;
    .local v2, "responseCode":I
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_1d
    move-exception v1

    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move v7, v2

    .end local v2    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v2, v5

    .end local v5    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move-object v5, v0

    .end local v0    # "huc":Ljava/net/HttpURLConnection;
    .local v5, "huc":Ljava/net/HttpURLConnection;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_16

    .end local v5    # "huc":Ljava/net/HttpURLConnection;
    .local v0, "buffer":[B
    .local v1, "append":Z
    .local v2, "count":I
    .local v4, "error":Ljava/lang/String;
    .local v6, "file":Ljava/io/File;
    .local v7, "filename":Ljava/lang/String;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_1e
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    .end local v6    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    move-object v5, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v5    # "huc":Ljava/net/HttpURLConnection;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_16

    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "append":Z
    .end local v2    # "file":Ljava/io/File;
    .end local v7    # "responseCode":I
    .local v4, "error":Ljava/lang/String;
    .local v5, "fos":Ljava/io/FileOutputStream;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_1f
    move-exception v0

    move-object v1, v0

    move-object v2, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    move-object v5, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v5, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_16

    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "huc":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    .local v1, "fos":Ljava/io/FileOutputStream;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_20
    move-exception v2

    move-object v4, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v5, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v5    # "huc":Ljava/net/HttpURLConnection;
    move-object v1, v2

    move-object v2, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    goto/16 :goto_16

    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "huc":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    .local v4, "error":Ljava/lang/String;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_21
    move-exception v0

    move-object v2, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v5, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v5    # "huc":Ljava/net/HttpURLConnection;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object/from16 v17, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v1, v17

    goto/16 :goto_16

    .line 582
    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v12    # "spaceNeeded":J
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .local v7, "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_22
    move-exception v0

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v2, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v0

    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_13

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .restart local v5    # "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .local v7, "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_23
    move-exception v1

    move-object v2, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v4    # "huc":Ljava/net/HttpURLConnection;
    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    move-object/from16 v17, v5

    .end local v5    # "file":Ljava/io/File;
    .local v17, "file":Ljava/io/File;
    move-object v5, v1

    move-object/from16 v1, v17

    .end local v17    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto/16 :goto_13

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    .local v1, "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_24
    move-exception v2

    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v4    # "huc":Ljava/net/HttpURLConnection;
    move-object/from16 v17, v2

    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object/from16 v5, v17

    goto/16 :goto_13

    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "responseCode":I
    .local v0, "buffer":[B
    .local v1, "append":Z
    .local v2, "count":I
    .local v4, "error":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    .restart local v12    # "spaceNeeded":J
    :catch_25
    move-exception v0

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v2, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v5, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_13

    .end local v1    # "file":Ljava/io/File;
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v7    # "responseCode":I
    .local v0, "huc":Ljava/net/HttpURLConnection;
    .local v2, "responseCode":I
    .local v4, "error":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_26
    move-exception v1

    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    move v7, v2

    .end local v2    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v2, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object/from16 v17, v1

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object/from16 v5, v17

    move-object/from16 v18, v0

    .end local v0    # "huc":Ljava/net/HttpURLConnection;
    .local v18, "huc":Ljava/net/HttpURLConnection;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object/from16 v4, v18

    .end local v18    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_13

    .local v0, "buffer":[B
    .local v1, "append":Z
    .local v2, "count":I
    .local v4, "error":Ljava/lang/String;
    .local v6, "file":Ljava/io/File;
    .local v7, "filename":Ljava/lang/String;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_27
    move-exception v0

    move-object v5, v0

    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v2, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_13

    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "responseCode":I
    .local v4, "error":Ljava/lang/String;
    .local v5, "fos":Ljava/io/FileOutputStream;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_28
    move-exception v0

    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v2, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    move-object v5, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_13

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_29
    move-exception v1

    move-object v2, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v4    # "huc":Ljava/net/HttpURLConnection;
    move-object v5, v1

    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    goto/16 :goto_13

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    .local v1, "fos":Ljava/io/FileOutputStream;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_2a
    move-exception v2

    move-object v5, v2

    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v4    # "huc":Ljava/net/HttpURLConnection;
    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    goto/16 :goto_13

    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "responseCode":I
    .local v1, "fos":Ljava/io/FileOutputStream;
    .local v4, "error":Ljava/lang/String;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_2b
    move-exception v0

    move-object v5, v0

    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    move-object v6, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    goto/16 :goto_13

    .line 579
    .end local v0    # "error":Ljava/lang/String;
    .end local v7    # "responseCode":I
    .end local v12    # "spaceNeeded":J
    .local v1, "append":Z
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_2c
    move-exception v0

    move-object v6, v0

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_4

    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v7, "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_2d
    move-exception v0

    move-object v6, v0

    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v2, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_4

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .local v5, "file":Ljava/io/File;
    .local v7, "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_2e
    move-exception v1

    move-object v6, v1

    move-object v2, v7

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v4    # "huc":Ljava/net/HttpURLConnection;
    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    move-object v1, v5

    .end local v5    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v5    # "is":Ljava/io/InputStream;
    .local v0, "buffer":[B
    .local v1, "append":Z
    .local v2, "count":I
    .local v4, "error":Ljava/lang/String;
    .local v6, "file":Ljava/io/File;
    .local v7, "filename":Ljava/lang/String;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    .restart local v12    # "spaceNeeded":J
    :catch_2f
    move-exception v0

    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v2, v8

    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .local v7, "responseCode":I
    move-object v6, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_4

    .end local v0    # "error":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "responseCode":I
    .local v4, "error":Ljava/lang/String;
    .local v5, "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_30
    move-exception v0

    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v2, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object v6, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_4

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    .local v5, "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_31
    move-exception v1

    move-object v2, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v4    # "huc":Ljava/net/HttpURLConnection;
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .local v5, "is":Ljava/io/InputStream;
    move-object/from16 v17, v6

    .end local v6    # "file":Ljava/io/File;
    .restart local v17    # "file":Ljava/io/File;
    move-object v6, v1

    move-object/from16 v1, v17

    .end local v17    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto/16 :goto_4

    .end local v0    # "error":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "responseCode":I
    .local v1, "fos":Ljava/io/FileOutputStream;
    .local v4, "error":Ljava/lang/String;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_32
    move-exception v0

    move-object v2, v1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    move-object v5, v10

    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    move v7, v11

    .end local v11    # "responseCode":I
    .restart local v7    # "responseCode":I
    move-object v1, v6

    .end local v6    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    move-object v6, v0

    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .restart local v0    # "error":Ljava/lang/String;
    move-object v4, v9

    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    goto/16 :goto_4

    .line 566
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "huc":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    .local v5, "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    :catch_33
    move-exception v1

    move-object v1, v5

    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_f

    :catch_34
    move-exception v2

    goto/16 :goto_f

    .line 508
    .local v0, "buffer":[B
    .local v1, "append":Z
    .local v2, "count":I
    .local v4, "error":Ljava/lang/String;
    .local v5, "file":Ljava/io/File;
    .local v6, "fileTemp":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    :catch_35
    move-exception v6

    goto/16 :goto_c

    .line 495
    .end local v2    # "count":I
    .end local v4    # "error":Ljava/lang/String;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v12    # "spaceNeeded":J
    .local v0, "error":Ljava/lang/String;
    .local v1, "fos":Ljava/io/FileOutputStream;
    :catch_36
    move-exception v2

    goto/16 :goto_3

    .end local v0    # "error":Ljava/lang/String;
    .end local v9    # "huc":Ljava/net/HttpURLConnection;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "responseCode":I
    .local v1, "error":Ljava/lang/String;
    .local v2, "file":Ljava/io/File;
    .local v4, "huc":Ljava/net/HttpURLConnection;
    .local v5, "is":Ljava/io/InputStream;
    .local v6, "responseCode":I
    :cond_20
    move v0, v3

    .end local v3    # "downloadInterrupted":Z
    .local v0, "downloadInterrupted":Z
    goto/16 :goto_8

    .local v0, "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "downloadInterrupted":Z
    :cond_21
    move v0, v3

    .end local v3    # "downloadInterrupted":Z
    .local v0, "downloadInterrupted":Z
    goto/16 :goto_9

    .end local v0    # "downloadInterrupted":Z
    .end local v2    # "file":Ljava/io/File;
    .end local v5    # "is":Ljava/io/InputStream;
    .local v1, "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "downloadInterrupted":Z
    .local v4, "error":Ljava/lang/String;
    .local v6, "file":Ljava/io/File;
    .restart local v9    # "huc":Ljava/net/HttpURLConnection;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "responseCode":I
    .restart local v12    # "spaceNeeded":J
    :cond_22
    move-object v0, v4

    .end local v4    # "error":Ljava/lang/String;
    .local v0, "error":Ljava/lang/String;
    goto/16 :goto_10
.end method

.method public static dumbTextWrap(Ljava/lang/String;ILandroid/graphics/Paint;)Ljava/util/Vector;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "p"    # Landroid/graphics/Paint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    const-string v0, "\n"

    invoke-static {p0, v0}, Lcom/glu/android/GluUtil;->simpleTokenizer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 781
    .local v0, "lineTokens":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 782
    .local v2, "tokens":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 p0, 0x0

    .local p0, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 784
    invoke-virtual {v0, p0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, " "

    invoke-static {v1, v3, v2}, Lcom/glu/android/GluUtil;->simpleTokenizer(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    .line 786
    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 787
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 782
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 789
    :cond_1
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 791
    .local v1, "lines":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    int-to-float p0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float v4, p0, p1

    .line 792
    .local v4, "widthF":F
    const/4 p0, 0x0

    .line 794
    .local p0, "curWidth":F
    const/4 p1, 0x0

    .local p1, "tokensProcessed":I
    move v3, p1

    .line 796
    .end local v0    # "lineTokens":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    .end local p1    # "tokensProcessed":I
    .local v3, "tokensProcessed":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result p1

    if-ge v3, p1, :cond_7

    .line 798
    const-string p1, ""

    .line 799
    .local p1, "line":Ljava/lang/String;
    const/4 v5, 0x0

    .line 800
    .local v5, "widthSoFar":F
    const/4 v0, 0x0

    .line 804
    .local v0, "lineTokensProcessed":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v3, v6, :cond_2

    move v0, v3

    .line 826
    .end local v3    # "tokensProcessed":I
    .local v0, "tokensProcessed":I
    :goto_3
    invoke-virtual {v1, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v3, v0

    .line 827
    .end local v0    # "tokensProcessed":I
    .restart local v3    # "tokensProcessed":I
    goto :goto_1

    .line 807
    .local v0, "lineTokensProcessed":I
    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 809
    add-int/lit8 v0, v3, 0x1

    .line 810
    .end local v3    # "tokensProcessed":I
    .local v0, "tokensProcessed":I
    goto :goto_3

    .line 813
    .local v0, "lineTokensProcessed":I
    .restart local v3    # "tokensProcessed":I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "curWidth":F
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez v0, :cond_4

    const-string v6, ""

    :goto_4
    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/glu/android/GluUtil;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p0

    .line 815
    .restart local p0    # "curWidth":F
    add-float v6, v5, p0

    cmpl-float v6, v6, v4

    if-lez v6, :cond_5

    if-lez v0, :cond_5

    move v0, v3

    .line 816
    .end local v3    # "tokensProcessed":I
    .local v0, "tokensProcessed":I
    goto :goto_3

    .line 813
    .end local p0    # "curWidth":F
    .local v0, "lineTokensProcessed":I
    .restart local v3    # "tokensProcessed":I
    :cond_4
    const-string v6, " "

    goto :goto_4

    .line 818
    .restart local p0    # "curWidth":F
    :cond_5
    add-float/2addr v5, p0

    .line 820
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "line":Ljava/lang/String;
    if-nez v0, :cond_6

    const-string v6, ""

    :goto_5
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 822
    .restart local p1    # "line":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 823
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 820
    .end local p1    # "line":Ljava/lang/String;
    :cond_6
    const-string v6, " "

    goto :goto_5

    .line 829
    .end local v0    # "lineTokensProcessed":I
    .end local v5    # "widthSoFar":F
    :cond_7
    return-object v1
.end method

.method public static final filePathNoEnder(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const-string v4, "."

    const-string v3, ""

    .line 168
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    const-string v0, "."

    move-object v0, v4

    .line 177
    :goto_0
    return-object v0

    .line 171
    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 174
    :cond_2
    if-eqz p0, :cond_3

    const-string v0, ""

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    :cond_3
    const-string v0, "."

    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v0, p0

    .line 177
    goto :goto_0
.end method

.method public static final filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/glu/android/GluUtil;->filePathNoEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static fixedToFloat(I)F
    .locals 2
    .param p0, "i"    # I

    .prologue
    .line 158
    int-to-float v0, p0

    const/high16 v1, 0x47800000    # 65536.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static floatToFixed(F)I
    .locals 1
    .param p0, "f"    # F

    .prologue
    .line 153
    const/high16 v0, 0x47800000    # 65536.0f

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method public static getBytesStringNice(I)Ljava/lang/String;
    .locals 7
    .param p0, "number"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x3

    const-string v5, ","

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :cond_0
    :goto_0
    return-object v0

    .line 104
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getBytesStringNice(J)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # J

    .prologue
    .line 96
    long-to-int v0, p0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getBytesStringNice(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 763
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v1}, Lcom/glu/android/GameLet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 764
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1
.end method

.method public static getExpectedChecksum()J
    .locals 2

    .prologue
    .line 329
    sget-boolean v0, Lcom/glu/android/GameLet;->supportsAtitcCompression:Z

    if-eqz v0, :cond_0

    .line 330
    const-wide v0, 0x344ef303dfL

    .line 332
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x5086e1fd67L

    goto :goto_0
.end method

.method public static getExpectedFilesize()J
    .locals 2

    .prologue
    .line 337
    sget-boolean v0, Lcom/glu/android/GameLet;->supportsAtitcCompression:Z

    if-eqz v0, :cond_0

    .line 338
    const-wide/32 v0, 0x32c34b6

    .line 340
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0x514de85

    goto :goto_0
.end method

.method public static getHexValue(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    .line 57
    if-gez p0, :cond_0

    add-int/lit16 v1, p0, 0x100

    move v0, v1

    .line 59
    .local v0, "unsignedB":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v2, v0, 0x4

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getMiniHexValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    and-int/lit8 v2, v0, 0xf

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getMiniHexValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "unsignedB":I
    :cond_0
    move v0, p0

    .line 57
    goto :goto_0
.end method

.method public static getIntHexNice(I)Ljava/lang/String;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 37
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "res":Ljava/lang/String;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKilobyteString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # I

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0xa

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getBytesStringNice(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKilobyteString(J)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # J

    .prologue
    .line 110
    long-to-int v0, p0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getKilobyteString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalSaveDirectory()Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-string v1, "save"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/glu/android/GameLet;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMegabyteString(I)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # I

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 v1, p0, 0x14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMegabyteString(J)Ljava/lang/String;
    .locals 1
    .param p0, "bytes"    # J

    .prologue
    .line 116
    long-to-int v0, p0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getMegabyteString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMiniHexValue(I)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # I

    .prologue
    .line 47
    const/16 v0, 0x30

    .line 49
    .local v0, "c":C
    const/16 v1, 0x9

    if-gt p0, v1, :cond_0

    add-int/lit8 v1, p0, 0x30

    int-to-char v0, v1

    .line 52
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 50
    :cond_0
    const/16 v1, 0xa

    sub-int v1, p0, v1

    add-int/lit8 v1, v1, 0x41

    int-to-char v0, v1

    goto :goto_0
.end method

.method public static getNativeProperties()Ljava/util/Hashtable;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    sget-object v2, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    .line 281
    .local v2, "game":Lcom/glu/android/GameLet;
    :try_start_0
    new-instance v7, Ljava/util/Hashtable;

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    .line 283
    .local v7, "props":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "properties.dat"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 285
    .local v6, "nativePath":Ljava/lang/String;
    new-instance v1, Ljava/io/FileReader;

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 287
    .local v1, "fr":Ljava/io/FileReader;
    const/4 v5, 0x0

    .line 288
    .local v5, "line":Ljava/lang/String;
    const/4 v3, -0x1

    .line 290
    .local v3, "index":I
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/glu/android/GluUtil;->readLine(Ljava/io/FileReader;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 292
    const-string v9, "#"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 295
    const-string v9, "="

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v9, -0x1

    if-eq v3, v9, :cond_0

    .line 297
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 300
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v7, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 305
    .end local v1    # "fr":Ljava/io/FileReader;
    .end local v3    # "index":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "nativePath":Ljava/lang/String;
    .end local v7    # "props":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 306
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get native properties: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 309
    const/4 v9, 0x0

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v9

    .restart local v1    # "fr":Ljava/io/FileReader;
    .restart local v3    # "index":I
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "nativePath":Ljava/lang/String;
    .restart local v7    # "props":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move-object v9, v7

    .line 304
    goto :goto_1
.end method

.method public static getOldLocalSaveDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrintableChar(B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 64
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-le p0, v0, :cond_1

    .line 65
    :cond_0
    const-string v0, "."

    .line 67
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getRandomInt(I)I
    .locals 2
    .param p0, "endExclusive"    # I

    .prologue
    .line 845
    const/4 v0, 0x0

    const/4 v1, 0x1

    sub-int v1, p0, v1

    invoke-static {v0, v1}, Lcom/glu/android/GluUtil;->getRandomInt(II)I

    move-result v0

    return v0
.end method

.method public static getRandomInt(II)I
    .locals 2
    .param p0, "begin"    # I
    .param p1, "endInclusive"    # I

    .prologue
    .line 848
    sget-object v0, Lcom/glu/android/GluUtil;->randomizer:Ljava/util/Random;

    sub-int v1, p1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static getRelativeFilename(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x2f

    .line 211
    invoke-static {p0}, Lcom/glu/android/GluUtil;->filePathNoEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "fixedFilename":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move-object v1, v0

    .line 216
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getString(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 757
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v1}, Lcom/glu/android/GameLet;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 758
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)F
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 774
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static loadDownloadResumeStatus()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 654
    sget-object v5, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    if-nez v5, :cond_1

    .line 656
    const-string v5, "warning: loading download resume status with null download view instance"

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 680
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dlstatus.dat"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 661
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 667
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 668
    .local v3, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v4

    .line 669
    .local v4, "result":I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 671
    if-ne v4, v7, :cond_2

    .line 672
    sget-object v5, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 677
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "result":I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 678
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error loading DL status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 673
    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "result":I
    :cond_2
    if-nez v4, :cond_3

    .line 674
    :try_start_1
    sget-object v5, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    goto :goto_0

    .line 676
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected data in dlstatus.dat: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static loadUpgradeStatus()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 699
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "upgradeStatus.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 700
    .local v4, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 702
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v8

    .line 718
    :goto_0
    return v6

    .line 706
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 707
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x2

    new-array v0, v6, [B

    .line 708
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 709
    .local v1, "count":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 710
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    sput v6, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    .line 711
    const/4 v6, 0x1

    aget-byte v6, v0, v6

    sput v6, Lcom/glu/android/GameLet;->numTimesAskedForUpgrade:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :goto_1
    move v6, v9

    .line 718
    goto :goto_0

    .line 713
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 714
    .local v2, "ex":Ljava/lang/Exception;
    sput v8, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    .line 715
    sput v8, Lcom/glu/android/GameLet;->numTimesAskedForUpgrade:I

    .line 716
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading upgrade status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static performChecksum(Ljava/io/File;)Ljava/lang/String;
    .locals 13
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 348
    const-wide/16 v3, 0x0

    .line 349
    .local v3, "checksum":J
    const/4 v2, 0x0

    .line 350
    .local v2, "bytesRead":I
    const-wide/16 v6, 0x0

    .line 352
    .local v6, "filesize":J
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 354
    :cond_0
    const-string v8, "performChecksum() to engineer: Stop passing me bad files!!"

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 356
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    throw v8

    .line 360
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 362
    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    .line 363
    const v8, 0x7f06000b

    invoke-static {v8}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 382
    :goto_0
    return-object v8

    .line 365
    :cond_2
    const/16 v0, 0x400

    .line 366
    .local v0, "BLOCK_BIT":I
    const/high16 v1, 0x20000

    .line 369
    .local v1, "NEXT_BLOCK_BIT":I
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    long-to-int v9, v6

    const/16 v10, 0x400

    const/high16 v11, 0x20000

    invoke-static {v8, v9, v10, v11}, Lcom/glu/android/GluJNI;->nativeChecksumJ(Ljava/lang/String;III)J

    move-result-wide v3

    .line 371
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checksum result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   expected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedChecksum()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedChecksum()J

    move-result-wide v8

    cmp-long v8, v3, v8

    if-eqz v8, :cond_3

    .line 374
    const v8, 0x7f06000c

    invoke-static {v8}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 375
    .end local v0    # "BLOCK_BIT":I
    .end local v1    # "NEXT_BLOCK_BIT":I
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 376
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f060013

    invoke-static {v9}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 380
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v0    # "BLOCK_BIT":I
    .restart local v1    # "NEXT_BLOCK_BIT":I
    :cond_3
    const-string v8, "Checksum passed."

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 382
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static performChecksumV1(Ljava/io/File;)Ljava/lang/String;
    .locals 14
    .param p0, "f"    # Ljava/io/File;

    .prologue
    const-wide v12, 0x51a5d4576eL

    const-wide/32 v9, 0x52a9c08

    .line 388
    const-wide/16 v3, 0x0

    .line 389
    .local v3, "checksum":J
    const/4 v2, 0x0

    .line 390
    .local v2, "bytesRead":I
    const-wide/16 v6, 0x0

    .line 392
    .local v6, "filesize":J
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 394
    :cond_0
    const-string v8, "performChecksum() to engineer: Stop passing me bad files!!"

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 396
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8}, Ljava/lang/RuntimeException;-><init>()V

    throw v8

    .line 400
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 402
    cmp-long v8, v6, v9

    if-eqz v8, :cond_2

    .line 403
    const v8, 0x7f06000b

    invoke-static {v8}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-wide/32 v11, 0x52a9c08

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 422
    :goto_0
    return-object v8

    .line 405
    :cond_2
    const/16 v0, 0x400

    .line 406
    .local v0, "BLOCK_BIT":I
    const/high16 v1, 0x20000

    .line 409
    .local v1, "NEXT_BLOCK_BIT":I
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    long-to-int v9, v6

    const/16 v10, 0x400

    const/high16 v11, 0x20000

    invoke-static {v8, v9, v10, v11}, Lcom/glu/android/GluJNI;->nativeChecksumJ(Ljava/lang/String;III)J

    move-result-wide v3

    .line 411
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checksum result: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "   expected: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-wide v9, 0x51a5d4576eL

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 413
    cmp-long v8, v3, v12

    if-eqz v8, :cond_3

    .line 414
    const v8, 0x7f06000c

    invoke-static {v8}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto :goto_0

    .line 415
    .end local v0    # "BLOCK_BIT":I
    .end local v1    # "NEXT_BLOCK_BIT":I
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 416
    .local v5, "ex":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f060013

    invoke-static {v9}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 420
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v0    # "BLOCK_BIT":I
    .restart local v1    # "NEXT_BLOCK_BIT":I
    :cond_3
    const-string v8, "Checksum passed."

    invoke-static {v8}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 422
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public static prepareSDCard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 427
    new-instance v0, Ljava/io/File;

    const-string v2, "/sdcard/glu/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .local v0, "gluDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/glu/skob2/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 430
    .local v1, "skob2Dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 438
    :goto_0
    return v2

    .line 434
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 435
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    .line 436
    goto :goto_0

    .line 438
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static readLine(Ljava/io/FileReader;)Ljava/lang/String;
    .locals 6
    .param p0, "fr"    # Ljava/io/FileReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, ""

    .line 187
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v2, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 189
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/16 v0, 0x61

    .line 190
    .local v0, "c":C
    const/4 v1, -0x1

    .line 192
    .local v1, "ic":I
    :goto_0
    invoke-virtual {p0}, Ljava/io/FileReader;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 194
    int-to-char v0, v1

    .line 196
    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 205
    :goto_1
    return-object v3

    .line 199
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    const/4 v3, 0x0

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static replaceAllNotRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "oldStr"    # Ljava/lang/String;
    .param p2, "newStr"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 129
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 134
    :cond_0
    return-object p0
.end method

.method public static saveDownloadResumeStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 636
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    if-nez v3, :cond_0

    .line 638
    const-string v3, "warning: saving download resume status with null download view instance"

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 650
    :goto_0
    return-void

    .line 642
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "dlstatus.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 645
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iget-boolean v3, v3, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 646
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 647
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 648
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving DL status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    move v3, v5

    .line 645
    goto :goto_1
.end method

.method public static saveUpgradeStatus()V
    .locals 5

    .prologue
    .line 686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "upgradeStatus.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 689
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget v3, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 690
    sget v3, Lcom/glu/android/GameLet;->numTimesAskedForUpgrade:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 691
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 692
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 693
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving upgrade status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static simpleTokenizer(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Vector;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/glu/android/GluUtil;->simpleTokenizer(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public static simpleTokenizer(Ljava/lang/String;Ljava/lang/String;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 4
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "delim"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    .local p2, "tokens":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 77
    new-instance p2, Ljava/util/Vector;

    .end local p2    # "tokens":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/Vector;-><init>()V

    .line 79
    .restart local p2    # "tokens":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    neg-int v1, v3

    .line 80
    .local v1, "index":I
    const/4 v2, 0x0

    .line 81
    .local v2, "prevIndex":I
    const/4 v0, -0x1

    .line 83
    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 85
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v2, v1, v3

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 93
    return-object p2
.end method

.method public static final stringToByteArray(Ljava/lang/String;)[B
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/GluUtil;->charArrayToByteArray([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static sumFloatArray([F)F
    .locals 3
    .param p0, "arr"    # [F

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "res":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 146
    aget v2, p0, v0

    add-float/2addr v1, v2

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return v1
.end method
