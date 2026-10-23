.class public abstract Lcom/openfeint/api/resource/Leaderboard$GetUserScoreCB;
.super Lcom/openfeint/internal/APICallback;
.source "Leaderboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/api/resource/Leaderboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "GetUserScoreCB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/openfeint/internal/APICallback;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onSuccess(Lcom/openfeint/api/resource/Score;)V
.end method
