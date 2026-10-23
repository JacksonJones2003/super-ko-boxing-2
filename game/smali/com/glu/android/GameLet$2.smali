.class Lcom/glu/android/GameLet$2;
.super Landroid/os/Handler;
.source "GameLet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/glu/android/GameLet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/GameLet;


# direct methods
.method constructor <init>(Lcom/glu/android/GameLet;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/glu/android/GameLet$2;->this$0:Lcom/glu/android/GameLet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 553
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 554
    iget-object v0, p0, Lcom/glu/android/GameLet$2;->this$0:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->loadGame()V

    .line 557
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lcom/glu/android/GameLet$2;->this$0:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->loadResourceMenu()V

    goto :goto_0
.end method
