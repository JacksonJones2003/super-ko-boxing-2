.class public Lcom/openfeint/internal/ui/WebNav;
.super Landroid/app/Activity;
.source "WebNav.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ui/WebNav$ActionHandler;,
        Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;,
        Lcom/openfeint/internal/ui/WebNav$WebNavClient;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "WebUI"


# instance fields
.field mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

.field mIsFrameworkLoaded:Z

.field mIsVisible:Z

.field mLaunchLoadingView:Landroid/app/Dialog;

.field protected mPreloadConsoleOutput:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWebView:Landroid/webkit/WebView;

.field private mWebViewClient:Lcom/openfeint/internal/ui/WebNav$WebNavClient;

.field protected pageStackCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebNav;->mIsFrameworkLoaded:Z

    .line 57
    iput-boolean v0, p0, Lcom/openfeint/internal/ui/WebNav;->mIsVisible:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mPreloadConsoleOutput:Ljava/util/ArrayList;

    .line 451
    return-void
.end method

.method static synthetic access$100(Lcom/openfeint/internal/ui/WebNav;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method protected createActionHandler(Lcom/openfeint/internal/ui/WebNav;)Lcom/openfeint/internal/ui/WebNav$ActionHandler;
    .locals 1
    .param p1, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 199
    new-instance v0, Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/WebNav$ActionHandler;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav;)V

    return-object v0
.end method

.method public executeJavascript(Ljava/lang/String;)V
    .locals 3
    .param p1, "js"    # Ljava/lang/String;

    .prologue
    .line 242
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method public fade(Z)V
    .locals 4
    .param p1, "toVisible"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 254
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 255
    iget-boolean v1, p0, Lcom/openfeint/internal/ui/WebNav;->mIsVisible:Z

    if-eq v1, p1, :cond_1

    .line 256
    iput-boolean p1, p0, Lcom/openfeint/internal/ui/WebNav;->mIsVisible:Z

    .line 257
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    if-eqz p1, :cond_0

    move v2, v3

    :cond_0
    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 259
    .local v0, "anim":Landroid/view/animation/AlphaAnimation;
    if-eqz p1, :cond_3

    const-wide/16 v1, 0xc8

    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 260
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 261
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 262
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 263
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 266
    .end local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    :cond_1
    return-void

    :cond_2
    move v1, v3

    .line 257
    goto :goto_0

    .line 259
    .restart local v0    # "anim":Landroid/view/animation/AlphaAnimation;
    :cond_3
    const-wide/16 v1, 0x0

    goto :goto_1
.end method

.method public getActionHandler()Lcom/openfeint/internal/ui/WebNav$ActionHandler;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    return-object v0
.end method

.method public getLaunchLoadingView()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    return-object v0
.end method

.method protected initialContentPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebNav;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "content_path"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "contentPath":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 211
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "WebNav intent requires extra value \'content_path\'"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    return-object v0
.end method

