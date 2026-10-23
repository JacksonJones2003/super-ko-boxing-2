.class Lcom/openfeint/internal/ui/WebNav$WebNavClient$2;
.super Ljava/lang/Object;
.source "WebNav.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebNav$WebNavClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/internal/ui/WebNav$WebNavClient;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebNav$WebNavClient;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient$2;->this$1:Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 324
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebNav$WebNavClient$2;->this$1:Lcom/openfeint/internal/ui/WebNav$WebNavClient;

    iget-object v0, v0, Lcom/openfeint/internal/ui/WebNav$WebNavClient;->this$0:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v0}, Lcom/openfeint/internal/ui/WebNav;->finish()V

    .line 325
    return-void
.end method
