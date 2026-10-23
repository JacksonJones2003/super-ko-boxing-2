.class Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManifestItem"
.end annotation


# instance fields
.field public dependentObjects:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public hash:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;)V
    .locals 2
    .param p2, "item"    # Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iget-object v0, p2, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p2, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    .line 127
    return-void
.end method

.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "_path"    # Ljava/lang/String;
    .param p3, "_hash"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->path:Ljava/lang/String;

    iput-object p3, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->hash:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    return-void
.end method
