.class public Lcom/openfeint/internal/SyncedStore$Reader;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/SyncedStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Reader"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/SyncedStore;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/SyncedStore;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/openfeint/internal/SyncedStore$Reader;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore$Reader;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-static {v0}, Lcom/openfeint/internal/SyncedStore;->access$100(Lcom/openfeint/internal/SyncedStore;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 64
    return-void
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v1, p0, Lcom/openfeint/internal/SyncedStore$Reader;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-static {v1}, Lcom/openfeint/internal/SyncedStore;->access$000(Lcom/openfeint/internal/SyncedStore;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 55
    .local v0, "rv":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore$Reader;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-static {v0}, Lcom/openfeint/internal/SyncedStore;->access$000(Lcom/openfeint/internal/SyncedStore;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
