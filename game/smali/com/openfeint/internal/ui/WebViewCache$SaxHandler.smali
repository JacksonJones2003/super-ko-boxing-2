.class Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaxHandler"
.end annotation


# instance fields
.field key:Ljava/lang/String;

.field loadingString:Ljava/lang/String;

.field outputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method private constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;)V
    .locals 1

    .prologue
    .line 477
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 480
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->outputMap:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Lcom/openfeint/internal/ui/WebViewCache$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/openfeint/internal/ui/WebViewCache;
    .param p2, "x1"    # Lcom/openfeint/internal/ui/WebViewCache$1;

    .prologue
    .line 477
    invoke-direct {p0, p1}, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;-><init>(Lcom/openfeint/internal/ui/WebViewCache;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 497
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    add-int v1, p2, p3

    invoke-virtual {v0, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    .line 498
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .prologue
    .line 488
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "clipped":Ljava/lang/String;
    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    iput-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->key:Ljava/lang/String;

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 490
    :cond_1
    const-string v1, "string"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->outputMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->key:Ljava/lang/String;

    iget-object v3, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    iget-object v1, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->key:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/openfeint/internal/ui/WebViewCache;->access$500(Lcom/openfeint/internal/ui/WebViewCache;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getOutputMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 481
    iget-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->outputMap:Ljava/util/Map;

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attr"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 484
    const-string v0, ""

    iput-object v0, p0, Lcom/openfeint/internal/ui/WebViewCache$SaxHandler;->loadingString:Ljava/lang/String;

    .line 485
    return-void
.end method
