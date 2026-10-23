.class public Lcom/glu/android/GluVCAST;
.super Ljava/lang/Object;
.source "GluVCAST.java"


# static fields
.field public static midlet:Lcom/glu/android/GameLet;


# instance fields
.field height:I

.field keyword:Ljava/lang/String;

.field message:Ljava/lang/String;

.field response:I

.field width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/glu/android/GameLet;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "mid"    # Lcom/glu/android/GameLet;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sput-object p2, Lcom/glu/android/GluVCAST;->midlet:Lcom/glu/android/GameLet;

    .line 31
    iput-object p1, p0, Lcom/glu/android/GluVCAST;->keyword:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public decodeLicenseStatus(I)Ljava/lang/String;
    .locals 1
    .param p1, "licenseStatus"    # I

    .prologue
    .line 78
    sparse-switch p1, :sswitch_data_0

    .line 132
    const-string v0, "Unknown Error"

    :goto_0
    return-object v0

    .line 82
    :sswitch_0
    const-string v0, "LICENSE_OK"

    goto :goto_0

    .line 86
    :sswitch_1
    const-string v0, "LICENSE_TRIAL_OK"

    goto :goto_0

    .line 92
    :sswitch_2
    const-string v0, "LICENSE_NOT_FOUND"

    goto :goto_0

    .line 99
    :sswitch_3
    const-string v0, "LICENSE_VALIDATION_FAILED"

    goto :goto_0

    .line 106
    :sswitch_4
    const-string v0, "ERROR_ILLEGAL_ARGUMENT"

    goto :goto_0

    .line 113
    :sswitch_5
    const-string v0, "ERROR_SECURITY"

    goto :goto_0

    .line 119
    :sswitch_6
    const-string v0, "ERROR_GENERAL"

    goto :goto_0

    .line 125
    :sswitch_7
    const-string v0, "ERROR_CONTENT_HANDLER"

    goto :goto_0

    .line 78
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x32 -> :sswitch_3
        0x34 -> :sswitch_2
        0x64 -> :sswitch_7
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x6a -> :sswitch_6
    .end sparse-switch
.end method

.method public showNotify()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method protected sizeChanged(II)V
    .locals 0
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/glu/android/GluVCAST;->width:I

    .line 66
    iput p2, p0, Lcom/glu/android/GluVCAST;->height:I

    .line 67
    return-void
.end method

.method public validateLicense()I
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lcom/verizon/vcast/apps/LicenseAuthenticator;

    sget-object v1, Lcom/glu/android/GluVCAST;->midlet:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticator;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, "licenseAuthenticator":Lcom/verizon/vcast/apps/LicenseAuthenticator;
    iget-object v1, p0, Lcom/glu/android/GluVCAST;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->checkLicense(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/glu/android/GluVCAST;->response:I

    .line 40
    iget v1, p0, Lcom/glu/android/GluVCAST;->response:I

    return v1
.end method

.method public validateLicenseTest(I)I
    .locals 4
    .param p1, "returnVal"    # I

    .prologue
    .line 45
    new-instance v0, Lcom/verizon/vcast/apps/LicenseAuthenticator;

    sget-object v1, Lcom/glu/android/GluVCAST;->midlet:Lcom/glu/android/GameLet;

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticator;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "licenseAuthenticator":Lcom/verizon/vcast/apps/LicenseAuthenticator;
    iget-object v1, p0, Lcom/glu/android/GluVCAST;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->checkTestLicense(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/glu/android/GluVCAST;->response:I

    .line 47
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>VCAST keyword = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/glu/android/GluVCAST;->keyword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>>>>VCAST return = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/glu/android/GluVCAST;->response:I

    invoke-virtual {p0, v3}, Lcom/glu/android/GluVCAST;->decodeLicenseStatus(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    iget v1, p0, Lcom/glu/android/GluVCAST;->response:I

    return v1
.end method
