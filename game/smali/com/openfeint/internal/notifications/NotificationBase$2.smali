.class Lcom/openfeint/internal/notifications/NotificationBase$2;
.super Landroid/view/View;
.source "NotificationBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/notifications/NotificationBase;->createViewWithHeight(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/notifications/NotificationBase;

.field final synthetic val$height:I


# direct methods
.method constructor <init>(Lcom/openfeint/internal/notifications/NotificationBase;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/openfeint/internal/notifications/NotificationBase$2;->this$0:Lcom/openfeint/internal/notifications/NotificationBase;

    iput p3, p0, Lcom/openfeint/internal/notifications/NotificationBase$2;->val$height:I

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/openfeint/internal/notifications/NotificationBase$2;->this$0:Lcom/openfeint/internal/notifications/NotificationBase;

    invoke-virtual {v0, p1}, Lcom/openfeint/internal/notifications/NotificationBase;->drawView(Landroid/graphics/Canvas;)V

    .line 96
    return-void
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 100
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/openfeint/internal/notifications/NotificationBase$2;->val$height:I

    invoke-virtual {p0, v1, v2}, Lcom/openfeint/internal/notifications/NotificationBase$2;->setMeasuredDimension(II)V

    .line 103
    return-void
.end method
