.class Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAndCallback"
.end annotation


# instance fields
.field public final callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

.field public final item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V
    .locals 0
    .param p2, "_item"    # Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .param p3, "_cb"    # Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->item:Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .line 186
    iput-object p3, p0, Lcom/openfeint/internal/ui/WebViewCache$ItemAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .line 187
    return-void
.end method
