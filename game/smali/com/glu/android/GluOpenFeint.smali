.class public Lcom/glu/android/GluOpenFeint;
.super Ljava/lang/Object;
.source "GluOpenFeint.java"


# static fields
.field private static final ACHIEVEMENT_IDS:[Ljava/lang/String;

.field public static final GAMECENTER_EVENT__DISPLAY_ACHIEVEMENTS:I = 0x1

.field public static final GAMECENTER_EVENT__SHOW_DASH:I = 0x0

.field public static final GAMECENTER_EVENT__UNLOCK_ACHIEVEMENT:I = 0x2

.field private static final MAX_PROMPTS:B = 0x5t

.field private static final OF__ENABLED:Z = true

.field private static final OF__GAME_NAME:Ljava/lang/String; = "Super KO Boxing 2"

.field private static final OF__ID:Ljava/lang/String; = "162562"

.field private static final OF__KEY:Ljava/lang/String; = "gvyDx4nowzM56izpk8vlw"

.field private static final OF__SECRET:Ljava/lang/String; = "bGBeCV3O1a2yffUDMlG5OacATV9RKow7RQlpVmVIY"

.field private static inInit:Z

.field private static numPrompts:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 20
    const/16 v0, 0x4a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "578292"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "578322"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "582712"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "578332"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "581312"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "581322"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "581302"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "582722"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "581332"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "581342"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "581352"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "581362"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "581382"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "581372"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "581392"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "581402"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "581412"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "582062"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "581632"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "581432"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "581422"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "581652"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "581662"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "581642"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "581672"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "581682"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "581692"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "581712"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "581722"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "581702"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "581852"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "581842"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "581832"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "581882"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "581872"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "581862"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "581902"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "581912"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "581892"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "581922"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "581932"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "581942"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "581962"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "581972"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "581952"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "582002"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "581992"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "581982"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "582032"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "582012"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "582022"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "582052"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "582042"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "582072"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "582092"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "582082"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "582732"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "582632"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "582642"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "582652"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "582662"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "582672"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "582742"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "582752"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "582762"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "582682"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "582692"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "582702"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "582122"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "582112"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "582102"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "582152"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "582142"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "582132"

    aput-object v2, v0, v1

    sput-object v0, Lcom/glu/android/GluOpenFeint;->ACHIEVEMENT_IDS:[Ljava/lang/String;

    .line 104
    sput-boolean v3, Lcom/glu/android/GluOpenFeint;->inInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 12
    sget-boolean v0, Lcom/glu/android/GluOpenFeint;->inInit:Z

    return v0
.end method

.method static synthetic access$108()B
    .locals 2

    .prologue
    .line 12
    sget-byte v0, Lcom/glu/android/GluOpenFeint;->numPrompts:B

    add-int/lit8 v1, v0, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/glu/android/GluOpenFeint;->numPrompts:B

    return v0
.end method

.method public static handleEvent(II)V
    .locals 2
    .param p0, "event"    # I
    .param p1, "param"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    sput-boolean v0, Lcom/glu/android/GluOpenFeint;->inInit:Z

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OF handleEvent ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 176
    packed-switch p0, :pswitch_data_0

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 178
    :pswitch_0
    invoke-static {}, Lcom/openfeint/api/ui/Dashboard;->open()V

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-static {}, Lcom/openfeint/api/ui/Dashboard;->openAchievements()V

    goto :goto_0

    .line 184
    :pswitch_2
    invoke-static {}, Lcom/openfeint/api/OpenFeint;->isUserLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    sget-object v0, Lcom/glu/android/GluOpenFeint;->ACHIEVEMENT_IDS:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 186
    new-instance v0, Lcom/openfeint/api/resource/Achievement;

    sget-object v1, Lcom/glu/android/GluOpenFeint;->ACHIEVEMENT_IDS:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Lcom/openfeint/api/resource/Achievement;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/openfeint/api/resource/Achievement;->unlock(Lcom/openfeint/api/resource/Achievement$UnlockCB;)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static initialize()V
    .locals 5

    .prologue
    .line 145
    const/4 v1, 0x1

    sput-boolean v1, Lcom/glu/android/GluOpenFeint;->inInit:Z

    .line 147
    invoke-static {}, Lcom/glu/android/GluOpenFeint;->loadNumPrompts()Z

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OF INIT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-byte v2, Lcom/glu/android/GluOpenFeint;->numPrompts:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 150
    new-instance v0, Lcom/openfeint/api/OpenFeintSettings;

    const-string v1, "Super KO Boxing 2"

    const-string v2, "gvyDx4nowzM56izpk8vlw"

    const-string v3, "bGBeCV3O1a2yffUDMlG5OacATV9RKow7RQlpVmVIY"

    const-string v4, "162562"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/openfeint/api/OpenFeintSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .local v0, "settings":Lcom/openfeint/api/OpenFeintSettings;
    sget-byte v1, Lcom/glu/android/GluOpenFeint;->numPrompts:B

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 152
    const-string v1, "open initialization"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 153
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    new-instance v2, Lcom/glu/android/GluOpenFeint$1;

    invoke-direct {v2}, Lcom/glu/android/GluOpenFeint$1;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/openfeint/api/OpenFeint;->initialize(Landroid/app/Activity;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string v1, "init without login"

    invoke-static {v1}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 165
    sget-object v1, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    new-instance v2, Lcom/glu/android/GluOpenFeint$2;

    invoke-direct {v2}, Lcom/glu/android/GluOpenFeint$2;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/openfeint/api/OpenFeint;->initializeWithoutLoggingIn(Landroid/app/Activity;Lcom/openfeint/api/OpenFeintSettings;Lcom/openfeint/api/OpenFeintDelegate;)V

    goto :goto_0
.end method

.method public static loadNumPrompts()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "of.dat"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 121
    .local v4, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 123
    sput-byte v8, Lcom/glu/android/GluOpenFeint;->numPrompts:B

    .line 124
    const-string v6, "no exising prompt count"

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    move v6, v8

    .line 139
    :goto_0
    return v6

    .line 129
    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 130
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v6, 0x1

    new-array v0, v6, [B

    .line 131
    .local v0, "buffer":[B
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 132
    .local v1, "count":I
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 133
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    sput-byte v6, Lcom/glu/android/GluOpenFeint;->numPrompts:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v6, v9

    .line 139
    goto :goto_0

    .line 134
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 135
    .local v2, "ex":Ljava/lang/Exception;
    sput-byte v8, Lcom/glu/android/GluOpenFeint;->numPrompts:B

    .line 136
    const-string v6, "exception"

    invoke-static {v6}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    move v6, v8

    .line 137
    goto :goto_0
.end method

.method public static saveNumPrompts()V
    .locals 5

    .prologue
    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/glu/android/GluUtil;->getLocalSaveDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "of.dat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "filename":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 111
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-byte v3, Lcom/glu/android/GluOpenFeint;->numPrompts:B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    .line 112
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 114
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving upgrade status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
