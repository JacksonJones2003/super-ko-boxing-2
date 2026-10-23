.class public Lcom/verizon/vcast/apps/DatabaseHelper;
.super Ljava/lang/Object;
.source "DatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/vcast/apps/DatabaseHelper$OpenHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "timeStore.db"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final INSERT:Ljava/lang/String; = "insert into table1(name) values (?)"

.field private static final TABLE_NAME:Ljava/lang/String; = "table1"


# instance fields
.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private insertStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->context:Landroid/content/Context;

    .line 27
    new-instance v0, Lcom/verizon/vcast/apps/DatabaseHelper$OpenHelper;

    iget-object v1, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/DatabaseHelper$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 28
    .local v0, "openHelper":Lcom/verizon/vcast/apps/DatabaseHelper$OpenHelper;
    invoke-virtual {v0}, Lcom/verizon/vcast/apps/DatabaseHelper$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 29
    iget-object v1, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "insert into table1(name) values (?)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 30
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    :cond_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    iget-object v0, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table1"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public insert(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public selectAll()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 51
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/verizon/vcast/apps/DatabaseHelper;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "table1"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "name"

    aput-object v4, v2, v10

    .line 53
    const-string v7, "name desc"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 52
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 54
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    .line 55
    if-nez v0, :cond_0

    .line 59
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_2
    return-object v9
.end method
