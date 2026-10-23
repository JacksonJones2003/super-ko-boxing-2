.class public Lcom/glu/android/DeviceSound;
.super Ljava/lang/Object;
.source "DeviceSound.java"


# static fields
.field public static instance:Lcom/glu/android/DeviceSound;


# instance fields
.field private bytesWritten:I

.field public m_audioData:[B

.field private m_audioTrack:Lcom/glu/android/DeviceTrack;

.field public vibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    .line 14
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/DeviceSound;->bytesWritten:I

    .line 22
    iput-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    .line 36
    sput-object p0, Lcom/glu/android/DeviceSound;->instance:Lcom/glu/android/DeviceSound;

    .line 38
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    .line 40
    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioDataArray(I)[B
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 26
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    if-nez v0, :cond_0

    .line 27
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    return-object v0
.end method

.method public getPos()I
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method public initAudioPlayback_unlocked(III)V
    .locals 7
    .param p1, "nativeBitRate"    # I
    .param p2, "nativeNumChannels"    # I
    .param p3, "nativeFrequency"    # I

    .prologue
    const/4 v1, 0x3

    const/4 v6, 0x2

    .line 61
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-eqz v0, :cond_0

    .line 90
    :goto_0
    return-void

    .line 64
    :cond_0
    move v2, p3

    .line 65
    .local v2, "sampleFrequency":I
    if-ne p2, v6, :cond_1

    move v3, v1

    .line 66
    .local v3, "channelConfig":I
    :goto_1
    const/16 v0, 0x10

    if-ne p1, v0, :cond_2

    move v4, v6

    .line 68
    .local v4, "audioFormat":I
    :goto_2
    invoke-static {v2, v3, v4}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    .line 70
    .local v5, "bufferSize":I
    new-instance v0, Lcom/glu/android/DeviceTrack;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/glu/android/DeviceTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    .line 77
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-virtual {v0}, Lcom/glu/android/DeviceTrack;->play()V

    .line 78
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    new-instance v1, Lcom/glu/android/DeviceSound$1;

    invoke-direct {v1, p0}, Lcom/glu/android/DeviceSound$1;-><init>(Lcom/glu/android/DeviceSound;)V

    invoke-virtual {v0, v1}, Lcom/glu/android/DeviceTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V

    .line 89
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/glu/android/DeviceTrack;->setPositionNotificationPeriod(I)I

    goto :goto_0

    .end local v3    # "channelConfig":I
    .end local v4    # "audioFormat":I
    .end local v5    # "bufferSize":I
    :cond_1
    move v3, v6

    .line 65
    goto :goto_1

    .restart local v3    # "channelConfig":I
    :cond_2
    move v4, v1

    .line 66
    goto :goto_2
.end method

.method public pause_unlocked()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-virtual {v0}, Lcom/glu/android/DeviceTrack;->pause()V

    goto :goto_0
.end method

.method public resume_unlocked()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    invoke-virtual {v0}, Lcom/glu/android/DeviceTrack;->play()V

    goto :goto_0
.end method

.method public vibrationEvent(ZI)V
    .locals 3
    .param p1, "play"    # Z
    .param p2, "elapseMS"    # I

    .prologue
    .line 44
    if-eqz p1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/glu/android/DeviceSound;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method

.method public writeAudioData_unlocked([BI)V
    .locals 3
    .param p1, "audioData"    # [B
    .param p2, "len"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    if-nez v1, :cond_0

    .line 96
    iput-object p1, p0, Lcom/glu/android/DeviceSound;->m_audioData:[B

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    if-nez v1, :cond_1

    .line 105
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/glu/android/DeviceSound;->m_audioTrack:Lcom/glu/android/DeviceTrack;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, p2}, Lcom/glu/android/DeviceTrack;->write([BII)I

    move-result v0

    .line 102
    .local v0, "written":I
    iget v1, p0, Lcom/glu/android/DeviceSound;->bytesWritten:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/glu/android/DeviceSound;->bytesWritten:I

    goto :goto_0
.end method

# AudioTrack is not thread-safe: the AudioTrack callback thread writes the mix while GLThread
# pauses/resumes the stream, so every track operation takes the DeviceSound class lock.
.method public pause()V
    .locals 2
    const-class v0, Lcom/glu/android/DeviceSound;
    monitor-enter v0
    :try_start_0
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->pause_unlocked()V
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    return-void
    :catchall_0
    move-exception v1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    throw v1
.end method

.method public resume()V
    .locals 2
    const-class v0, Lcom/glu/android/DeviceSound;
    monitor-enter v0
    :try_start_0
    invoke-virtual {p0}, Lcom/glu/android/DeviceSound;->resume_unlocked()V
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    return-void
    :catchall_0
    move-exception v1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    throw v1
.end method

.method public writeAudioData([BI)V
    .locals 2
    const-class v0, Lcom/glu/android/DeviceSound;
    monitor-enter v0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/glu/android/DeviceSound;->writeAudioData_unlocked([BI)V
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    return-void
    :catchall_0
    move-exception v1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    throw v1
.end method

.method public initAudioPlayback(III)V
    .locals 2
    const-class v0, Lcom/glu/android/DeviceSound;
    monitor-enter v0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/glu/android/DeviceSound;->initAudioPlayback_unlocked(III)V
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    return-void
    :catchall_0
    move-exception v1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    throw v1
.end method
