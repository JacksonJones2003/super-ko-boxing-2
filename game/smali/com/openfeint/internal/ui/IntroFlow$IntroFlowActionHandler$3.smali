.class Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$3;
.super Lcom/openfeint/internal/ImagePicker$ImagePickerCB;
.source "IntroFlow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->cacheImage(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$3;->this$1:Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;

    invoke-direct {p0}, Lcom/openfeint/internal/ImagePicker$ImagePickerCB;-><init>()V

    return-void
.end method


# virtual methods
.method public onPictureChosen(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$3;->this$1:Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;

    iput-object p1, v0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->cachedImage:Landroid/graphics/Bitmap;

    .line 120
    return-void
.end method
