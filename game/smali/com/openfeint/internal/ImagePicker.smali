.class public Lcom/openfeint/internal/ImagePicker;
.super Ljava/lang/Object;
.source "ImagePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/internal/ImagePicker$ImagePickerCB;
    }
.end annotation


# static fields
.field public static final IMAGE_PICKER_REQ_ID:I = 0x2719

.field protected static final TAG:Ljava/lang/String; = "ImagePicker"


# instance fields
.field mActivity:Landroid/app/Activity;

.field mApiPath:Ljava/lang/String;

.field mCallback:Lcom/openfeint/internal/ImagePicker$ImagePickerCB;

.field mMaxLength:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/openfeint/internal/ImagePicker$ImagePickerCB;)V
    .locals 0
    .param p1, "currentActivity"    # Landroid/app/Activity;
    .param p2, "maxLength"    # I
    .param p3, "cb"    # Lcom/openfeint/internal/ImagePicker$ImagePickerCB;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/openfeint/internal/ImagePicker;->mActivity:Landroid/app/Activity;

    .line 36
    iput-object p3, p0, Lcom/openfeint/internal/ImagePicker;->mCallback:Lcom/openfeint/internal/ImagePicker$ImagePickerCB;

    .line 37
    iput p2, p0, Lcom/openfeint/internal/ImagePicker;->mMaxLength:I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0
    .param p1, "currentActivity"    # Landroid/app/Activity;
    .param p2, "apiPath"    # Ljava/lang/String;
    .param p3, "maxLength"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/openfeint/internal/ImagePicker;->mActivity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/openfeint/internal/ImagePicker;->mApiPath:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/openfeint/internal/ImagePicker;->mMaxLength:I

    .line 45
    return-void
.end method

