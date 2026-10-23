.class Lcom/openfeint/internal/OpenFeintInternal$7;
.super Ljava/lang/Object;
.source "OpenFeintInternal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->displayErrorDialog(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;

.field final synthetic val$errorMessage:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$7;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iput-object p2, p0, Lcom/openfeint/internal/OpenFeintInternal$7;->val$errorMessage:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 502
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$7;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v1}, Lcom/openfeint/internal/OpenFeintInternal;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$7;->val$errorMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 506
    return-void
.end method
