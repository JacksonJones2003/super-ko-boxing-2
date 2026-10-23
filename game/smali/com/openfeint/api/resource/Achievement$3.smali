.class Lcom/openfeint/api/resource/Achievement$3;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Achievement;->unlock(Lcom/openfeint/api/resource/Achievement$UnlockCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Achievement;

.field final synthetic val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$resID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Achievement;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$UnlockCB;)V
    .locals 0

    .prologue
    .line 209
    iput-object p1, p0, Lcom/openfeint/api/resource/Achievement$3;->this$0:Lcom/openfeint/api/resource/Achievement;

    iput-object p2, p0, Lcom/openfeint/api/resource/Achievement$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/openfeint/api/resource/Achievement$3;->val$resID:Ljava/lang/String;

    iput-object p4, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string v0, "PUT"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$UnlockCB;->onFailure(Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method

.method protected onResponse(ILjava/lang/Object;)V
    .locals 4
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0xc8

    .line 213
    if-lt p1, v3, :cond_0

    const/16 v2, 0x12c

    if-ge p1, v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/openfeint/api/resource/Achievement$3;->val$resID:Ljava/lang/String;

    invoke-static {v2}, Lcom/openfeint/internal/AchievementUnlockCache;->markAsUnlocked(Ljava/lang/String;)V

    .line 217
    :cond_0
    const/16 v2, 0xc9

    if-ne v2, p1, :cond_2

    .line 218
    move-object v0, p2

    check-cast v0, Lcom/openfeint/api/resource/Achievement;

    move-object v1, v0

    .line 219
    .local v1, "achievement":Lcom/openfeint/api/resource/Achievement;
    iget-object v2, p0, Lcom/openfeint/api/resource/Achievement$3;->this$0:Lcom/openfeint/api/resource/Achievement;

    invoke-virtual {v2, v1}, Lcom/openfeint/api/resource/Achievement;->shallowCopy(Lcom/openfeint/internal/resource/Resource;)V

    .line 220
    invoke-static {v1}, Lcom/openfeint/internal/notifications/AchievementNotification;->showUnlocked(Lcom/openfeint/api/resource/Achievement;)V

    .line 221
    iget-object v2, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/openfeint/api/resource/Achievement$UnlockCB;->onSuccess(Z)V

    .line 231
    .end local v1    # "achievement":Lcom/openfeint/api/resource/Achievement;
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    if-ne v3, p1, :cond_3

    .line 225
    iget-object v2, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/openfeint/api/resource/Achievement$3;->val$cb:Lcom/openfeint/api/resource/Achievement$UnlockCB;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/openfeint/api/resource/Achievement$UnlockCB;->onSuccess(Z)V

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {p0, p2}, Lcom/openfeint/api/resource/Achievement$3;->onFailure(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$3;->val$path:Ljava/lang/String;

    return-object v0
.end method
