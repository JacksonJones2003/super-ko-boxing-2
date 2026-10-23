.class Lcom/glu/android/DeviceTrack;
.super Landroid/media/AudioTrack;
.source "DeviceSound.java"


# instance fields
.field public frameSize:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/DeviceTrack;->frameSize:I

    .line 133
    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/glu/android/DeviceTrack;->getChannelCount()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/glu/android/DeviceTrack;->frameSize:I

    .line 137
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/glu/android/DeviceTrack;->getChannelCount()I

    move-result v0

    iput v0, p0, Lcom/glu/android/DeviceTrack;->frameSize:I

    goto :goto_0
.end method


# virtual methods
.method public play()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-super {p0}, Landroid/media/AudioTrack;->play()V

    .line 143
    invoke-virtual {p0}, Lcom/glu/android/DeviceTrack;->getNativeFrameCount()I

    move-result v1

    iget v2, p0, Lcom/glu/android/DeviceTrack;->frameSize:I

    mul-int/2addr v1, v2

    new-array v0, v1, [B

    .line 144
    .local v0, "audioData":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/glu/android/DeviceTrack;->write([BII)I

    .line 145
    return-void
.end method