.method private preScaleImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "maxLength"    # I

    .prologue
    const/4 v8, 0x0

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 128
    .local v3, "o":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 129
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v7, 0x0

    invoke-static {v6, v7, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 132
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 133
    .local v2, "minDim":I
    const/4 v5, 0x1

    .line 134
    .local v5, "scale":I
    :goto_0
    div-int/lit8 v6, v2, 0x2

    if-le v6, p2, :cond_0

    .line 135
    div-int/lit8 v2, v2, 0x2

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 140
    :cond_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    .local v4, "o2":Landroid/graphics/BitmapFactory$Options;
    iput v5, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 142
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 147
    .end local v2    # "minDim":I
    .end local v3    # "o":Landroid/graphics/BitmapFactory$Options;
    .end local v4    # "o2":Landroid/graphics/BitmapFactory$Options;
    .end local v5    # "scale":I
    :goto_1
    return-object v6

    .line 144
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 145
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "ImagePicker"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 147
    goto :goto_1
.end method

.method private resize(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .param p3, "rotation"    # I

    .prologue
    const/4 v6, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Lcom/openfeint/internal/ImagePicker;->preScaleImage(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, "image":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 104
    .local v10, "width":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 105
    .local v7, "height":I
    if-le v7, v10, :cond_0

    const/4 v4, 0x1

    move v9, v4

    .line 108
    .local v9, "tall":Z
    :goto_0
    if-eqz v9, :cond_1

    move v1, v6

    .line 109
    .local v1, "_x":I
    :goto_1
    if-eqz v9, :cond_2

    sub-int v4, v7, v10

    div-int/lit8 v4, v4, 0x2

    move v2, v4

    .line 110
    .local v2, "_y":I
    :goto_2
    if-eqz v9, :cond_3

    move v3, v10

    .line 112
    .local v3, "_length":I
    :goto_3
    int-to-float v4, p2

    int-to-float v11, v3

    div-float v8, v4, v11

    .line 114
    .local v8, "scale":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 115
    .local v5, "transform":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 116
    int-to-float v4, p3

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    move v4, v3

    .line 118
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .end local v1    # "_x":I
    .end local v2    # "_y":I
    .end local v3    # "_length":I
    .end local v5    # "transform":Landroid/graphics/Matrix;
    .end local v8    # "scale":F
    .end local v9    # "tall":Z
    :cond_0
    move v9, v6

    .line 105
    goto :goto_0

    .line 108
    .restart local v9    # "tall":Z
    :cond_1
    sub-int v4, v10, v7

    div-int/lit8 v4, v4, 0x2

    move v1, v4

    goto :goto_1

    .restart local v1    # "_x":I
    :cond_2
    move v2, v6

    .line 109
    goto :goto_2

    .restart local v2    # "_y":I
    :cond_3
    move v3, v7

    .line 110
    goto :goto_3
.end method

.method private upload(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 6
    .param p1, "apiPath"    # Ljava/lang/String;
    .param p2, "stream"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 151
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v0

    const-string v2, "profile.png"

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "image/png"

    new-instance v5, Lcom/openfeint/internal/ImagePicker$1;

    invoke-direct {v5, p0}, Lcom/openfeint/internal/ImagePicker$1;-><init>(Lcom/openfeint/internal/ImagePicker;)V

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/openfeint/internal/OpenFeintInternal;->uploadFile(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/openfeint/internal/request/IRawRequestDelegate;)V

    .line 156
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "returnedIntent"    # Landroid/content/Intent;

    .prologue
    .line 66
    const/16 v0, 0x2719

    if-ne p1, v0, :cond_3

    .line 67
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 68
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 69
    .local v1, "selectedImage":Landroid/net/Uri;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "orientation"

    aput-object v3, v2, v0

    .line 71
    .local v2, "columns":[Ljava/lang/String;
    iget-object v0, p0, Lcom/openfeint/internal/ImagePicker;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 72
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 74
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 75
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 76
    .local v8, "filePath":Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 77
    .local v11, "rotation":I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 79
    iget v0, p0, Lcom/openfeint/internal/ImagePicker;->mMaxLength:I

    invoke-direct {p0, v8, v0, v11}, Lcom/openfeint/internal/ImagePicker;->resize(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 80
    .local v9, "image":Landroid/graphics/Bitmap;
    const-string v0, "ImagePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1    # "selectedImage":Landroid/net/Uri;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "image! "

    .end local v2    # "columns":[Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/openfeint/internal/ImagePicker;->mCallback:Lcom/openfeint/internal/ImagePicker$ImagePickerCB;

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/openfeint/internal/ImagePicker;->mCallback:Lcom/openfeint/internal/ImagePicker$ImagePickerCB;

    invoke-virtual {v0, v9}, Lcom/openfeint/internal/ImagePicker$ImagePickerCB;->onPictureChosen(Landroid/graphics/Bitmap;)V

    .line 95
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "image":Landroid/graphics/Bitmap;
    .end local v11    # "rotation":I
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 97
    :goto_1
    return v0

    .line 86
    .restart local v6    # "columnIndex":I
    .restart local v7    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "filePath":Ljava/lang/String;
    .restart local v9    # "image":Landroid/graphics/Bitmap;
    .restart local v11    # "rotation":I
    :cond_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87
    .local v10, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v9, v0, v1, v10}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 88
    iget-object v0, p0, Lcom/openfeint/internal/ImagePicker;->mApiPath:Ljava/lang/String;

    invoke-direct {p0, v0, v10}, Lcom/openfeint/internal/ImagePicker;->upload(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 92
    .end local v6    # "columnIndex":I
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v8    # "filePath":Ljava/lang/String;
    .end local v9    # "image":Landroid/graphics/Bitmap;
    .end local v10    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "rotation":I
    :cond_2
    iget-object v0, p0, Lcom/openfeint/internal/ImagePicker;->mCallback:Lcom/openfeint/internal/ImagePicker$ImagePickerCB;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/openfeint/internal/ImagePicker;->mCallback:Lcom/openfeint/internal/ImagePicker$ImagePickerCB;

    invoke-virtual {v0}, Lcom/openfeint/internal/ImagePicker$ImagePickerCB;->onAbort()V

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public show()Lcom/openfeint/internal/ImagePicker;
    .locals 7

    .prologue
    .line 49
    iget-object v3, p0, Lcom/openfeint/internal/ImagePicker;->mActivity:Landroid/app/Activity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 50
    .local v0, "am":Landroid/app/ActivityManager;
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 51
    .local v2, "mi":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 53
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v5, 0x3200000

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 54
    invoke-static {}, Lcom/openfeint/internal/OpenFeintInternal;->getInstance()Lcom/openfeint/internal/OpenFeintInternal;

    move-result-object v3

    const-string v4, "Your device is low on memory.  Please restart your device before trying to select a profile picture."

    invoke-virtual {v3, v4}, Lcom/openfeint/internal/OpenFeintInternal;->displayErrorDialog(Ljava/lang/CharSequence;)V

    .line 60
    :goto_0
    return-object p0

    .line 56
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.PICK"

    sget-object v4, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    iget-object v3, p0, Lcom/openfeint/internal/ImagePicker;->mActivity:Landroid/app/Activity;

    const/16 v4, 0x2719

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
