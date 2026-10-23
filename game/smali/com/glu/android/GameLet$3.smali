.class Lcom/glu/android/GameLet$3;
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
    .line 560
    iput-object p1, p0, Lcom/glu/android/GameLet$3;->this$0:Lcom/glu/android/GameLet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 562
    iget-object v0, p0, Lcom/glu/android/GameLet$3;->this$0:Lcom/glu/android/GameLet;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->onAdEvent(I)V

    .line 563
    return-void
.end method
