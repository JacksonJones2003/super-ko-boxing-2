.class Lcom/openfeint/internal/OpenFeintInternal$9;
.super Ljava/lang/Object;
.source "OpenFeintInternal.java"

# interfaces
.implements Lcom/openfeint/internal/request/IRawRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;

.field final synthetic val$savedUser:Lcom/openfeint/api/resource/User;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/api/resource/User;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iput-object p2, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$savedUser:Lcom/openfeint/api/resource/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 2
    .param p1, "responseCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 759
    const/16 v0, 0xc8

    if-gt v0, p1, :cond_0

    const/16 v0, 0x12c

    if-lt p1, v0, :cond_2

    .line 760
    :cond_0
    const/16 v0, 0x193

    if-ne v0, p1, :cond_1

    .line 762
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->access$802(Lcom/openfeint/internal/OpenFeintInternal;Z)Z

    .line 771
    :goto_0
    return-void

    .line 765
    :cond_1
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-virtual {v0}, Lcom/openfeint/internal/OpenFeintInternal;->launchIntroFlow()V

    goto :goto_0

    .line 769
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Welcome back "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$9;->val$savedUser:Lcom/openfeint/api/resource/User;

    iget-object v1, v1, Lcom/openfeint/api/resource/User;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/notifications/SimpleNotification;->show(Ljava/lang/String;)V

    goto :goto_0
.end method
