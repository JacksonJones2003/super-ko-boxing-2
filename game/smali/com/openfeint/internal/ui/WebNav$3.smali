.class Lcom/openfeint/internal/ui/WebNav$3;
.super Lcom/openfeint/internal/ui/WebViewCacheCallback;
.source "WebNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebNav;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebNav;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$3;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebViewCacheCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public pathLoaded(Ljava/lang/String;)V
    .locals 4
    .param p1, "itemPath"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$3;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-static {v1}, Lcom/openfeint/internal/ui/WebNav;->access$100(Lcom/openfeint/internal/ui/WebNav;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    invoke-static {p1}, Lcom/openfeint/internal/ui/WebViewCache;->getItemUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "url":Ljava/lang/String;
    const-string v1, "WebUI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$3;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-static {v1}, Lcom/openfeint/internal/ui/WebNav;->access$100(Lcom/openfeint/internal/ui/WebNav;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 134
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
