.class public Lcom/glu/android/ResFileDownloadView;
.super Landroid/view/View;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/glu/android/ResFileDownloadView$GluTitlebar;,
        Lcom/glu/android/ResFileDownloadView$GluButton;,
        Lcom/glu/android/ResFileDownloadView$GluTextArea;,
        Lcom/glu/android/ResFileDownloadView$GluWidget;
    }
.end annotation


# static fields
.field public static final AD_ROTATE_TIMER_MS:I = 0x3a98

.field public static final MARGIN:I = 0x5

.field public static final ST_CHECKSUM:I = 0x0

.field public static final ST_DELETE_CONFIRM:I = 0x7

.field public static final ST_DELETE_MESSAGE:I = 0x8

.field public static final ST_DOWNLOADING:I = 0x2

.field public static final ST_DOWNLOAD_ERROR:I = 0x3

.field public static final ST_DOWNLOAD_PROMPT:I = 0x1

.field public static final ST_DOWNLOAD_RESTART_CONFIRM:I = 0x5

.field public static final ST_DOWNLOAD_RESUME:I = 0x4

.field public static final ST_EXIT:I = 0xa

.field public static final ST_INVALID:I = -0x1

.field public static final ST_PLAY:I = 0x9

.field public static final ST_PLAY_DELETE_PROMPT:I = 0x6

.field public static final ST_UPGRADE:I = 0xb

.field public static final WIDGET_ID_DELETE:I = 0x3

.field public static final WIDGET_ID_DELETE_NO:I = 0x5

.field public static final WIDGET_ID_DELETE_YES:I = 0x4

.field public static final WIDGET_ID_DOWNLOAD_TO_DISK:I = 0x0

.field public static final WIDGET_ID_DOWNLOAD_TO_SDCARD:I = 0x1

.field public static final WIDGET_ID_GENERIC:I = -0x1

.field public static final WIDGET_ID_INVALID:I = -0x2

.field public static final WIDGET_ID_PLAY:I = 0x2

.field public static final WIDGET_ID_RESTART:I = 0xb

.field public static final WIDGET_ID_RESUME:I = 0xa

.field public static final WIDGET_ID_RETRY_NO:I = 0x7

.field public static final WIDGET_ID_RETRY_YES:I = 0x6

.field public static final WIDGET_ID_START_OVER_NO:I = 0x9

.field public static final WIDGET_ID_START_OVER_YES:I = 0x8

.field public static final WIDGET_ID_UPGRADE:I = 0xc

.field public static final WIDGET_ID_UPGRADE_NEVER:I = 0xf

.field public static final WIDGET_ID_UPGRADE_NOTNOW:I = 0xe

.field public static final WIDGET_ID_UPGRADE_YES:I = 0xd

.field public static instance:Lcom/glu/android/ResFileDownloadView;

.field public static m_checksumError:Ljava/lang/String;

.field public static m_deleteMessage:Ljava/lang/String;

.field public static m_downloadError:Ljava/lang/String;

.field public static m_usesAltSDCardPath:Z


# instance fields
.field public m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

.field public m_adRotateTimer:I

.field public m_annunciatorBarHeight:I

.field public m_backPressed:Z

.field public m_buttonImgC:Landroid/graphics/drawable/Drawable;

.field public m_buttonImgL:Landroid/graphics/drawable/Drawable;

.field public m_buttonImgR:Landroid/graphics/drawable/Drawable;

.field public m_buttonPaint:Landroid/graphics/Paint;

.field public m_buttonSelectedImgC:Landroid/graphics/drawable/Drawable;

.field public m_buttonSelectedImgL:Landroid/graphics/drawable/Drawable;

.field public m_buttonSelectedImgR:Landroid/graphics/drawable/Drawable;

.field public m_bytesDownloaded:I

.field public m_checksumDone:Z

.field public m_checksumInProgress:Z

.field public m_checksumPassed:Z

.field public m_downloadCancelled:Z

.field public m_downloadDone:Z

.field public m_downloadFailed:Z

.field public m_downloadFilename:Ljava/lang/String;

.field public m_downloadInterrupted:Z

.field public m_downloadThread:Ljava/lang/Thread;

.field public m_downloadToDisk:Z

.field public m_heightNeedsCorrection:Z

.field public m_lastTickTime:J

.field public m_pointerLatched:Z

.field public m_prevState:I

.field public m_screenHeight:I

.field public m_screenWidth:I

.field public m_state:I

.field public m_tempFilename:Ljava/lang/String;

.field public m_textAreaPaint:Landroid/graphics/Paint;

.field public m_titlebarImg:Landroid/graphics/drawable/Drawable;

.field public m_titlebarPaint:Landroid/graphics/Paint;

