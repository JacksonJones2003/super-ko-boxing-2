.class Lcom/openfeint/internal/OpenFeintInternal$8;
.super Lcom/openfeint/internal/request/JSONRequest;
.source "OpenFeintInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/internal/OpenFeintInternal;->uploadFile(Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/openfeint/internal/OpenFeintInternal;

.field final synthetic val$contentType:Ljava/lang/String;

.field final synthetic val$delegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

.field final synthetic val$partSource:Lcom/openfeint/internal/request/multipart/PartSource;

.field final synthetic val$xpApiPath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/OpenFeintInternal;Ljava/lang/String;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V
    .locals 0

    .prologue
    .line 580
    iput-object p1, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    iput-object p2, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->val$xpApiPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->val$partSource:Lcom/openfeint/internal/request/multipart/PartSource;

    iput-object p4, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->val$contentType:Ljava/lang/String;

    iput-object p5, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->val$delegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    invoke-direct {p0}, Lcom/openfeint/internal/request/JSONRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    const-string v0, "POST"

    return-object v0
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3
    .param p1, "responseBody"    # Ljava/lang/Object;

    .prologue
    .line 584
    new-instance v0, Lcom/openfeint/internal/request/BlobPostRequest;

    check-cast p1, Lcom/openfeint/internal/resource/BlobUploadParameters;

    .end local p1    # "responseBody":Ljava/lang/Object;
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->val$partSource:Lcom/openfeint/internal/request/multipart/PartSource;

    iget-object v2, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->val$contentType:Ljava/lang/String;

    invoke-direct {v0, p1, v1, v2}, Lcom/openfeint/internal/request/BlobPostRequest;-><init>(Lcom/openfeint/internal/resource/BlobUploadParameters;Lcom/openfeint/internal/request/multipart/PartSource;Ljava/lang/String;)V

    .line 585
    .local v0, "bp":Lcom/openfeint/internal/request/BlobPostRequest;
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->val$delegate:Lcom/openfeint/internal/request/IRawRequestDelegate;

    invoke-virtual {v0, v1}, Lcom/openfeint/internal/request/BlobPostRequest;->setDelegate(Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 586
    iget-object v1, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->this$0:Lcom/openfeint/internal/OpenFeintInternal;

    invoke-static {v1, v0}, Lcom/openfeint/internal/OpenFeintInternal;->access$700(Lcom/openfeint/internal/OpenFeintInternal;Lcom/openfeint/internal/request/BaseRequest;)V

    .line 587
    return-void
.end method

.method public path()Ljava/lang/String;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/openfeint/internal/OpenFeintInternal$8;->val$xpApiPath:Ljava/lang/String;

    return-object v0
.end method
