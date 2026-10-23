.class Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathAndCallback"
.end annotation


# instance fields
.field public final callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

.field public final path:Ljava/lang/String;

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method public constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)V
    .locals 0
    .param p2, "_path"    # Ljava/lang/String;
    .param p3, "_cb"    # Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .prologue
    .line 193
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->path:Ljava/lang/String;

    .line 195
    iput-object p3, p0, Lcom/openfeint/internal/ui/WebViewCache$PathAndCallback;->callback:Lcom/openfeint/internal/ui/WebViewCacheCallback;

    .line 196
    return-void
.end method
