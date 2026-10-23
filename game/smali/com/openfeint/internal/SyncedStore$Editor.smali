.class public Lcom/openfeint/internal/SyncedStore$Editor;
.super Ljava/lang/Object;
.source "SyncedStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/SyncedStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Editor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/SyncedStore;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/SyncedStore;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/openfeint/internal/SyncedStore$Editor;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore$Editor;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore;->save()V

    .line 43
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore$Editor;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-static {v0}, Lcom/openfeint/internal/SyncedStore;->access$100(Lcom/openfeint/internal/SyncedStore;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 44
    return-void
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
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
    .line 38
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/openfeint/internal/SyncedStore$Editor;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-static {v1}, Lcom/openfeint/internal/SyncedStore;->access$000(Lcom/openfeint/internal/SyncedStore;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore$Editor;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-static {v0}, Lcom/openfeint/internal/SyncedStore;->access$000(Lcom/openfeint/internal/SyncedStore;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/openfeint/internal/SyncedStore$Editor;->this$0:Lcom/openfeint/internal/SyncedStore;

    invoke-static {v0}, Lcom/openfeint/internal/SyncedStore;->access$000(Lcom/openfeint/internal/SyncedStore;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method
