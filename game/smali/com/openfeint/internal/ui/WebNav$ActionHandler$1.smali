.class Lcom/openfeint/internal/ui/WebNav$ActionHandler$1;
.super Ljava/lang/Object;
.source "WebNav.java"

# interfaces
.implements Lcom/openfeint/internal/request/IRawRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/WebNav$ActionHandler;->apiRequest(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

.field final synthetic val$requestID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebNav$ActionHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 595
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler$1;->this$1:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    iput-object p2, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler$1;->val$requestID:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 6
    .param p1, "statusCode"    # I
    .param p2, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 597
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 598
    .local v1, "response":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "{}"

    .line 599
    :cond_0
    const-string v2, "OF.api.completeRequest(\"%s\", \"%d\", %s)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler$1;->val$requestID:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "js":Ljava/lang/String;
    iget-object v2, p0, Lcom/openfeint/internal/ui/WebNav$ActionHandler$1;->this$1:Lcom/openfeint/internal/ui/WebNav$ActionHandler;

    iget-object v2, v2, Lcom/openfeint/internal/ui/WebNav$ActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v2, v0}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 603
    return-void
.end method
