.class Lcom/openfeint/api/resource/Score$1;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Score;->submitTo(Lcom/openfeint/api/resource/Leaderboard;Lcom/openfeint/api/resource/Score$SubmitToCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Score;

.field final synthetic val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Score;Lcom/openfeint/internal/request/OrderedArgList;Ljava/lang/String;Lcom/openfeint/api/resource/Score$SubmitToCB;)V
    .locals 0
    .param p2, "x0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/openfeint/api/resource/Score$1;->this$0:Lcom/openfeint/api/resource/Score;

    iput-object p3, p0, Lcom/openfeint/api/resource/Score$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/JSONRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string v0, "POST"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onFailure(Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected onResponse(ILjava/lang/Object;)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 126
    const/16 v1, 0xc9

    if-ne v1, p1, :cond_1

    .line 127
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 128
    .local v0, "r":Landroid/content/res/Resources;
    const-string v1, "@string/of_score_submitted_notification"

    invoke-static {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@drawable/of_icon_highscore_notification"

    sget-object v3, Lcom/openfeint/api/Notification$Category;->HighScore:Lcom/openfeint/api/Notification$Category;

    sget-object v4, Lcom/openfeint/api/Notification$Type;->Success:Lcom/openfeint/api/Notification$Type;

    invoke-static {v1, v2, v3, v4}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/Notification$Category;Lcom/openfeint/api/Notification$Type;)V

    .line 129
    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onSuccess(Z)V

    .line 135
    .end local v0    # "r":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    const/16 v1, 0xc8

    if-ne v1, p1, :cond_2

    .line 131
    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/openfeint/api/resource/Score$1;->val$cb:Lcom/openfeint/api/resource/Score$SubmitToCB;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/openfeint/api/resource/Score$SubmitToCB;->onSuccess(Z)V

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {p0, p2}, Lcom/openfeint/api/resource/Score$1;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/openfeint/api/resource/Score$1;->val$path:Ljava/lang/String;

    return-object v0
.end method
