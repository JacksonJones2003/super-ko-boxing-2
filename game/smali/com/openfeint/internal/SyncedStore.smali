.class public Lcom/openfeint/internal/SyncedStore;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/SyncedStore$Reader;,
        Lcom/openfeint/internal/SyncedStore$Editor;
    }
.end annotation


# static fields
.field private static final FILENAME:Ljava/lang/String; = "of_prefs"

.field private static final TAG:Ljava/lang/String; = "DistributedPrefs"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    .line 82
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 83
    invoke-virtual {p0}, Lcom/openfeint/internal/SyncedStore;->load()V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/openfeint/internal/SyncedStore;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/openfeint/internal/SyncedStore;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/openfeint/internal/SyncedStore;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lcom/openfeint/internal/SyncedStore;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method


# virtual methods
.method edit()Lcom/openfeint/internal/SyncedStore$Editor;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 49
    new-instance v0, Lcom/openfeint/internal/SyncedStore$Editor;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/SyncedStore$Editor;-><init>(Lcom/openfeint/internal/SyncedStore;)V

    return-object v0
.end method

.method public load()V
    .locals 28

    .prologue
    .line 89
    const/16 v24, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    .line 90
    const/4 v12, 0x0

    .line 92
    .local v12, "mustSaveAfterLoad":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    .line 94
    .local v21, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "of_prefs"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v14

    .line 96
    .local v14, "myStore":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 98
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 99
    .local v20, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v24, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 100
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v13, 0x0

    .line 102
    .local v13, "myInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 103
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_0

    .line 104
    move-object v13, v3

    .line 109
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v15

    .line 110
    .local v15, "myStoreCPath":Ljava/lang/String;
    if-eqz v13, :cond_5

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 111
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move-object v0, v15

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 113
    .local v23, "underDataDir":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 114
    .restart local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v19, Ljava/io/File;

    move-object v0, v3

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v19, "otherStore":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v24

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v26

    cmp-long v24, v24, v26

    if-gez v24, :cond_2

    .line 118
    const/4 v12, 0x1

    .line 120
    move-object/from16 v14, v19

    goto :goto_0

    .line 124
    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v19    # "otherStore":Ljava/io/File;
    :cond_3
    const/4 v10, 0x0

    .line 125
    .local v10, "is":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 127
    .local v17, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 128
    .end local v10    # "is":Ljava/io/InputStream;
    .local v11, "is":Ljava/io/InputStream;
    :try_start_2
    new-instance v18, Ljava/io/ObjectInputStream;

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 129
    .end local v17    # "ois":Ljava/io/ObjectInputStream;
    .local v18, "ois":Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual/range {v18 .. v18}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v16

    .line 130
    .local v16, "o":Ljava/lang/Object;
    if-eqz v16, :cond_4

    move-object/from16 v0, v16

    instance-of v0, v0, Ljava/util/HashMap;

    move/from16 v24, v0

    if-eqz v24, :cond_4

    .line 131
    check-cast v16, Ljava/util/HashMap;

    .end local v16    # "o":Ljava/lang/Object;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_12
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 143
    :cond_4
    if-eqz v18, :cond_8

    .line 144
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 154
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v18    # "ois":Ljava/io/ObjectInputStream;
    .end local v23    # "underDataDir":Ljava/lang/String;
    :cond_5
    :goto_1
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    if-nez v24, :cond_6

    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 158
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 161
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v13    # "myInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "myStoreCPath":Ljava/lang/String;
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_2
    if-eqz v12, :cond_7

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/openfeint/internal/SyncedStore;->save()V

    .line 165
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v7, v24, v21

    .line 166
    .local v7, "elapsed":J
    const-string v24, "DistributedPrefs"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Loading prefs took "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    new-instance v26, Ljava/lang/Long;

    move-object/from16 v0, v26

    move-wide v1, v7

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " millis"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void

    .line 145
    .end local v7    # "elapsed":J
    .restart local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v13    # "myInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "myStoreCPath":Ljava/lang/String;
    .restart local v18    # "ois":Ljava/io/ObjectInputStream;
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v23    # "underDataDir":Ljava/lang/String;
    :cond_8
    if-eqz v11, :cond_5

    .line 146
    :try_start_6
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 148
    :catch_0
    move-exception v24

    move-object/from16 v5, v24

    .line 149
    .local v5, "e":Ljava/io/IOException;
    :try_start_7
    const-string v24, "DistributedPrefs"

    const-string v25, "IOException while cleaning up"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 155
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v13    # "myInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "myStoreCPath":Ljava/lang/String;
    .end local v18    # "ois":Ljava/io/ObjectInputStream;
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v23    # "underDataDir":Ljava/lang/String;
    :catch_1
    move-exception v24

    move-object/from16 v6, v24

    .line 156
    .local v6, "e1":Ljava/io/IOException;
    :try_start_8
    const-string v24, "DistributedPrefs"

    const-string v25, "broken"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_2

    .line 133
    .end local v6    # "e1":Ljava/io/IOException;
    .restart local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v13    # "myInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "myStoreCPath":Ljava/lang/String;
    .restart local v17    # "ois":Ljava/io/ObjectInputStream;
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v23    # "underDataDir":Ljava/lang/String;
    :catch_2
    move-exception v24

    move-object/from16 v5, v24

    .line 134
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_9
    const-string v24, "DistributedPrefs"

    const-string v25, "Couldn\'t open of_prefs"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 143
    if-eqz v17, :cond_9

    .line 144
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 148
    :catch_3
    move-exception v24

    move-object/from16 v5, v24

    .line 149
    .local v5, "e":Ljava/io/IOException;
    :try_start_b
    const-string v24, "DistributedPrefs"

    const-string v25, "IOException while cleaning up"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_1

    .line 158
    .end local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v13    # "myInfo":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "myStoreCPath":Ljava/lang/String;
    .end local v17    # "ois":Ljava/io/ObjectInputStream;
    .end local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v23    # "underDataDir":Ljava/lang/String;
    :catchall_0
    move-exception v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v24

    .line 145
    .restart local v4    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v13    # "myInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v15    # "myStoreCPath":Ljava/lang/String;
    .restart local v17    # "ois":Ljava/io/ObjectInputStream;
    .restart local v20    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v23    # "underDataDir":Ljava/lang/String;
    :cond_9
    if-eqz v10, :cond_5

    .line 146
    :try_start_c
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    .line 135
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v24

    move-object/from16 v5, v24

    .line 136
    .local v5, "e":Ljava/io/StreamCorruptedException;
    :goto_4
    :try_start_d
    const-string v24, "DistributedPrefs"

    const-string v25, "StreamCorruptedException"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 143
    if-eqz v17, :cond_a

    .line 144
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_1

    .line 148
    :catch_5
    move-exception v24

    move-object/from16 v5, v24

    .line 149
    .local v5, "e":Ljava/io/IOException;
    :try_start_f
    const-string v24, "DistributedPrefs"

    const-string v25, "IOException while cleaning up"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 145
    .local v5, "e":Ljava/io/StreamCorruptedException;
    :cond_a
    if-eqz v10, :cond_5

    .line 146
    :try_start_10
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    .line 137
    .end local v5    # "e":Ljava/io/StreamCorruptedException;
    :catch_6
    move-exception v24

    move-object/from16 v5, v24

    .line 138
    .local v5, "e":Ljava/io/IOException;
    :goto_5
    :try_start_11
    const-string v24, "DistributedPrefs"

    const-string v25, "IOException while reading"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 143
    if-eqz v17, :cond_b

    .line 144
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 148
    :catch_7
    move-exception v24

    move-object/from16 v5, v24

    .line 149
    :try_start_13
    const-string v24, "DistributedPrefs"

    const-string v25, "IOException while cleaning up"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    .line 145
    :cond_b
    if-eqz v10, :cond_5

    .line 146
    :try_start_14
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_1

    .line 139
    .end local v5    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v24

    move-object/from16 v5, v24

    .line 140
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    :goto_6
    :try_start_15
    const-string v24, "DistributedPrefs"

    const-string v25, "ClassNotFoundException"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 143
    if-eqz v17, :cond_c

    .line 144
    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_1

    .line 148
    :catch_9
    move-exception v24

    move-object/from16 v5, v24

    .line 149
    .local v5, "e":Ljava/io/IOException;
    :try_start_17
    const-string v24, "DistributedPrefs"

    const-string v25, "IOException while cleaning up"

    invoke-static/range {v24 .. v25}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto/16 :goto_1

    .line 145
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    :cond_c
    if-eqz v10, :cond_5

    .line 146
    :try_start_18
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_1

    .line 142
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_1
    move-exception v24

    .line 143
    :goto_7
    if-eqz v17, :cond_e

    .line 144
    :try_start_19
    invoke-virtual/range {v17 .. v17}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 150
    :cond_d
    :goto_8
    :try_start_1a
    throw v24
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 145
    :cond_e
    if-eqz v10, :cond_d

    .line 146
    :try_start_1b
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_8

    .line 148
    :catch_a
    move-exception v25

    move-object/from16 v5, v25

    .line 149
    .local v5, "e":Ljava/io/IOException;
    :try_start_1c
    const-string v25, "DistributedPrefs"

    const-string v26, "IOException while cleaning up"

    invoke-static/range {v25 .. v26}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_1
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    goto :goto_8

    .line 142
    .end local v5    # "e":Ljava/io/IOException;
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catchall_2
    move-exception v24

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_7

    .end local v10    # "is":Ljava/io/InputStream;
    .end local v17    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v18    # "ois":Ljava/io/ObjectInputStream;
    :catchall_3
    move-exception v24

    move-object/from16 v17, v18

    .end local v18    # "ois":Ljava/io/ObjectInputStream;
    .restart local v17    # "ois":Ljava/io/ObjectInputStream;
    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 139
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_b
    move-exception v24

    move-object/from16 v5, v24

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_6

    .end local v10    # "is":Ljava/io/InputStream;
    .end local v17    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v18    # "ois":Ljava/io/ObjectInputStream;
    :catch_c
    move-exception v24

    move-object/from16 v5, v24

    move-object/from16 v17, v18

    .end local v18    # "ois":Ljava/io/ObjectInputStream;
    .restart local v17    # "ois":Ljava/io/ObjectInputStream;
    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 137
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_d
    move-exception v24

    move-object/from16 v5, v24

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_5

    .end local v10    # "is":Ljava/io/InputStream;
    .end local v17    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v18    # "ois":Ljava/io/ObjectInputStream;
    :catch_e
    move-exception v24

    move-object/from16 v5, v24

    move-object/from16 v17, v18

    .end local v18    # "ois":Ljava/io/ObjectInputStream;
    .restart local v17    # "ois":Ljava/io/ObjectInputStream;
    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 135
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_f
    move-exception v24

    move-object/from16 v5, v24

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .end local v10    # "is":Ljava/io/InputStream;
    .end local v17    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v18    # "ois":Ljava/io/ObjectInputStream;
    :catch_10
    move-exception v24

    move-object/from16 v5, v24

    move-object/from16 v17, v18

    .end local v18    # "ois":Ljava/io/ObjectInputStream;
    .restart local v17    # "ois":Ljava/io/ObjectInputStream;
    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_4

    .line 133
    .end local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    :catch_11
    move-exception v24

    move-object/from16 v5, v24

    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_3

    .end local v10    # "is":Ljava/io/InputStream;
    .end local v17    # "ois":Ljava/io/ObjectInputStream;
    .restart local v11    # "is":Ljava/io/InputStream;
    .restart local v18    # "ois":Ljava/io/ObjectInputStream;
    :catch_12
    move-exception v24

    move-object/from16 v5, v24

    move-object/from16 v17, v18

    .end local v18    # "ois":Ljava/io/ObjectInputStream;
    .restart local v17    # "ois":Ljava/io/ObjectInputStream;
    move-object v10, v11

    .end local v11    # "is":Ljava/io/InputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    goto/16 :goto_3
