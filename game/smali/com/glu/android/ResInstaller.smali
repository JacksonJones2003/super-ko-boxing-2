.class public Lcom/glu/android/ResInstaller;
.super Ljava/lang/Object;

.method public static install(Ljava/lang/String;)V
    .locals 6
    :try_start_0
    new-instance v0, Ljava/io/File;
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    move-result v1
    if-nez v1, :done
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
    move-result-object v1
    const-string v2, "skob2_none.big"
    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    move-result-object v1
    new-instance v3, Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    const-string v4, ".tmp"
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v2
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    new-instance v2, Ljava/io/FileOutputStream;
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    const/high16 v4, 0x10000
    new-array v4, v4, [B
    :loop
    invoke-virtual {v1, v4}, Ljava/io/InputStream;->read([B)I
    move-result v5
    if-lez v5, :eof
    const/4 p0, 0x0
    invoke-virtual {v2, v4, p0, v5}, Ljava/io/FileOutputStream;->write([BII)V
    goto :loop
    :eof
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :done
    :done
    return-void
.end method

.method public static hideBars(Landroid/app/Activity;)V
    .locals 3
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    const/16 v1, 0x13
    if-lt v0, v1, :done
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
    move-result-object v1
    const/16 v2, 0x1c
    if-lt v0, v2, :nocut
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;
    move-result-object v2
    const/4 v0, 0x1
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :nocut
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;
    move-result-object v1
    const/16 v0, 0x1706
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :done
    :done
    return-void
.end method
