.class public Lcom/glu/android/MusicPlayer;
.super Ljava/lang/Object;

.field static mp:Landroid/media/MediaPlayer;
.field static gamePaused:Z
.field static actPaused:Z
.field static vol:F

.method static constructor <clinit>()V
    .locals 1
    const/high16 v0, 0x3f800000
    sput v0, Lcom/glu/android/MusicPlayer;->vol:F
    return-void
.end method

.method static log(Ljava/lang/String;)V
    .locals 1
    const-string v0, "SKOB2Music"
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    return-void
.end method

# code: 100 stop, 101 pause, 102 resume, 0x10000|(off<<1)|loop play, 0x40000000|(floatbits>>2) volume
.method public static declared-synchronized handle(I)V
    .locals 4
    const-class v0, Lcom/glu/android/MusicPlayer;
    monitor-enter v0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;
    const-string v2, "event 0x"
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;
    move-result-object v2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/glu/android/MusicPlayer;->log(Ljava/lang/String;)V

    const/high16 v1, 0x40000000
    if-lt p0, v1, :not_vol
    const v1, 0x3fffffff
    and-int/2addr v1, p0
    shl-int/lit8 v1, v1, 0x2
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F
    move-result v1
    sput v1, Lcom/glu/android/MusicPlayer;->vol:F
    invoke-static {}, Lcom/glu/android/MusicPlayer;->applyVolume()V
    goto :end

    :not_vol
    const/high16 v1, 0x10000
    if-lt p0, v1, :not_play
    sub-int v1, p0, v1
    and-int/lit8 v2, v1, 0x1
    shr-int/lit8 v1, v1, 0x1
    invoke-static {v1, v2}, Lcom/glu/android/MusicPlayer;->play(II)V
    goto :end

    :not_play
    const/16 v1, 0x64
    if-ne p0, v1, :not_stop
    invoke-static {}, Lcom/glu/android/MusicPlayer;->release()V
    goto :end

    :not_stop
    const/16 v1, 0x65
    if-ne p0, v1, :not_pause
    const/4 v1, 0x1
    sput-boolean v1, Lcom/glu/android/MusicPlayer;->gamePaused:Z
    invoke-static {}, Lcom/glu/android/MusicPlayer;->sync()V
    goto :end

    :not_pause
    const/16 v1, 0x66
    if-ne p0, v1, :end
    const/4 v1, 0x0
    sput-boolean v1, Lcom/glu/android/MusicPlayer;->gamePaused:Z
    invoke-static {}, Lcom/glu/android/MusicPlayer;->sync()V

    :end
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    monitor-exit v0
    return-void

    :catch_0
    move-exception v1
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    move-result-object v1
    invoke-static {v1}, Lcom/glu/android/MusicPlayer;->log(Ljava/lang/String;)V
    monitor-exit v0
    return-void
.end method

.method static release()V
    .locals 2
    sget-object v0, Lcom/glu/android/MusicPlayer;->mp:Landroid/media/MediaPlayer;
    if-eqz v0, :done
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    const/4 v1, 0x0
    sput-object v1, Lcom/glu/android/MusicPlayer;->mp:Landroid/media/MediaPlayer;
    :done
    return-void
.end method

.method static applyVolume()V
    .locals 2
    sget-object v0, Lcom/glu/android/MusicPlayer;->mp:Landroid/media/MediaPlayer;
    if-eqz v0, :done
    sget v1, Lcom/glu/android/MusicPlayer;->vol:F
    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :done
    return-void
.end method

# start or pause the player to match game/activity pause state
.method static sync()V
    .locals 2
    sget-object v0, Lcom/glu/android/MusicPlayer;->mp:Landroid/media/MediaPlayer;
    if-eqz v0, :done
    sget-boolean v1, Lcom/glu/android/MusicPlayer;->gamePaused:Z
    if-nez v1, :pause
    sget-boolean v1, Lcom/glu/android/MusicPlayer;->actPaused:Z
    if-nez v1, :pause
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    move-result v1
    if-nez v1, :done
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    goto :done
    :pause
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
    move-result v1
    if-eqz v1, :done
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :done
    return-void
.end method

# off = byte offset of the track name from "Theme.mp3" in libskob2V2.so's string table
.method static play(II)V
    .locals 10
    and-int/lit8 v0, p0, 0xf
    if-nez v0, :bad
    shr-int/lit8 v0, p0, 0x4
    const/16 v1, 0x9
    if-ge v0, v1, :bad
    if-ltz v0, :bad
    new-array v1, v1, [Ljava/lang/String;
    const/4 v2, 0x0
    const-string v3, "Theme"
    aput-object v3, v1, v2
    const/4 v2, 0x1
    const-string v3, "game_music"
    aput-object v3, v1, v2
    const/4 v2, 0x2
    const-string v3, "game_music3"
    aput-object v3, v1, v2
    const/4 v2, 0x3
    const-string v3, "game_music2"
    aput-object v3, v1, v2
    const/4 v2, 0x4
    const-string v3, "game_music4"
    aput-object v3, v1, v2
    const/4 v2, 0x5
    const-string v3, "game_music5"
    aput-object v3, v1, v2
    const/4 v2, 0x6
    const-string v3, "game_music6"
    aput-object v3, v1, v2
    const/4 v2, 0x7
    const-string v3, "failure"
    aput-object v3, v1, v2
    const/16 v2, 0x8
    const-string v3, "get_up"
    aput-object v3, v1, v2
    aget-object v1, v1, v0

    invoke-static {}, Lcom/glu/android/MusicPlayer;->release()V

    new-instance v2, Ljava/lang/StringBuilder;
    const-string v3, "music/"
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v3, ".mp3"
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-static {v2}, Lcom/glu/android/MusicPlayer;->log(Ljava/lang/String;)V

    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v3
    invoke-virtual {v3, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    move-result-object v3

    new-instance v4, Landroid/media/MediaPlayer;
    invoke-direct {v4}, Landroid/media/MediaPlayer;-><init>()V
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
    move-result-object v5
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J
    move-result-wide v6
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    move-result-wide v8
    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    invoke-virtual {v3}, Landroid/content/res/AssetFileDescriptor;->close()V

    if-eqz p1, :noloop
    const/4 v0, 0x1
    goto :setloop
    :noloop
    const/4 v0, 0x0
    :setloop
    invoke-virtual {v4, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    sput-object v4, Lcom/glu/android/MusicPlayer;->mp:Landroid/media/MediaPlayer;
    const/high16 v0, 0x3f800000
    sput v0, Lcom/glu/android/MusicPlayer;->vol:F
    invoke-static {}, Lcom/glu/android/MusicPlayer;->applyVolume()V
    const/4 v0, 0x0
    sput-boolean v0, Lcom/glu/android/MusicPlayer;->gamePaused:Z
    invoke-static {}, Lcom/glu/android/MusicPlayer;->sync()V
    return-void

    :bad
    const-string v0, "unknown track offset"
    invoke-static {v0}, Lcom/glu/android/MusicPlayer;->log(Ljava/lang/String;)V
    return-void
.end method


.method public static declared-synchronized onActivityPause(Z)V
    .locals 1
    const-class v0, Lcom/glu/android/MusicPlayer;
    monitor-enter v0
    :try_start_0
    sput-boolean p0, Lcom/glu/android/MusicPlayer;->actPaused:Z
    invoke-static {}, Lcom/glu/android/MusicPlayer;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    monitor-exit v0
    return-void
.end method
