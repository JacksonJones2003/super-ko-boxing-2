.class final Lcom/openfeint/api/resource/Score$2;
.super Lcom/openfeint/internal/resource/ResourceClass;
.source "Score.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Score;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
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
    .line 157
    .local p1, "x0":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/openfeint/internal/resource/Resource;>;"
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/resource/ResourceClass;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public factory()Lcom/openfeint/internal/resource/Resource;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/openfeint/api/resource/Score;

    invoke-direct {v0}, Lcom/openfeint/api/resource/Score;-><init>()V

    return-object v0
.end method
