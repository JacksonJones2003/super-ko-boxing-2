.class Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$1;
.super Ljava/lang/Object;
.source "IntroFlow.java"

# interfaces
.implements Lcom/openfeint/internal/request/IRawRequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->createUser(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;

.field final synthetic val$options:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$1;->this$1:Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;

    iput-object p2, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$1;->val$options:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILjava/lang/String;)V
    .locals 6
    .param p1, "status"    # I
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    .line 86
    const-string v1, "%s(\'%d\', %s)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$1;->val$options:Ljava/util/Map;

    const-string v5, "callback"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "js":Ljava/lang/String;
    iget-object v1, p0, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler$1;->this$1:Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;

    iget-object v1, v1, Lcom/openfeint/internal/ui/IntroFlow$IntroFlowActionHandler;->mWebNav:Lcom/openfeint/internal/ui/WebNav;

    invoke-virtual {v1, v0}, Lcom/openfeint/internal/ui/WebNav;->executeJavascript(Ljava/lang/String;)V

    .line 88
    return-void
.end method