.method public loadInitialContent()V
    .locals 4

    .prologue
    const-string v3, ".json"

    .line 179
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebNav;->initialContentPath()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, "path":Ljava/lang/String;
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "\\?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 181
    :cond_0
    const-string v1, ".json"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".json"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_1
    new-instance v1, Lcom/openfeint/internal/ui/WebNav$4;

    invoke-direct {v1, p0}, Lcom/openfeint/internal/ui/WebNav$4;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    invoke-static {v0, v1}, Lcom/openfeint/internal/ui/WebViewCache;->trackPath(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z

    .line 188
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "orientationString":Ljava/lang/String;
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 167
    const-string v0, "landscape"

    .line 172
    :goto_0
    const-string v1, "OF.setOrientation(\'%s\');"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 173
    return-void

    .line 169
    :cond_0
    const-string v0, "portrait"

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, ".json"

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const-string v2, "@layout/of_webnav"

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/openfeint/internal/ui/WebNav;->setContentView(I)V

    .line 67
    const-string v2, "WebUI"

    const-string v3, "--- WebUI Bootup ---"

    invoke-static {v2, v3}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iput v5, p0, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    .line 73
    const-string v2, "@id/webview"

    invoke-static {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/openfeint/internal/ui/WebNav;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    .line 74
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    const/high16 v3, 0x2000000

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 76
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 79
    new-instance v2, Landroid/app/Dialog;

    const-string v3, "@style/OFLoading"

    invoke-static {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    .line 80
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    new-instance v3, Lcom/openfeint/internal/ui/WebNav$1;

    invoke-direct {v3, p0}, Lcom/openfeint/internal/ui/WebNav$1;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 85
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 86
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    const-string v3, "@layout/of_native_loader"

    invoke-static {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(I)V

    .line 88
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    const-string v3, "@id/progress"

    invoke-static {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 89
    .local v1, "progress":Landroid/widget/ProgressBar;
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 90
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "@drawable/of_native_loader_progress"

    invoke-static {v3}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mLaunchLoadingView:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 99
    invoke-virtual {p0, p0}, Lcom/openfeint/internal/ui/WebNav;->createActionHandler(Lcom/openfeint/internal/ui/WebNav;)Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    move-result-object v2

    iput-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    .line 100
    new-instance v2, Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebNav;->mActionHandler:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    invoke-direct {v2, p0, v3}, Lcom/openfeint/internal/ui/WebNav$WebNavClient;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav$ActionHandler;)V

    iput-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebViewClient:Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    .line 101
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebNav;->mWebViewClient:Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 102
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/openfeint/internal/ui/WebNav$WebNavChromeClient;-><init>(Lcom/openfeint/internal/ui/WebNav;Lcom/openfeint/internal/ui/WebNav$1;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 105
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    new-instance v3, Lcom/openfeint/internal/ui/WebNav$2;

    invoke-direct {v3, p0}, Lcom/openfeint/internal/ui/WebNav$2;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    const-string v4, "NativeInterface"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/WebNav;->initialContentPath()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "path":Ljava/lang/String;
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\\?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v5

    .line 124
    :cond_0
    const-string v2, ".json"

    invoke-virtual {v0, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".json"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_1
    invoke-static {v0}, Lcom/openfeint/internal/ui/WebViewCache;->prioritize(Ljava/lang/String;)V

    .line 127
    const-string v2, "index.html"

    new-instance v3, Lcom/openfeint/internal/ui/WebNav$3;

    invoke-direct {v3, p0}, Lcom/openfeint/internal/ui/WebNav$3;-><init>(Lcom/openfeint/internal/ui/WebNav;)V

    invoke-static {v2, v3}, Lcom/openfeint/internal/ui/WebViewCache;->trackPath(Ljava/lang/String;Lcom/openfeint/internal/ui/WebViewCacheCallback;)Z

    .line 136
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebNav;->mWebView:Landroid/webkit/WebView;

    .line 733
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 734
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    .line 222
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 223
    const-string v0, "OF.menu(\'%s\')"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "search"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    move v0, v4

    .line 232
    :goto_0
    return v0

    .line 227
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/openfeint/internal/ui/WebNav;->pageStackCount:I

    if-le v0, v4, :cond_1

    .line 228
    const-string v0, "OF.goBack()"

    invoke-virtual {p0, v0}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    move v0, v4

    .line 229
    goto :goto_0

    .line 232
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 147
    invoke-static {p0}, Lcom/openfeint/api/OpenFeint;->setCurrentActivity(Landroid/app/Activity;)V

    .line 149
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentUser()Lcom/openfeint/api/resource/CurrentUser;

    move-result-object v0

    .line 150
    .local v0, "localUser":Lcom/openfeint/api/resource/User;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/openfeint/internal/ui/WebNav;->mIsFrameworkLoaded:Z

    if-eqz v1, :cond_0

    .line 151
    const-string v1, "if (OF.user) { OF.user.name = \'%s\'; OF.user.id = \'%s\'; }"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/openfeint/api/resource/User;->name:Ljava/lang/String;

    const-string v5, "\'"

    const-string v6, "\\\'"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/openfeint/api/resource/User;->resourceID()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 155
    const-string v1, "if (OF.page) OF.refresh();"

    invoke-virtual {p0, v1}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 157
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 718
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 719
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getDelegate()Lcom/openfeint/api/OpenFeintDelegate;

    move-result-object v0

    .line 720
    .local v0, "d":Lcom/openfeint/api/OpenFeintDelegate;
    if-eqz v0, :cond_0

    .line 721
    if-eqz p1, :cond_1

    .line 722
    invoke-virtual {v0}, Lcom/openfeint/api/OpenFeintDelegate;->onDashboardAppear()V

    .line 727
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    invoke-virtual {v0}, Lcom/openfeint/api/OpenFeintDelegate;->onDashboardDisappear()V

    goto :goto_0
.end method

.method protected setFrameworkLoaded(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/openfeint/internal/ui/WebNav;->mIsFrameworkLoaded:Z

    return-void
.end method
