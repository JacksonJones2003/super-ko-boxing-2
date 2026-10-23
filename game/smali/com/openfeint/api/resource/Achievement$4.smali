.class Lcom/openfeint/api/resource/Achievement$4;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Achievement;->load(Lcom/openfeint/api/resource/Achievement$LoadCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Achievement;

.field final synthetic val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Achievement;Ljava/lang/String;Lcom/openfeint/api/resource/Achievement$LoadCB;)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lcom/openfeint/api/resource/Achievement$4;->this$0:Lcom/openfeint/api/resource/Achievement;

    iput-object p2, p0, Lcom/openfeint/api/resource/Achievement$4;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-super {p0, p1}, Lcom/openfeint/internal/request/JSONRequest;->onFailure(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$LoadCB;->onFailure(Ljava/lang/String;)V

    .line 287
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$4;->this$0:Lcom/openfeint/api/resource/Achievement;

    check-cast p1, Lcom/openfeint/api/resource/Achievement;

    .end local p1    # "responseBody":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement;->shallowCopy(Lcom/openfeint/internal/resource/Resource;)V

    .line 277
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$4;->val$cb:Lcom/openfeint/api/resource/Achievement$LoadCB;

    invoke-virtual {v0}, Lcom/openfeint/api/resource/Achievement$LoadCB;->onSuccess()V

    .line 280
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$4;->val$path:Ljava/lang/String;

    return-object v0
.end method
