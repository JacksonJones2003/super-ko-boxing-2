.class final Lcom/openfeint/api/resource/Score$3;
.super Lcom/openfeint/internal/resource/LongResourceProperty;
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
.method constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/openfeint/internal/resource/LongResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)J
    .locals 2
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 159
    check-cast p1, Lcom/openfeint/api/resource/Score;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iget-wide v0, p1, Lcom/openfeint/api/resource/Score;->score:J

    return-wide v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;J)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # J

    .prologue
    .line 159
    check-cast p1, Lcom/openfeint/api/resource/Score;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iput-wide p2, p1, Lcom/openfeint/api/resource/Score;->score:J

    return-void
.end method
