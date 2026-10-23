.class Lcom/glu/android/DeviceSound$1;
.super Ljava/lang/Object;
.source "DeviceSound.java"

# interfaces
.implements Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/DeviceSound;->initAudioPlayback(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/DeviceSound;


# direct methods
.method constructor <init>(Lcom/glu/android/DeviceSound;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/glu/android/DeviceSound$1;->this$0:Lcom/glu/android/DeviceSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerReached(Landroid/media/AudioTrack;)V
    .locals 0
    .param p1, "track"    # Landroid/media/AudioTrack;

    .prologue
    .line 81
    return-void
.end method

.method public onPeriodicNotification(Landroid/media/AudioTrack;)V
    .locals 1
    .param p1, "track"    # Landroid/media/AudioTrack;

    .prologue
    .line 84
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->nativeNotReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/glu/android/GluJNI;->requestAudioData()V

    goto :goto_0
.end method
