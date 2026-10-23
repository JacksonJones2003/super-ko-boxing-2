.class public abstract Lcom/openfeint/api/resource/Achievement$DownloadIconCB;
.super Lcom/openfeint/internal/APICallback;
.source "Achievement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/api/resource/Achievement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DownloadIconCB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/openfeint/internal/APICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSuccess(Landroid/graphics/Bitmap;)V
.end method
