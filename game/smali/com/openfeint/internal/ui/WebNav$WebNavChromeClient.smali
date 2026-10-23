.class Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebNav.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebNav;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WebNavChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/ui/WebNav;


# direct methods
.method private constructor <init>(Lcom/openfeint/internal/ui/WebNav;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/openfeint/internal/ui/WebNav;
    .param p2, "x1"    # Lcom/openfeint/internal/ui/WebNav$1;

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "lineNumber"    # I
    .param p3, "sourceID"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    iget-boolean v1, v1, Lcom/openfeint/internal/ui/WebNav;->mIsFrameworkLoaded:Z

    if-nez v1, :cond_0

    .line 440
    const-string v1, "%s at %s:%d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "line":Ljava/lang/String;
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    iget-object v1, v1, Lcom/openfeint/internal/ui/WebNav;->mPreloadConsoleOutput:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v0    # "line":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 405
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$2;

    invoke-direct {v2, p0, p4}, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$2;-><init>(Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$1;

    invoke-direct {v1, p0, p4}, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$1;-><init>(Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 416
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 420
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$5;

    invoke-direct {v2, p0, p4}, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$5;-><init>(Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    new-instance v2, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$4;

    invoke-direct {v2, p0, p4}, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$4;-><init>(Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$3;

    invoke-direct {v1, p0, p4}, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient$3;-><init>(Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 434
    const/4 v0, 0x1

    return v0
.end method
