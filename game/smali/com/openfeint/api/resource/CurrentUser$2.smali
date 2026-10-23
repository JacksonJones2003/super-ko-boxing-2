.class final Lcom/openfeint/api/resource/CurrentUser$2;
.super Lcom/openfeint/internal/resource/ResourceClass;
.source "CurrentUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/CurrentUser;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "x1"    # Ljava/lang/String;

    .prologue
    .line 67
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/resource/Resource;>;"
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/resource/ResourceClass;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public factory()Lcom/openfeint/internal/resource/Resource;
    .locals 1

    .prologue
    .line 67
    new-instance v0, Lcom/openfeint/api/resource/CurrentUser;

    invoke-direct {v0}, Lcom/openfeint/api/resource/CurrentUser;-><init>()V

    return-object v0
.end method
