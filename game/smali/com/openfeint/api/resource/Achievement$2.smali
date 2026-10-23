.class Lcom/openfeint/api/resource/Achievement$2;
.super Lcom/openfeint/internal/request/BitmapRequest;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Achievement;->downloadIcon(Lcom/openfeint/api/resource/Achievement$DownloadIconCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/Achievement;

.field final synthetic val$cb:Lcom/openfeint/api/resource/Achievement$DownloadIconCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/Achievement;Lcom/openfeint/api/resource/Achievement$DownloadIconCB;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/openfeint/api/resource/Achievement$2;->this$0:Lcom/openfeint/api/resource/Achievement;

    iput-object p2, p0, Lcom/openfeint/api/resource/Achievement$2;->val$cb:Lcom/openfeint/api/resource/Achievement$DownloadIconCB;

    invoke-direct {p0}, Lcom/openfeint/internal/request/BitmapRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$2;->val$cb:Lcom/openfeint/api/resource/Achievement$DownloadIconCB;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$2;->val$cb:Lcom/openfeint/api/resource/Achievement$DownloadIconCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$DownloadIconCB;->onFailure(Ljava/lang/String;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "responseBody"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$2;->val$cb:Lcom/openfeint/api/resource/Achievement$DownloadIconCB;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$2;->val$cb:Lcom/openfeint/api/resource/Achievement$DownloadIconCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/Achievement$DownloadIconCB;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 162
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, ""

    return-object v0
.end method

.method public url()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/openfeint/api/resource/Achievement$2;->this$0:Lcom/openfeint/api/resource/Achievement;

    iget-object v0, v0, Lcom/openfeint/api/resource/Achievement;->iconUrl:Ljava/lang/String;

    return-object v0
.end method
