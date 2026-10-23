.class final Lcom/openfeint/api/resource/Achievement$15;
.super Lcom/openfeint/internal/resource/StringResourceProperty;
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
    .line 313
    invoke-direct {p0}, Lcom/openfeint/internal/resource/StringResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 313
    check-cast p1, Lcom/openfeint/api/resource/Achievement;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iget-object v0, p1, Lcom/openfeint/api/resource/Achievement;->startVersion:Ljava/lang/String;

    return-object v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/String;)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 313
    check-cast p1, Lcom/openfeint/api/resource/Achievement;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iput-object p2, p1, Lcom/openfeint/api/resource/Achievement;->startVersion:Ljava/lang/String;

    return-void
.end method