.field public m_widgets:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/glu/android/ResFileDownloadView$GluWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 270
    sput-object v1, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    .line 292
    const/4 v0, 0x0

    sput-boolean v0, Lcom/glu/android/ResFileDownloadView;->m_usesAltSDCardPath:Z

    .line 309
    sput-object v1, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 310
    sput-object v1, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 311
    sput-object v1, Lcom/glu/android/ResFileDownloadView;->m_deleteMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 333
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 272
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    .line 273
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 274
    iput v3, p0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    .line 275
    iput v3, p0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    .line 276
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    .line 277
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_pointerLatched:Z

    .line 279
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    .line 280
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    .line 281
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    .line 282
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    .line 283
    iput v2, p0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    .line 284
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 285
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    .line 286
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadThread:Ljava/lang/Thread;

    .line 288
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    .line 289
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    .line 290
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumDone:Z

    .line 295
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgL:Landroid/graphics/drawable/Drawable;

    .line 296
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgC:Landroid/graphics/drawable/Drawable;

    .line 297
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgR:Landroid/graphics/drawable/Drawable;

    .line 298
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgL:Landroid/graphics/drawable/Drawable;

    .line 299
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgC:Landroid/graphics/drawable/Drawable;

    .line 300
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgR:Landroid/graphics/drawable/Drawable;

    .line 301
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarImg:Landroid/graphics/drawable/Drawable;

    .line 304
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    .line 305
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    .line 306
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    .line 318
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    .line 322
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/glu/android/ResFileDownloadView;->m_adRotateTimer:I

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_heightNeedsCorrection:Z

    .line 398
    iput v2, p0, Lcom/glu/android/ResFileDownloadView;->m_annunciatorBarHeight:I

    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glu/android/ResFileDownloadView;->m_lastTickTime:J

    .line 335
    invoke-virtual {p0, p2, p3}, Lcom/glu/android/ResFileDownloadView;->init(II)V

    .line 336
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 326
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 272
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    .line 273
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 274
    iput v3, p0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    .line 275
    iput v3, p0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    .line 276
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    .line 277
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_pointerLatched:Z

    .line 279
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    .line 280
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    .line 281
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    .line 282
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    .line 283
    iput v2, p0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    .line 284
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 285
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    .line 286
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadThread:Ljava/lang/Thread;

    .line 288
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    .line 289
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    .line 290
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumDone:Z

    .line 295
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgL:Landroid/graphics/drawable/Drawable;

    .line 296
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgC:Landroid/graphics/drawable/Drawable;

    .line 297
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgR:Landroid/graphics/drawable/Drawable;

    .line 298
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgL:Landroid/graphics/drawable/Drawable;

    .line 299
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgC:Landroid/graphics/drawable/Drawable;

    .line 300
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgR:Landroid/graphics/drawable/Drawable;

    .line 301
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarImg:Landroid/graphics/drawable/Drawable;

    .line 304
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    .line 305
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    .line 306
    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    .line 318
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    .line 322
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/glu/android/ResFileDownloadView;->m_adRotateTimer:I

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_heightNeedsCorrection:Z

    .line 398
    iput v2, p0, Lcom/glu/android/ResFileDownloadView;->m_annunciatorBarHeight:I

    .line 1230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/glu/android/ResFileDownloadView;->m_lastTickTime:J

    .line 327
    const v0, 0x7f090005

    invoke-virtual {p0, v0}, Lcom/glu/android/ResFileDownloadView;->setId(I)V

    .line 328
    return-void
.end method

.method public static getDiskFilenameV1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/glu/android/ResFileDownloadView;->getResFileNameV1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getResFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 451
    sget-boolean v0, Lcom/glu/android/GameLet;->supportsAtitcCompression:Z

    if-eqz v0, :cond_0

    .line 452
    const-string v0, "skob2_atitc.big"

    .line 454
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "skob2_none.big"

    goto :goto_0
.end method

.method public static getResFileNameV1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    const-string v0, "skob2.big"

    return-object v0
.end method

