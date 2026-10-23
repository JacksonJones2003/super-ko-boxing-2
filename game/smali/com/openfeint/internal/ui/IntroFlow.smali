.class public Lcom/openfeint/internal/ui/IntroFlow;
.super Lcom/openfeint/internal/ui/WebNav;
.source "IntroFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;
    }
.end annotation


# instance fields
.field mImagePicker:Lcom/openfeint/internal/ImagePicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/openfeint/internal/ui/WebNav;-><init>()V

    return-void
.end method


# virtual methods
.method protected createActionHandler(Lcom/openfeint/internal/ui/WebNav;)Lcom/openfeint/internal/ui/WebNav$ActionHandler;
    .locals 1
    .param p1, "webNav"    # Lcom/openfeint/internal/ui/WebNav;

    .prologue
    .line 57
    new-instance v0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;

    invoke-direct {v0, p0, p1}, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;-><init>(Lcom/openfeint/internal/ui/IntroFlow;Lcom/openfeint/internal/ui/WebNav;)V

    return-object v0
.end method

.method protected initialContentPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/openfeint/internal/ui/IntroFlow;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "content_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "contentName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intro/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "intro/index"

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "returnedIntent"    # Landroid/content/Intent;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/openfeint/internal/ImagePicker;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow;->mImagePicker:Lcom/openfeint/internal/ImagePicker;

    .line 52
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 21
    invoke-super {p0, p1}, Lcom/openfeint/internal/ui/WebNav;->onCreate(Landroid/os/Bundle;)V

    .line 32
    return-void
.end method
