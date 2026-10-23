.class public Lcom/glu/android/GluJNICallback;
.super Ljava/lang/Object;
.source "GluJNICallback.java"


# static fields
.field public static final SOUND_EVENT_DESTROY:I = 0x3

.field public static final SOUND_EVENT_PAUSE:I = 0x1

.field public static final SOUND_EVENT_RESUME:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adEvent(I)V
    .locals 1
    .param p0, "event"    # I

    .prologue
    .line 79
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v0, v0, Lcom/glu/android/GameLet;->m_adStateFromGameHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    return-void
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->onNativeDestroyed()V

    .line 60
    return-void
.end method

.method public static gameCenterEvent(II)V
    .locals 0
    .param p0, "event"    # I
    .param p1, "param"    # I

    .prologue
    .line 95
    :try_start_of
    invoke-static {p0, p1}, Lcom/glu/android/GluOpenFeint;->handleEvent(II)V
    :try_end_of
    .catch Ljava/lang/Throwable; {:try_start_of .. :try_end_of} :catch_of
    :catch_of

    .line 96
    return-void
.end method

.method public static getAudioDataArray(I)[B
    .locals 2
    .param p0, "length"    # I

    .prologue
    .line 85
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioDataArray("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") called with DeviceSound instance null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 88
    :cond_0
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p0}, Lcom/glu/android/DeviceSound;->getAudioDataArray(I)[B

    move-result-object v0

    goto :goto_0
.end method

.method public static initAudioPlayback(III)V
    .locals 1
    .param p0, "bitRate"    # I
    .param p1, "numChannels"    # I
    .param p2, "frequency"    # I

    .prologue
    .line 18
    const-string v0, "java initAudioPlayback()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v0, :cond_0

    .line 21
    const-string v0, "initAudioPlayback() called with DeviceSound instance null."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p0, p1, p2}, Lcom/glu/android/DeviceSound;->initAudioPlayback(III)V

    goto :goto_0
.end method

.method public static moreGames()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->moreGamesLaunch()V

    .line 65
    return-void
.end method

.method public static queueDestroy()V
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->queueDestroy()V

    .line 75
    return-void
.end method

.method public static soundEvent(I)V
    .locals 1
    .param p0, "event"    # I

    .prologue
    const/16 v0, 0x64
    if-lt p0, v0, :music_skip
    invoke-static {p0}, Lcom/glu/android/MusicPlayer;->handle(I)V
    return-void
    :music_skip
    .line 36
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v0, :cond_1

    .line 37
    const-string v0, "javaSoundEvent() called with DeviceSound instance null."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    .line 41
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->pause()V

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x2

    if-ne p0, v0, :cond_3

    .line 43
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0}, Lcom/glu/android/DeviceSound;->resume()V

    goto :goto_0

    .line 44
    :cond_3
    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0
.end method

.method public static upgrade()V
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->upgradeLaunch()V

    .line 70
    return-void
.end method

.method public static vibrationEvent(II)V
    .locals 2
    .param p0, "play"    # I
    .param p1, "elapseMS"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v0, :cond_0

    .line 29
    const-string v0, "vibrationEvent() called with DeviceSound instance null."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1, p1}, Lcom/glu/android/DeviceSound;->vibrationEvent(ZI)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static writeAudioData([BI)V
    .locals 1
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    .line 51
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    if-nez v0, :cond_0

    .line 52
    const-string v0, "writeAudioData() called with DeviceSound instance null."

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    sget-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    invoke-virtual {v0, p0, p1}, Lcom/glu/android/DeviceSound;->writeAudioData([BI)V

    goto :goto_0
.end method
