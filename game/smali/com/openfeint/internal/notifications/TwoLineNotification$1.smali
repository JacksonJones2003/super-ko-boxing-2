.class Lcom/openfeint/internal/notifications/TwoLineNotification$1;
.super Lcom/openfeint/internal/request/BitmapRequest;
.source "TwoLineNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/notifications/TwoLineNotification;->createView()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/notifications/TwoLineNotification;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    invoke-direct {p0}, Lcom/openfeint/internal/request/BitmapRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "GET"

    return-object v0
.end method

.method public onFailure(Ljava/lang/String;)V
    .locals 3
    .param p1, "exceptionMessage"    # Ljava/lang/String;

    .prologue
    .line 40
    const-string v0, "NotificationImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load image "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    iget-object v2, v2, Lcom/openfeint/internal/notifications/TwoLineNotification;->imageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    invoke-virtual {v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->showToast()V

    .line 42
    return-void
.end method

.method public onSuccess(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "responseBody"    # Landroid/graphics/Bitmap;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v0, Lcom/openfeint/internal/notifications/TwoLineNotification;->image:Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    invoke-virtual {v0}, Lcom/openfeint/internal/notifications/TwoLineNotification;->showToast()V

    .line 37
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/openfeint/internal/notifications/TwoLineNotification$1;->this$0:Lcom/openfeint/internal/notifications/TwoLineNotification;

    iget-object v0, v0, Lcom/openfeint/internal/notifications/TwoLineNotification;->imageName:Ljava/lang/String;

    return-object v0
.end method