.method public static getSDCardFilenameV1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/glu/skob2"

    invoke-static {v1}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/glu/android/ResFileDownloadView;->getResFileNameV1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resourceFileV1Exists()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "testing: "

    const-string v7, "   exists="

    .line 1058
    const/4 v0, 0x0

    .line 1059
    .local v0, "success":Z
    const/4 v3, 0x0

    sput-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1061
    invoke-static {}, Lcom/glu/android/ResFileDownloadView;->getDiskFilenameV1()Ljava/lang/String;

    move-result-object v2

    .line 1062
    .local v2, "testPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1064
    .local v1, "testFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testing: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   exists="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1066
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1068
    invoke-static {v1}, Lcom/glu/android/GluUtil;->performChecksumV1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1069
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-nez v3, :cond_1

    move v0, v6

    .line 1084
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v5

    .line 1069
    goto :goto_0

    .line 1073
    :cond_2
    invoke-static {}, Lcom/glu/android/ResFileDownloadView;->getSDCardFilenameV1()Ljava/lang/String;

    move-result-object v2

    .line 1074
    new-instance v1, Ljava/io/File;

    .end local v1    # "testFile":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1076
    .restart local v1    # "testFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testing: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   exists="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1080
    invoke-static {v1}, Lcom/glu/android/GluUtil;->performChecksumV1(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1081
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-nez v3, :cond_3

    move v0, v6

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_1
.end method


# virtual methods
.method public adjustTextLayoutForAd()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1038
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 1048
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    if-eqz v1, :cond_0

    .line 1043
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    .line 1044
    .local v0, "gta":Lcom/glu/android/ResFileDownloadView$GluTextArea;
    iget v1, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    iget v2, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    const/4 v3, 0x0

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setBounds(IIII)V

    .line 1046
    const/4 v1, 0x0

    const/16 v2, 0x96

    if-le v1, v2, :cond_0

    .line 1047
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public checkResourceFile()V
    .locals 9

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getDiskFilename()Ljava/lang/String;
    move-result-object v0
    invoke-static {v0}, Lcom/glu/android/ResInstaller;->install(Ljava/lang/String;)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, "testing: "

    const-string v7, "   exists="

    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "success":Z
    const/4 v3, 0x0

    sput-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1132
    iput-boolean v5, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    .line 1134
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getDiskFilename()Ljava/lang/String;

    move-result-object v2

    .line 1135
    .local v2, "testPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1137
    .local v1, "testFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testing: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   exists="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1141
    invoke-static {v1}, Lcom/glu/android/GluUtil;->performChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1142
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-nez v3, :cond_1

    move v0, v5

    .line 1177
    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    .line 1178
    iput-boolean v5, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumDone:Z

    .line 1179
    iput-boolean v6, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    .line 1180
    return-void

    :cond_1
    move v0, v6

    .line 1142
    goto :goto_0

    .line 1146
    :cond_2
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getSDCardFilename()Ljava/lang/String;

    move-result-object v2

    .line 1147
    new-instance v1, Ljava/io/File;

    .end local v1    # "testFile":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1149
    .restart local v1    # "testFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testing: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   exists="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1151
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1153
    invoke-static {v1}, Lcom/glu/android/GluUtil;->performChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1154
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-nez v3, :cond_3

    move v0, v5

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_1

    .line 1158
    :cond_4
    const-string v3, "/sdcard"

    invoke-static {v3}, Lcom/glu/android/Debug;->printDirectoryRecursive(Ljava/lang/String;)V

    .line 1160
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getAltSDCardFilename()Ljava/lang/String;

    move-result-object v2

    .line 1161
    new-instance v1, Ljava/io/File;

    .end local v1    # "testFile":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1163
    .restart local v1    # "testFile":Ljava/io/File;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "testing: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   exists="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1167
    invoke-static {v1}, Lcom/glu/android/GluUtil;->performChecksum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 1168
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-nez v3, :cond_5

    move v0, v5

    .line 1171
    :goto_2
    if-eqz v0, :cond_0

    .line 1172
    sput-boolean v5, Lcom/glu/android/ResFileDownloadView;->m_usesAltSDCardPath:Z

    goto/16 :goto_0

    :cond_5
    move v0, v6

    .line 1168
    goto :goto_2
.end method

.method public createDownloadPrompt(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f06000e

    invoke-static {v2}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "promptString":Ljava/lang/String;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    throw v1

    .line 419
    .end local v0    # "promptString":Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "buttonID1"    # I
    .param p3, "buttonText1"    # Ljava/lang/String;
    .param p4, "buttonID2"    # I
    .param p5, "buttonText2"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 985
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getUsableY()I

    move-result v4

    .line 986
    .local v4, "usableY":I
    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int v0, v4, v5

    .line 987
    .local v0, "buttonStartY":I
    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    shr-int/lit8 v1, v5, 0x1

    .line 989
    .local v1, "buttonWidth":I
    new-instance v3, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    invoke-direct {v3, p1}, Lcom/glu/android/ResFileDownloadView$GluTextArea;-><init>(Ljava/lang/String;)V

    .line 990
    .local v3, "gta":Lcom/glu/android/ResFileDownloadView$GluTextArea;
    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    sub-int/2addr v5, v7

    sub-int v6, v0, v4

    invoke-virtual {v3, v9, v4, v5, v6}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setBounds(IIII)V

    .line 991
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 993
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    invoke-direct {v2, p3, p2}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 994
    .local v2, "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    sub-int v5, v1, v7

    invoke-virtual {v2, v9, v0, v5, v8}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 995
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 997
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    .end local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    invoke-direct {v2, p5, p4}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 998
    .restart local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    add-int/lit8 v5, v1, 0x5

    sub-int v6, v1, v7

    invoke-virtual {v2, v5, v0, v6, v8}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 999
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1000
    return-void
.end method

.method public createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "buttonID1"    # I
    .param p3, "buttonText1"    # Ljava/lang/String;
    .param p4, "buttonID2"    # I
    .param p5, "buttonText2"    # Ljava/lang/String;
    .param p6, "buttonID3"    # I
    .param p7, "buttonText3"    # Ljava/lang/String;

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getUsableY()I

    move-result v4

    .line 1005
    .local v4, "usableY":I
    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    sub-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    add-int v0, v4, v5

    .line 1006
    .local v0, "buttonStartY":I
    iget v5, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    div-int/lit8 v1, v5, 0x3

    .line 1008
    .local v1, "buttonWidth":I
    new-instance v3, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    invoke-direct {v3, p1}, Lcom/glu/android/ResFileDownloadView$GluTextArea;-><init>(Ljava/lang/String;)V

    .line 1009
    .local v3, "gta":Lcom/glu/android/ResFileDownloadView$GluTextArea;
    const/4 v5, 0x5

    iget v6, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    const/16 v7, 0xa

    sub-int/2addr v6, v7

    sub-int v7, v0, v4

    invoke-virtual {v3, v5, v4, v6, v7}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setBounds(IIII)V

    .line 1010
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1012
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    invoke-direct {v2, p3, p2}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 1013
    .local v2, "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    const/4 v5, 0x5

    const/16 v6, 0xa

    sub-int v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 1014
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1016
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    .end local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    invoke-direct {v2, p5, p4}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 1017
    .restart local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    add-int/lit8 v5, v1, 0x5

    const/16 v6, 0xa

    sub-int v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 1018
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1020
    new-instance v2, Lcom/glu/android/ResFileDownloadView$GluButton;

    .end local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    invoke-direct {v2, p7, p6}, Lcom/glu/android/ResFileDownloadView$GluButton;-><init>(Ljava/lang/String;I)V

    .line 1021
    .restart local v2    # "gb":Lcom/glu/android/ResFileDownloadView$GluButton;
    add-int/lit8 v5, v1, 0x5

    shl-int/lit8 v5, v5, 0x1

    const/16 v6, 0xa

    sub-int v6, v1, v6

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v0, v6, v7}, Lcom/glu/android/ResFileDownloadView$GluButton;->setBounds(IIII)V

    .line 1022
    iget-object v5, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1023
    return-void
.end method

.method public createTextOnlyLayout(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getUsableY()I

    move-result v1

    .line 1030
    .local v1, "usableY":I
    new-instance v0, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    invoke-direct {v0, p1}, Lcom/glu/android/ResFileDownloadView$GluTextArea;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v0, "gta":Lcom/glu/android/ResFileDownloadView$GluTextArea;
    const/4 v2, 0x5

    iget v3, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setBounds(IIII)V

    .line 1033
    iget-object v2, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1034
    return-void
.end method

.method public deletePreviousResFiles()V
    .locals 9

    .prologue
    const-string v8, "/"

    const-string v7, ".big"

    .line 1091
    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v4

    .line 1092
    .local v4, "testPath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1093
    .local v3, "testFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1095
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1096
    .local v1, "files":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 1097
    aget-object v5, v1, v2

    const-string v6, ".big"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1098
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1099
    .local v0, "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1100
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1096
    .end local v0    # "deleteFile":Ljava/io/File;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1103
    .end local v1    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    const-string v5, "/sdcard/glu/skob2"

    invoke-static {v5}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1104
    new-instance v3, Ljava/io/File;

    .end local v3    # "testFile":Ljava/io/File;
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1105
    .restart local v3    # "testFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1107
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1108
    .restart local v1    # "files":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_3

    .line 1109
    aget-object v5, v1, v2

    const-string v6, ".big"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1110
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1111
    .restart local v0    # "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1112
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1108
    .end local v0    # "deleteFile":Ljava/io/File;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1115
    .end local v1    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getAltSDCardPath()Ljava/lang/String;

    move-result-object v4

    .line 1116
    new-instance v3, Ljava/io/File;

    .end local v3    # "testFile":Ljava/io/File;
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1117
    .restart local v3    # "testFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1119
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 1120
    .restart local v1    # "files":[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v5, v1

    if-ge v2, v5, :cond_5

    .line 1121
    aget-object v5, v1, v2

    const-string v6, ".big"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1122
    new-instance v0, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1123
    .restart local v0    # "deleteFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1124
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1120
    .end local v0    # "deleteFile":Ljava/io/File;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1127
    .end local v1    # "files":[Ljava/lang/String;
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method public deleteResFile()V
    .locals 2

    .prologue
    .line 497
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getDiskFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 501
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "resFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getSDCardFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .restart local v0    # "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 509
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 513
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "resFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getAltSDCardFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .restart local v0    # "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public getAltSDCardFilename()Ljava/lang/String;
    .locals 3

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getSDCardFilename()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdcard/"

    const-string v2, "sdcard/sd/"

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->replaceAllNotRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAltSDCardPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 474
    const-string v0, "/sdcard/glu/skob2"

    invoke-static {v0}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdcard/"

    const-string v2, "sdcard/sd/"

    invoke-static {v0, v1, v2}, Lcom/glu/android/GluUtil;->replaceAllNotRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiskFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/glu/android/ResFileDownloadView;->getResFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResFileSize()I
    .locals 3

    .prologue
    .line 524
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getDiskFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .local v0, "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 527
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    .line 539
    :goto_0
    return v1

    .line 529
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "resFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getSDCardFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 531
    .restart local v0    # "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 532
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 534
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "resFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getAltSDCardFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 536
    .restart local v0    # "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    goto :goto_0

    .line 539
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSDCardFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/glu/skob2"

    invoke-static {v1}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/glu/android/ResFileDownloadView;->getResFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempDiskFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "skob2_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTempSDCardFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/glu/skob2"

    invoke-static {v1}, Lcom/glu/android/GluUtil;->filePathWithEnder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "skob2_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsableY()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 971
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 974
    .end local p0    # "this":Lcom/glu/android/ResFileDownloadView;
    :goto_0
    return v0

    .restart local p0    # "this":Lcom/glu/android/ResFileDownloadView;
    :cond_0
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/glu/android/ResFileDownloadView;
    check-cast p0, Lcom/glu/android/ResFileDownloadView$GluWidget;

    iget v0, p0, Lcom/glu/android/ResFileDownloadView$GluWidget;->m_dy:I

    goto :goto_0
.end method

.method public init(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "~~ init("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 342
    sput-object p0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    .line 343
    iput p1, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    .line 344
    iput p2, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    .line 345
    const/high16 v0, 0x41400000    # 12.0f

    .line 346
    .local v0, "font_size":F
    iget v1, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    const/16 v2, 0x190

    if-le v1, v2, :cond_0

    .line 347
    const/high16 v0, 0x41c00000    # 24.0f

    .line 348
    :cond_0
    invoke-static {}, Lcom/glu/android/GluUtil;->loadDownloadResumeStatus()V

    .line 350
    iget-boolean v1, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    if-eqz v1, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->resourceIsOnDisk()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 353
    iput-boolean v3, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    .line 359
    :cond_1
    :goto_0
    invoke-static {}, Lcom/glu/android/GluUtil;->loadUpgradeStatus()Z

    move-result v1

    if-nez v1, :cond_2

    .line 361
    sget-object v1, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iput-boolean v4, v1, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    .line 362
    invoke-static {}, Lcom/glu/android/GluUtil;->saveDownloadResumeStatus()V

    .line 365
    :cond_2
    const v1, 0x7f020001

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgL:Landroid/graphics/drawable/Drawable;

    .line 366
    const/high16 v1, 0x7f020000

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgC:Landroid/graphics/drawable/Drawable;

    .line 367
    const v1, 0x7f020002

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonImgR:Landroid/graphics/drawable/Drawable;

    .line 368
    const v1, 0x7f020004

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgL:Landroid/graphics/drawable/Drawable;

    .line 369
    const v1, 0x7f020003

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgC:Landroid/graphics/drawable/Drawable;

    .line 370
    const v1, 0x7f020005

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonSelectedImgR:Landroid/graphics/drawable/Drawable;

    .line 371
    const v1, 0x7f020020

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarImg:Landroid/graphics/drawable/Drawable;

    .line 374
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    .line 375
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFlags(I)V

    .line 376
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 378
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 379
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_titlebarPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 380
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    .line 381
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 383
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 384
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_buttonPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 385
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    .line 386
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 388
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 389
    iget-object v1, p0, Lcom/glu/android/ResFileDownloadView;->m_textAreaPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 391
    invoke-virtual {p0, v3}, Lcom/glu/android/ResFileDownloadView;->setFocusable(Z)V

    .line 392
    invoke-virtual {p0, v3}, Lcom/glu/android/ResFileDownloadView;->setFocusableInTouchMode(Z)V

    .line 395
    return-void

    .line 354
    :cond_3
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->resourceIsOnSDCard()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    iput-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    goto/16 :goto_0

    .line 357
    :cond_4
    iput-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    goto/16 :goto_0
.end method

.method public newState(I)V
    .locals 14
    .param p1, "state"    # I

    .prologue
    .line 807
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 965
    :goto_0
    return-void

    .line 810
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 815
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/glu/android/ResFileDownloadView$GluTitlebar;

    if-nez v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 821
    new-instance v12, Lcom/glu/android/ResFileDownloadView$GluTitlebar;

    const v0, 0x7f060007

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/glu/android/ResFileDownloadView$GluTitlebar;-><init>(Ljava/lang/String;)V

    .line 822
    .local v12, "gt":Lcom/glu/android/ResFileDownloadView$GluTitlebar;
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/glu/android/ResFileDownloadView;->m_screenWidth:I

    const/4 v3, 0x0

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/glu/android/ResFileDownloadView$GluTitlebar;->setBounds(IIII)V

    .line 823
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 832
    .end local v12    # "gt":Lcom/glu/android/ResFileDownloadView$GluTitlebar;
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newState() unhandled state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 954
    :goto_1
    iget v0, p0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    iput v0, p0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    .line 955
    iput p1, p0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    .line 957
    iget v0, p0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 959
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/glu/android/GluAds;->setAdState(I)V

    .line 960
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->adjustTextLayoutForAd()V

    goto :goto_0

    .line 828
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 829
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    .line 836
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumDone:Z

    .line 837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    .line 839
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 841
    const v0, 0x7f06000a

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glu/android/ResFileDownloadView;->createTextOnlyLayout(Ljava/lang/String;)V

    goto :goto_1

    .line 844
    :pswitch_1
    iget v0, p0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    if-nez v0, :cond_4

    sget-object v0, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 845
    .local v1, "dlPromptMsg":Ljava/lang/String;
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f06000e

    invoke-static {v1}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    .end local v1    # "dlPromptMsg":Ljava/lang/String;
    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/glu/android/GluUtil;->getKilobyteString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 846
    .restart local v1    # "dlPromptMsg":Ljava/lang/String;
    const/4 v2, 0x0

    const v0, 0x7f06000f

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const v0, 0x7f060010

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 844
    .end local v1    # "dlPromptMsg":Ljava/lang/String;
    :cond_4
    const-string v0, ""

    move-object v1, v0

    goto :goto_3

    .line 850
    :pswitch_2
    sget-object v3, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    const/4 v4, 0x6

    const v0, 0x7f06001a

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    const v0, 0x7f06001b

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 854
    :pswitch_3
    iget-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    if-eqz v0, :cond_5

    .line 855
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getResFileSize()I

    move-result v0

    iput v0, p0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    .line 859
    :goto_4
    const v0, 0x7f060011

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    invoke-static {v3}, Lcom/glu/android/GluUtil;->getBytesStringNice(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/glu/android/GluUtil;->getBytesStringNice(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glu/android/ResFileDownloadView;->createTextOnlyLayout(Ljava/lang/String;)V

    .line 863
    iget-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    if-eqz v0, :cond_6

    .line 864
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getDiskFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 865
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getTempDiskFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    .line 873
    :goto_5
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 874
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    .line 876
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    .line 878
    new-instance v0, Lcom/glu/android/ResFileDownloadView$1;

    invoke-direct {v0, p0}, Lcom/glu/android/ResFileDownloadView$1;-><init>(Lcom/glu/android/ResFileDownloadView;)V

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadThread:Ljava/lang/Thread;

    .line 889
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 857
    :cond_5
    const/4 v0, 0x0

    iput v0, p0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    goto :goto_4

    .line 868
    :cond_6
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getSDCardFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFilename:Ljava/lang/String;

    .line 869
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getTempSDCardFilename()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glu/android/ResFileDownloadView;->m_tempFilename:Ljava/lang/String;

    goto :goto_5

    .line 893
    :pswitch_4
    iget-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    if-eqz v0, :cond_7

    const v0, 0x7f06000f

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 895
    .local v13, "resumeFileLocation":Ljava/lang/String;
    :goto_6
    const v0, 0x7f06001c

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v13, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xa

    const v0, 0x7f06001d

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xb

    const v0, 0x7f06001e

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 893
    .end local v13    # "resumeFileLocation":Ljava/lang/String;
    :cond_7
    const v0, 0x7f060010

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    goto :goto_6

    .line 900
    :pswitch_5
    const v0, 0x7f06001f

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    const v0, 0x7f060008

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    const v0, 0x7f060009

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 905
    :pswitch_6
    const v0, 0x7f060020

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const v0, 0x7f060021

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const v0, 0x7f060022

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 910
    :pswitch_7
    const v0, 0x7f060023

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/glu/android/GluUtil;->getKilobyteString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const v0, 0x7f060008

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x5

    const v0, 0x7f060009

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 915
    :pswitch_8
    invoke-static {}, Lcom/glu/android/GluUtil;->loadUpgradeStatus()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 916
    const v0, 0x7f060026

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/glu/android/GluUtil;->getKilobyteString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    const v0, 0x7f060008

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xe

    const v0, 0x7f060027

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xf

    const v0, 0x7f060028

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 924
    :goto_7
    invoke-static {}, Lcom/glu/android/GameLet;->incrementTimesAskedForUpgrade()V

    goto/16 :goto_1

    .line 921
    :cond_8
    const v0, 0x7f060026

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/glu/android/GluUtil;->getKilobyteString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0xd

    const v0, 0x7f060008

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xe

    const v0, 0x7f060027

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/glu/android/ResFileDownloadView;->createPromptLayout(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    goto :goto_7

    .line 927
    :pswitch_9
    new-instance v10, Ljava/io/File;

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getDiskFilename()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 929
    .local v10, "deleteFile":Ljava/io/File;
    const/4 v11, 0x0

    .line 931
    .local v11, "deleteResult":Z
    :try_start_0
    invoke-virtual {v10}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 934
    :goto_8
    if-eqz v11, :cond_9

    .line 935
    const v0, 0x7f060024

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glu/android/ResFileDownloadView;->m_deleteMessage:Ljava/lang/String;

    .line 939
    :goto_9
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->m_deleteMessage:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/glu/android/ResFileDownloadView;->createTextOnlyLayout(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 937
    :cond_9
    const v0, 0x7f060025

    invoke-static {v0}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glu/android/ResFileDownloadView;->m_deleteMessage:Ljava/lang/String;

    goto :goto_9

    .line 942
    .end local v10    # "deleteFile":Ljava/io/File;
    .end local v11    # "deleteResult":Z
    :pswitch_a
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->startGame()V

    goto/16 :goto_1

    .line 945
    :pswitch_b
    invoke-static {}, Lcom/glu/android/GluUtil;->loadUpgradeStatus()Z

    move-result v0

    if-nez v0, :cond_a

    .line 946
    invoke-static {}, Lcom/glu/android/GluUtil;->saveUpgradeStatus()V

    .line 947
    :cond_a
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    invoke-virtual {v0}, Lcom/glu/android/GameLet;->finishApp()V

    goto/16 :goto_1

    .line 963
    :cond_b
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/glu/android/GluAds;->setAdState(I)V

    goto/16 :goto_0

    .line 932
    .restart local v10    # "deleteFile":Ljava/io/File;
    .restart local v11    # "deleteResult":Z
    :catch_0
    move-exception v0

    goto :goto_8

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "g"    # Landroid/graphics/Canvas;

    .prologue
    .line 1236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1239
    .local v0, "curTime":J
    iget-wide v3, p0, Lcom/glu/android/ResFileDownloadView;->m_lastTickTime:J

    sub-long v3, v0, v3

    long-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/glu/android/ResFileDownloadView;->onTick(I)V

    .line 1240
    iput-wide v0, p0, Lcom/glu/android/ResFileDownloadView;->m_lastTickTime:J

    .line 1243
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1244
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3, p1}, Lcom/glu/android/ResFileDownloadView$GluWidget;->draw(Landroid/graphics/Canvas;)V

    .line 1243
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1247
    :cond_0
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadThread:Ljava/lang/Thread;

    if-eqz v3, :cond_1

    .line 1248
    const-wide/16 v3, 0x64

    invoke-virtual {p0, v3, v4}, Lcom/glu/android/ResFileDownloadView;->postInvalidateDelayed(J)V

    .line 1251
    :goto_1
    return-void

    .line 1250
    :cond_1
    const-wide/16 v3, 0xa

    invoke-virtual {p0, v3, v4}, Lcom/glu/android/ResFileDownloadView;->postInvalidateDelayed(J)V

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResFileDownloadView.onKeyDown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1216
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 1222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResFileDownloadView.onKeyUp("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 1224
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1225
    iput-boolean v2, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    .line 1227
    :cond_0
    return v2
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 404
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 405
    iget-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_heightNeedsCorrection:Z

    if-eqz v0, :cond_0

    .line 407
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 408
    iget v0, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/glu/android/ResFileDownloadView;->m_annunciatorBarHeight:I

    .line 409
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/glu/android/ResFileDownloadView;->m_screenHeight:I

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/glu/android/ResFileDownloadView;->m_heightNeedsCorrection:Z

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling setMeasuredDimension("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") in res view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/glu/android/ResFileDownloadView;->setMeasuredDimension(II)V

    .line 415
    return-void
.end method

.method public onTick(I)V
    .locals 11
    .param p1, "elapseMS"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 544
    const/4 v1, -0x1

    .line 547
    .local v1, "newState":I
    const/4 v3, -0x2

    .line 548
    .local v3, "widgetID":I
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    if-eqz v4, :cond_0

    .line 549
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v4}, Lcom/glu/android/ResFileDownloadView$GluWidget;->getID()I

    move-result v3

    .line 551
    :cond_0
    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_state:I

    packed-switch v4, :pswitch_data_0

    .line 794
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTick() unhandled state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 798
    :cond_1
    :goto_0
    :pswitch_1
    iput-boolean v8, p0, Lcom/glu/android/ResFileDownloadView;->m_pointerLatched:Z

    .line 799
    iput-boolean v8, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    .line 800
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 802
    invoke-virtual {p0, v1}, Lcom/glu/android/ResFileDownloadView;->newState(I)V

    .line 803
    return-void

    .line 554
    :pswitch_2
    invoke-static {v9}, Lcom/glu/android/GluAds;->setAdState(I)V

    .line 555
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    if-eqz v4, :cond_2

    .line 556
    const/4 v1, 0x4

    goto :goto_0

    .line 557
    :cond_2
    sget-boolean v4, Lcom/glu/android/GameLet;->buildV1:Z

    if-eqz v4, :cond_3

    .line 558
    const/16 v1, 0xb

    goto :goto_0

    .line 560
    :cond_3
    const/4 v1, 0x0

    .line 561
    goto :goto_0

    .line 564
    :pswitch_3
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumDone:Z

    if-eqz v4, :cond_9

    .line 566
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumPassed:Z

    if-eqz v4, :cond_6

    .line 568
    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    if-ne v4, v6, :cond_5

    .line 570
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->resourceIsOnDisk()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 571
    const/4 v1, 0x6

    goto :goto_0

    .line 573
    :cond_4
    const/16 v1, 0x9

    goto :goto_0

    .line 576
    :cond_5
    const/16 v1, 0x9

    goto :goto_0

    .line 580
    :cond_6
    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    if-ne v4, v6, :cond_7

    .line 581
    const/4 v1, 0x1

    goto :goto_0

    .line 582
    :cond_7
    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_prevState:I

    if-ne v4, v5, :cond_1

    .line 584
    sget-object v4, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 587
    const v4, 0x7f060019

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    .line 589
    :cond_8
    sget-object v4, Lcom/glu/android/ResFileDownloadView;->m_checksumError:Ljava/lang/String;

    sput-object v4, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 591
    const/4 v1, 0x3

    goto :goto_0

    .line 595
    :cond_9
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_checksumInProgress:Z

    if-nez v4, :cond_1

    .line 597
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->checkResourceFile()V

    goto :goto_0

    .line 601
    :pswitch_4
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v4, :cond_a

    .line 602
    const/16 v1, 0xa

    goto :goto_0

    .line 605
    :cond_a
    if-nez v3, :cond_b

    .line 607
    iput-boolean v9, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    .line 609
    const/4 v1, 0x2

    goto :goto_0

    .line 611
    :cond_b
    if-ne v3, v9, :cond_1

    .line 613
    invoke-static {}, Lcom/glu/android/GluUtil;->prepareSDCard()Z

    move-result v4

    if-nez v4, :cond_c

    .line 616
    const v4, 0x7f060018

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 618
    const/4 v1, 0x3

    goto :goto_0

    .line 622
    :cond_c
    const/4 v1, 0x2

    .line 624
    iput-boolean v8, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    goto :goto_0

    .line 630
    :pswitch_5
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 632
    const/4 v2, 0x0

    .line 633
    .local v2, "textBoxElement":I
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, v9, :cond_d

    .line 634
    const/4 v2, 0x1

    .line 636
    :cond_d
    iget-object v4, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 638
    .local v0, "gta":Lcom/glu/android/ResFileDownloadView$GluWidget;
    instance-of v4, v0, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    if-eqz v4, :cond_e

    .line 639
    check-cast v0, Lcom/glu/android/ResFileDownloadView$GluTextArea;

    .end local v0    # "gta":Lcom/glu/android/ResFileDownloadView$GluWidget;
    const v4, 0x7f060011

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/glu/android/ResFileDownloadView;->m_bytesDownloaded:I

    invoke-static {v6}, Lcom/glu/android/GluUtil;->getBytesStringNice(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {}, Lcom/glu/android/GluUtil;->getExpectedFilesize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/glu/android/GluUtil;->getBytesStringNice(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/glu/android/ResFileDownloadView$GluTextArea;->setText(Ljava/lang/String;)V

    .line 644
    :cond_e
    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_adRotateTimer:I

    sub-int/2addr v4, p1

    iput v4, p0, Lcom/glu/android/ResFileDownloadView;->m_adRotateTimer:I

    .line 645
    iget v4, p0, Lcom/glu/android/ResFileDownloadView;->m_adRotateTimer:I

    if-gtz v4, :cond_f

    .line 647
    invoke-static {v8}, Lcom/glu/android/GluAds;->setAdState(I)V

    .line 648
    invoke-static {v10}, Lcom/glu/android/GluAds;->setAdState(I)V

    .line 650
    const/16 v4, 0x3a98

    iput v4, p0, Lcom/glu/android/ResFileDownloadView;->m_adRotateTimer:I

    .line 655
    .end local v2    # "textBoxElement":I
    :cond_f
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    if-eqz v4, :cond_11

    .line 657
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    if-eqz v4, :cond_10

    .line 658
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 660
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 662
    :cond_11
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v4, :cond_1

    .line 664
    iput-boolean v9, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadCancelled:Z

    goto/16 :goto_0

    .line 668
    :pswitch_6
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v4, :cond_12

    .line 669
    const/16 v1, 0xa

    goto/16 :goto_0

    .line 672
    :cond_12
    const/4 v4, 0x6

    if-ne v3, v4, :cond_14

    .line 674
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    if-eqz v4, :cond_13

    .line 675
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 677
    :cond_13
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 679
    :cond_14
    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 681
    const/16 v1, 0xa

    goto/16 :goto_0

    .line 686
    :pswitch_7
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v4, :cond_15

    .line 687
    const/16 v1, 0xa

    goto/16 :goto_0

    .line 690
    :cond_15
    const/16 v4, 0xa

    if-ne v3, v4, :cond_17

    .line 692
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadToDisk:Z

    if-nez v4, :cond_16

    invoke-static {}, Lcom/glu/android/GluUtil;->prepareSDCard()Z

    move-result v4

    if-nez v4, :cond_16

    .line 695
    const v4, 0x7f060018

    invoke-static {v4}, Lcom/glu/android/GluUtil;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 697
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 701
    :cond_16
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 705
    :cond_17
    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 707
    const/4 v1, 0x5

    goto/16 :goto_0

    .line 712
    :pswitch_8
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v4, :cond_18

    .line 713
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 716
    :cond_18
    const/16 v4, 0x8

    if-ne v3, v4, :cond_19

    .line 718
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->deleteResFile()V

    .line 719
    iput-boolean v8, p0, Lcom/glu/android/ResFileDownloadView;->m_downloadInterrupted:Z

    .line 720
    invoke-static {}, Lcom/glu/android/GluUtil;->saveDownloadResumeStatus()V

    .line 722
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 724
    :cond_19
    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    .line 725
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 729
    :pswitch_9
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v4, :cond_1a

    .line 730
    const/16 v1, 0xa

    goto/16 :goto_0

    .line 733
    :cond_1a
    if-ne v3, v5, :cond_1b

    .line 734
    const/16 v1, 0x9

    goto/16 :goto_0

    .line 735
    :cond_1b
    if-ne v3, v10, :cond_1

    .line 736
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 740
    :pswitch_a
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v4, :cond_1c

    .line 741
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 744
    :cond_1c
    const/4 v4, 0x4

    if-ne v3, v4, :cond_1d

    .line 745
    const/16 v1, 0x8

    goto/16 :goto_0

    .line 746
    :cond_1d
    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 747
    const/4 v1, 0x6

    goto/16 :goto_0

    .line 751
    :pswitch_b
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-nez v4, :cond_1e

    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_pointerLatched:Z

    if-eqz v4, :cond_1

    .line 752
    :cond_1e
    const/16 v1, 0xa

    goto/16 :goto_0

    .line 757
    :pswitch_c
    iget-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_backPressed:Z

    if-eqz v4, :cond_1f

    .line 758
    const/16 v1, 0xa

    goto/16 :goto_0

    .line 761
    :cond_1f
    const/16 v4, 0xd

    if-ne v3, v4, :cond_20

    .line 763
    const/4 v1, 0x2

    .line 764
    sput v5, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    .line 765
    invoke-static {}, Lcom/glu/android/GluUtil;->saveUpgradeStatus()V

    goto/16 :goto_0

    .line 767
    :cond_20
    const/16 v4, 0xe

    if-ne v3, v4, :cond_22

    .line 769
    invoke-static {}, Lcom/glu/android/GluUtil;->loadUpgradeStatus()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 771
    sput v8, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    .line 772
    invoke-static {}, Lcom/glu/android/GameLet;->incrementTimesAskedForUpgrade()V

    .line 773
    invoke-static {}, Lcom/glu/android/GluUtil;->saveUpgradeStatus()V

    .line 781
    :goto_1
    const/16 v1, 0x9

    goto/16 :goto_0

    .line 777
    :cond_21
    sput v8, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    .line 778
    sput v8, Lcom/glu/android/GameLet;->numTimesAskedForUpgrade:I

    .line 779
    invoke-static {}, Lcom/glu/android/GluUtil;->saveUpgradeStatus()V

    goto :goto_1

    .line 783
    :cond_22
    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    .line 785
    sput v9, Lcom/glu/android/GameLet;->lastUpgradeChoice:I

    .line 786
    sput v8, Lcom/glu/android/GameLet;->numTimesAskedForUpgrade:I

    .line 787
    invoke-static {}, Lcom/glu/android/GluUtil;->saveUpgradeStatus()V

    .line 788
    const/16 v1, 0x9

    goto/16 :goto_0

    .line 551
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_1
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1185
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1187
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1208
    :cond_0
    :pswitch_0
    return v4

    .line 1194
    :pswitch_1
    iput-boolean v4, p0, Lcom/glu/android/ResFileDownloadView;->m_pointerLatched:Z

    .line 1195
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1196
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3, v1, v2}, Lcom/glu/android/ResFileDownloadView$GluWidget;->containsCoords(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1197
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3, v1, v2}, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerPressed(II)V

    .line 1195
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1200
    .end local v0    # "i":I
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1201
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3, v1, v2}, Lcom/glu/android/ResFileDownloadView$GluWidget;->containsCoords(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1202
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3, v1, v2}, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerReleased(II)V

    .line 1200
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1204
    :cond_2
    iget-object v3, p0, Lcom/glu/android/ResFileDownloadView;->m_widgets:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/glu/android/ResFileDownloadView$GluWidget;

    invoke-virtual {v3}, Lcom/glu/android/ResFileDownloadView$GluWidget;->pointerReleasedElsewhere()V

    goto :goto_2

    .line 1187
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onWidgetClicked(Lcom/glu/android/ResFileDownloadView$GluWidget;)V
    .locals 1
    .param p1, "widget"    # Lcom/glu/android/ResFileDownloadView$GluWidget;

    .prologue
    .line 1052
    instance-of v0, p1, Lcom/glu/android/ResFileDownloadView$GluButton;

    if-eqz v0, :cond_0

    .line 1053
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView;->m_activeWidget:Lcom/glu/android/ResFileDownloadView$GluWidget;

    .line 1054
    :cond_0
    return-void
.end method

.method public resourceIsOnDisk()Z
    .locals 2

    .prologue
    .line 478
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getDiskFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    .local v0, "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public resourceIsOnSDCard()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 485
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getSDCardFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 487
    .local v0, "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 492
    :goto_0
    return v1

    .line 490
    :cond_0
    new-instance v0, Ljava/io/File;

    .end local v0    # "resFile":Ljava/io/File;
    invoke-virtual {p0}, Lcom/glu/android/ResFileDownloadView;->getAltSDCardFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .restart local v0    # "resFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
