.class final Lcom/openfeint/api/resource/Achievement$12;
.super Lcom/openfeint/internal/resource/DateResourceProperty;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/Achievement;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/openfeint/internal/resource/DateResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/Date;
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 310
    check-cast p1, Lcom/openfeint/api/resource/Achievement;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iget-object v0, p1, Lcom/openfeint/api/resource/Achievement;->unlockDate:Ljava/util/Date;

    return-object v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # Ljava/util/Date;

    .prologue
    .line 310
    check-cast p1, Lcom/openfeint/api/resource/Achievement;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iput-object p2, p1, Lcom/openfeint/api/resource/Achievement;->unlockDate:Ljava/util/Date;

    return-void
.end method