.end method

.method read()Lcom/openfeint/internal/SyncedStore$Reader;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 69
    new-instance v0, Lcom/openfeint/internal/SyncedStore$Reader;

    invoke-direct {v0, p0}, Lcom/openfeint/internal/SyncedStore$Reader;-><init>(Lcom/openfeint/internal/SyncedStore;)V

    return-object v0
.end method

.method public save()V
    .locals 7

    .prologue
    const-string v4, "IOException while cleaning up"

    const-string v4, "DistributedPrefs"

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "os":Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 173
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 175
    :try_start_0
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mContext:Landroid/content/Context;

    const-string v5, "of_prefs"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 176
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 177
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_1
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 182
    if-eqz v2, :cond_1

    .line 183
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_1
    move-object v1, v2

    .line 193
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :goto_2
    return-void

    .line 184
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :cond_1
    if-eqz v3, :cond_0

    .line 185
    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 188
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    const-string v4, "DistributedPrefs"

    const-string v5, "IOException while cleaning up"

    invoke-static {v4, v5}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 190
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_1

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v4

    .line 178
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v4

    move-object v0, v4

    .line 179
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_5
    const-string v4, "DistributedPrefs"

    const-string v5, "Couldn\'t open of_prefs for writing"

    invoke-static {v4, v5}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 182
    if-eqz v1, :cond_3

    .line 183
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 190
    :cond_2
    :goto_4
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    .line 184
    :cond_3
    if-eqz v3, :cond_2

    .line 185
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 187
    :catch_2
    move-exception v4

    move-object v0, v4

    .line 188
    :try_start_8
    const-string v4, "DistributedPrefs"

    const-string v5, "IOException while cleaning up"

    invoke-static {v4, v5}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 190
    iget-object v4, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_2

    :catchall_1
    move-exception v4

    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v4

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v4

    .line 182
    :goto_5
    if-eqz v1, :cond_5

    .line 183
    :try_start_9
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 190
    :cond_4
    :goto_6
    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    :goto_7
    throw v4

    .line 184
    :cond_5
    if-eqz v3, :cond_4

    .line 185
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_6

    .line 187
    :catch_3
    move-exception v5

    move-object v0, v5

    .line 188
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_b
    const-string v5, "DistributedPrefs"

    const-string v6, "IOException while cleaning up"

    invoke-static {v5, v6}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 190
    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_7

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v4

    iget-object v5, p0, Lcom/openfeint/internal/SyncedStore;->mLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v4

    .line 181
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_5

    .line 178
    .end local v1    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v4

    move-object v0, v4

    move-object v1, v2

    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3
.end method
