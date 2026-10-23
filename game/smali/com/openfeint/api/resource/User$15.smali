.class final Lcom/openfeint/api/resource/User$15;
.super Lcom/openfeint/internal/resource/BooleanResourceProperty;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/openfeint/api/resource/User;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/openfeint/internal/resource/BooleanResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/openfeint/internal/resource/Resource;)Z
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 296
    check-cast p1, Lcom/openfeint/api/resource/User;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iget-boolean v0, p1, Lcom/openfeint/api/resource/User;->followedByLocalUser:Z

    return v0
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;Z)V
    .locals 0
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # Z

    .prologue
    .line 296
    check-cast p1, Lcom/openfeint/api/resource/User;

    .end local p1    # "obj":Lcom/openfeint/internal/resource/Resource;
    iput-boolean p2, p1, Lcom/openfeint/api/resource/User;->followedByLocalUser:Z

    return-void
.end method
