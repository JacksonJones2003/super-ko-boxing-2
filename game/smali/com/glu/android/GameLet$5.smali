.class Lcom/glu/android/GameLet$5;
.super Ljava/lang/Object;
.source "GameLet.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 848
    iput-object p1, p0, Lcom/glu/android/GameLet$5;->this$0:Lcom/glu/android/GameLet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 849
    iget-object v0, p0, Lcom/glu/android/GameLet$5;->this$0:Lcom/glu/android/GameLet;

    iget-object v1, p0, Lcom/glu/android/GameLet$5;->this$0:Lcom/glu/android/GameLet;

    iget v1, v1, Lcom/glu/android/GameLet;->ID:I

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->showDialog(I)V

    return-void
.end method
