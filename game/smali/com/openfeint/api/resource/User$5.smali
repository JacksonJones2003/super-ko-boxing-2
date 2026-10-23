.class Lcom/openfeint/api/resource/User$5;
.super Lcom/openfeint/internal/request/BitmapRequest;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/User;->downloadProfilePicture(Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/api/resource/User;

.field final synthetic val$cb:Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;


# direct methods
.method constructor <init>(Lcom/openfeint/api/resource/User;Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/openfeint/api/resource/User$5;->this$0:Lcom/openfeint/api/resource/User;

    iput-object p2, p0, Lcom/openfeint/api/resource/User$5;->val$cb:Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;

    invoke-direct {p0}, Lcom/openfeint/internal/request/BitmapRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 1
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/openfeint/api/resource/User$5;->val$cb:Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/openfeint/api/resource/User$5;->val$cb:Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;->onFailure(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "responseBody"    # Landroid/graphics/Bitmap;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/openfeint/api/resource/User$5;->val$cb:Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/openfeint/api/resource/User$5;->val$cb:Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;

    invoke-virtual {v0, p1}, Lcom/openfeint/api/resource/User$DownloadProfilePictureCB;->onSuccess(Landroid/graphics/Bitmap;)V

    .line 265
    :cond_0
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/openfeint/api/resource/User$5;->this$0:Lcom/openfeint/api/resource/User;

    iget-object v0, v0, Lcom/openfeint/api/resource/User;->profilePictureUrl:Ljava/lang/String;

    return-object v0
.end method
