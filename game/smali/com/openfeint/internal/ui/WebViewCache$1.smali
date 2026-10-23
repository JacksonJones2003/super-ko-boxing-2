.class Lcom/openfeint/internal/ui/WebViewCache$1;
.super Landroid/os/Handler;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebViewCache;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 267
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 279
    .end local p0    # "this":Lcom/openfeint/internal/ui/WebViewCache$1;
    :goto_0
    return-void

    .line 269
    .restart local p0    # "this":Lcom/openfeint/internal/ui/WebViewCache$1;
    :pswitch_0
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/openfeint/internal/ui/WebViewCache$1;
    check-cast p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;

    invoke-static {v0, p0}, Lcom/openfeint/internal/ui/WebViewCache;->access$000(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$ManifestData;)V

    goto :goto_0

    .line 272
    .restart local p0    # "this":Lcom/openfeint/internal/ui/WebViewCache$1;
    :pswitch_1
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/openfeint/internal/ui/WebViewCache$1;
    check-cast p0, Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, p0, v1}, Lcom/openfeint/internal/ui/WebViewCache;->access$100(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 275
    .restart local p0    # "this":Lcom/openfeint/internal/ui/WebViewCache$1;
    :pswitch_2
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iput-object v0, v1, Lcom/openfeint/internal/ui/WebViewCache;->clientManifest:Ljava/util/Map;

    .line 276
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$1;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-static {v0}, Lcom/openfeint/internal/ui/WebViewCache;->access$200(Lcom/openfeint/internal/ui/WebViewCache;)V

    goto :goto_0

    .line 267
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
