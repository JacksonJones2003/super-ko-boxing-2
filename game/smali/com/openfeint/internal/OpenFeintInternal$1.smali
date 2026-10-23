.class Lcom/openfeint/internal/OpenFeintInternal$1;
.super Lcom/openfeint/internal/request/RawRequest;
.source "OpenFeintInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->createUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 0
    .param p2, "x0"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$1;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-direct {p0, p2}, Lcom/openfeint/internal/request/RawRequest;-><init>(Lcom/openfeint/internal/request/OrderedArgList;)V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    const-string v0, "POST"

    return-object v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$1;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    check-cast p1, Lcom/openfeint/api/resource/User;

    .end local p1    # "responseBody":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/openfeint/internal/OpenFeintInternal;->access$000(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/api/resource/User;)V

    .line 183
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const-string v0, "/xp/users.json"

    return-object v0
.end method
