.class public Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataStorageHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 750
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$DataStorageHelper;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    .line 751
    const-string v0, "manifest.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 752
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 756
    const-string v0, "CREATE TABLE manifest (PATH TEXT PRIMARY KEY, HASH TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "a"    # I
    .param p3, "b"    # I

    .prologue
    .line 762
    return-void
.end method
