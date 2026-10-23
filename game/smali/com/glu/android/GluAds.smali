.class public Lcom/glu/android/GluAds;
.super Ljava/lang/Object;
.source "GluAds.java"


# static fields
.field public static final ADSTATE_AD_LARGE:I = 0x3

.field public static final ADSTATE_AD_SMALL:I = 0x2

.field public static final ADSTATE_INIT:I = 0x1

.field public static final ADSTATE_NONE:I = 0x0

.field public static final ADS__ENABLED:Z = true

.field private static final ADS__GOOGLE__APP:Ljava/lang/String; = "Super KO Boxing 2"

.field private static final ADS__GOOGLE__CHANNEL:Ljava/lang/String; = "4428854747"

.field private static final ADS__GOOGLE__CLIENT_ID:Ljava/lang/String; = "ca-mb-app-pub-9518260973309814"

.field private static final ADS__GOOGLE__COLOR__LARGE_BACKGROUND:Ljava/lang/String; = "000000"

.field private static final ADS__GOOGLE__COLOR__LARGE_BORDER:Ljava/lang/String; = "cccccc"

.field private static final ADS__GOOGLE__COLOR__LARGE_LINK:Ljava/lang/String; = "ffffff"

.field private static final ADS__GOOGLE__COLOR__LARGE_TEXT:Ljava/lang/String; = "ece284"

.field private static final ADS__GOOGLE__COLOR__LARGE_URL:Ljava/lang/String; = "999999"

.field private static final ADS__GOOGLE__COLOR__SMALL_BACKGROUND:Ljava/lang/String; = "ddbb55"

.field private static final ADS__GOOGLE__COLOR__SMALL_BORDER:Ljava/lang/String; = "ddbb55"

.field private static final ADS__GOOGLE__COLOR__SMALL_LINK:Ljava/lang/String; = "000000"

.field private static final ADS__GOOGLE__COLOR__SMALL_TEXT:Ljava/lang/String; = "333333"

.field private static final ADS__GOOGLE__COLOR__SMALL_URL:Ljava/lang/String; = "666666"

.field private static final ADS__GOOGLE__COMPANY:Ljava/lang/String; = "Glu Mobile"

.field private static final ADS__GOOGLE__KEYWORDS:[Ljava/lang/String;

.field private static final ADS__GOOGLE__TESTING:Z = true

.field private static adSpecCreated:Z

.field public static m_adHeight:I

.field public static m_adLarge:Lcom/google/ads/AdSenseSpec;

.field public static m_adSmall:Lcom/google/ads/AdSenseSpec;

.field public static m_adViewLarge:Lcom/google/ads/GoogleAdView;

.field public static m_adViewSmall:Lcom/google/ads/GoogleAdView;

.field public static m_currentAdState:I

.field public static m_fullScreenHeight:I

.field public static m_fullScreenWidth:I

.field public static m_gameAdViewLarge:Lcom/google/ads/GoogleAdView;

.field public static m_gameAdViewSmall:Lcom/google/ads/GoogleAdView;

.field private static sm_gameSpecificKeywords:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mixed+martial+arts,boxing,fighting+games"

    aput-object v1, v0, v3

    const-string v1, "android+market,android+games,free+games"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "social+games,gaming,top+free"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "nexus+one,droid,android,Motorola+droid"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Boxing+games,fight+night,title+fight,MMA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "arcade+games,action+games,free+games,mike+Tyson,punchout"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "uppercut,haymaker,punch,hook,bodyshot,jab"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UFC,ultimate+fighting,championship"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "knockout,KO,ring,champ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bout,pugilist,slugfest,champ"

    aput-object v2, v0, v1

    sput-object v0, Lcom/glu/android/GluAds;->ADS__GOOGLE__KEYWORDS:[Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/glu/android/GluAds;->sm_gameSpecificKeywords:[Ljava/lang/String;

    .line 71
    const/4 v0, -0x1

    sput v0, Lcom/glu/android/GluAds;->m_currentAdState:I

    .line 72
    sput v3, Lcom/glu/android/GluAds;->m_adHeight:I

    .line 81
    sput v4, Lcom/glu/android/GluAds;->m_fullScreenWidth:I

    .line 82
    sput v4, Lcom/glu/android/GluAds;->m_fullScreenHeight:I

    .line 95
    sput-boolean v3, Lcom/glu/android/GluAds;->adSpecCreated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAdSpec(Lcom/google/ads/AdSenseSpec$AdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;
    .locals 4
    .param p0, "format"    # Lcom/google/ads/AdSenseSpec$AdFormat;
    .param p1, "border"    # Ljava/lang/String;
    .param p2, "background"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "link"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v1, Lcom/google/ads/AdSenseSpec;

    const-string v2, "ca-mb-app-pub-9518260973309814"

    invoke-direct {v1, v2}, Lcom/google/ads/AdSenseSpec;-><init>(Ljava/lang/String;)V

    const-string v2, "Glu Mobile"

    invoke-virtual {v1, v2}, Lcom/google/ads/AdSenseSpec;->setCompanyName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v1

    const-string v2, "Super KO Boxing 2"

    invoke-virtual {v1, v2}, Lcom/google/ads/AdSenseSpec;->setAppName(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/google/ads/AdSenseSpec;->setAdFormat(Lcom/google/ads/AdSenseSpec$AdFormat;)Lcom/google/ads/AdSenseSpec;

    move-result-object v1

    const-string v2, "4428854747"

    invoke-virtual {v1, v2}, Lcom/google/ads/AdSenseSpec;->setChannel(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v1

    sget-object v2, Lcom/glu/android/GluAds;->sm_gameSpecificKeywords:[Ljava/lang/String;

    sget-object v3, Lcom/glu/android/GluAds;->sm_gameSpecificKeywords:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v3}, Lcom/glu/android/GluUtil;->getRandomInt(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/ads/AdSenseSpec;->setKeywords(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/ads/AdSenseSpec;->setAdTestEnabled(Z)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    .line 178
    .local v0, "spec":Lcom/google/ads/AdSenseSpec;
    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/ads/AdSenseSpec;->setColorBorder(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 179
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/google/ads/AdSenseSpec;->setColorBackground(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 180
    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {v0, p4}, Lcom/google/ads/AdSenseSpec;->setColorLink(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 181
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Lcom/google/ads/AdSenseSpec;->setColorText(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 182
    :cond_3
    if-eqz p5, :cond_4

    invoke-virtual {v0, p5}, Lcom/google/ads/AdSenseSpec;->setColorUrl(Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    .line 184
    :cond_4
    return-object v0
.end method

.method public static createAdSpec(II)V
    .locals 8
    .param p0, "screenWidth"    # I
    .param p1, "screenHeight"    # I

    .prologue
    const/4 v2, 0x1

    const-string v1, "ddbb55"

    const-string v4, "000000"

    .line 101
    sget-boolean v0, Lcom/glu/android/GluAds;->adSpecCreated:Z

    if-eqz v0, :cond_0

    .line 132
    :goto_0
    return-void

    .line 103
    :cond_0
    sput-boolean v2, Lcom/glu/android/GluAds;->adSpecCreated:Z

    .line 109
    const/4 v0, 0x0
    invoke-static {v0}, Lcom/glu/android/GluJNI;->setAdEnabled(I)V

    .line 111
    sput p0, Lcom/glu/android/GluAds;->m_fullScreenWidth:I

    .line 112
    sput p1, Lcom/glu/android/GluAds;->m_fullScreenHeight:I

    .line 114
    const-string v0, "~~ createAds()"

    invoke-static {v0}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 116
    invoke-static {}, Lcom/glu/android/GluAds;->initializeGameSpecificKeywords()V

    .line 119
    sget-object v0, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_320x50:Lcom/google/ads/AdSenseSpec$AdFormat;

    const-string v2, "ddbb55"

    const-string v2, "ddbb55"

    const-string v3, "333333"

    const-string v2, "000000"

    const-string v5, "666666"

    move-object v2, v1

    invoke-static/range {v0 .. v5}, Lcom/glu/android/GluAds;->createAdSpec(Lcom/google/ads/AdSenseSpec$AdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    sput-object v0, Lcom/glu/android/GluAds;->m_adSmall:Lcom/google/ads/AdSenseSpec;

    .line 126
    sget-object v2, Lcom/google/ads/AdSenseSpec$AdFormat;->FORMAT_300x250:Lcom/google/ads/AdSenseSpec$AdFormat;

    const-string v3, "cccccc"

    const-string v0, "000000"

    const-string v5, "ece284"

    const-string v6, "ffffff"

    const-string v7, "999999"

    invoke-static/range {v2 .. v7}, Lcom/glu/android/GluAds;->createAdSpec(Lcom/google/ads/AdSenseSpec$AdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/AdSenseSpec;

    move-result-object v0

    sput-object v0, Lcom/glu/android/GluAds;->m_adLarge:Lcom/google/ads/AdSenseSpec;

    goto :goto_0
.end method

.method public static createAds(II)V
    .locals 3
    .param p0, "screenWidth"    # I
    .param p1, "screenHeight"    # I

    .prologue
    const/4 v2, 0x0

    .line 139
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/GoogleAdView;

    sput-object v0, Lcom/glu/android/GluAds;->m_adViewSmall:Lcom/google/ads/GoogleAdView;

    .line 140
    if-le p0, p1, :cond_0

    .line 141
    sget-object v0, Lcom/glu/android/GluAds;->m_adViewSmall:Lcom/google/ads/GoogleAdView;

    sub-int v1, p0, p1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/google/ads/GoogleAdView;->setPadding(IIII)V

    .line 142
    :cond_0
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/GoogleAdView;

    sput-object v0, Lcom/glu/android/GluAds;->m_adViewLarge:Lcom/google/ads/GoogleAdView;

    .line 143
    if-le p0, p1, :cond_1

    .line 144
    sget-object v0, Lcom/glu/android/GluAds;->m_adViewLarge:Lcom/google/ads/GoogleAdView;

    sub-int v1, p0, p1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/google/ads/GoogleAdView;->setPadding(IIII)V

    .line 150
    :cond_1
    return-void
.end method

.method public static createGameViewAds()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/GoogleAdView;

    sput-object v0, Lcom/glu/android/GluAds;->m_gameAdViewSmall:Lcom/google/ads/GoogleAdView;

    .line 159
    sget v0, Lcom/glu/android/GluAds;->m_fullScreenWidth:I

    sget v1, Lcom/glu/android/GluAds;->m_fullScreenHeight:I

    if-le v0, v1, :cond_0

    .line 160
    sget-object v0, Lcom/glu/android/GluAds;->m_gameAdViewSmall:Lcom/google/ads/GoogleAdView;

    sget v1, Lcom/glu/android/GluAds;->m_fullScreenWidth:I

    sget v2, Lcom/glu/android/GluAds;->m_fullScreenHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/google/ads/GoogleAdView;->setPadding(IIII)V

    .line 161
    :cond_0
    sget-object v0, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    const v1, 0x7f090002

    invoke-virtual {v0, v1}, Lcom/glu/android/GameLet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/GoogleAdView;

    sput-object v0, Lcom/glu/android/GluAds;->m_gameAdViewLarge:Lcom/google/ads/GoogleAdView;

    .line 162
    sget v0, Lcom/glu/android/GluAds;->m_fullScreenWidth:I

    sget v1, Lcom/glu/android/GluAds;->m_fullScreenHeight:I

    if-le v0, v1, :cond_1

    .line 163
    sget-object v0, Lcom/glu/android/GluAds;->m_gameAdViewLarge:Lcom/google/ads/GoogleAdView;

    sget v1, Lcom/glu/android/GluAds;->m_fullScreenWidth:I

    sget v2, Lcom/glu/android/GluAds;->m_fullScreenHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/google/ads/GoogleAdView;->setPadding(IIII)V

    .line 164
    :cond_1
    return-void
.end method

.method private static initializeGameSpecificKeywords()V
    .locals 5

    .prologue
    .line 86
    sget-object v0, Lcom/glu/android/GameLet;->ADS_GAME_SPECIFIC_KEYWORDS:[Ljava/lang/String;

    .line 88
    .local v0, "customKeywords":[Ljava/lang/String;
    sget-object v2, Lcom/glu/android/GluAds;->ADS__GOOGLE__KEYWORDS:[Ljava/lang/String;

    array-length v2, v2

    array-length v3, v0

    add-int/2addr v2, v3

    new-array v2, v2, [Ljava/lang/String;

    sput-object v2, Lcom/glu/android/GluAds;->sm_gameSpecificKeywords:[Ljava/lang/String;

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lcom/glu/android/GluAds;->ADS__GOOGLE__KEYWORDS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 90
    sget-object v2, Lcom/glu/android/GluAds;->sm_gameSpecificKeywords:[Ljava/lang/String;

    sget-object v3, Lcom/glu/android/GluAds;->ADS__GOOGLE__KEYWORDS:[Ljava/lang/String;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 92
    sget-object v2, Lcom/glu/android/GluAds;->sm_gameSpecificKeywords:[Ljava/lang/String;

    sget-object v3, Lcom/glu/android/GluAds;->ADS__GOOGLE__KEYWORDS:[Ljava/lang/String;

    array-length v3, v3

    add-int/2addr v3, v1

    aget-object v4, v0, v1

    aput-object v4, v2, v3

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_1
    return-void
.end method

.method public static setAdState(I)V
    .locals 7
    return-void
    .param p0, "newState"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 193
    const/4 v2, 0x0

    .line 194
    .local v2, "_view":Landroid/view/View;
    const/4 v1, 0x0

    .line 195
    .local v1, "_smallAdView":Lcom/google/ads/GoogleAdView;
    const/4 v0, 0x0

    .line 197
    .local v0, "_largeAdView":Lcom/google/ads/GoogleAdView;
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v3, v3, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    if-nez v3, :cond_1

    .line 199
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v2, v3, Lcom/glu/android/GameLet;->initialMenuView:Lcom/glu/android/ResFileDownloadView;

    .line 200
    sget-object v1, Lcom/glu/android/GluAds;->m_adViewSmall:Lcom/google/ads/GoogleAdView;

    .line 201
    sget-object v0, Lcom/glu/android/GluAds;->m_adViewLarge:Lcom/google/ads/GoogleAdView;

    .line 210
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAdState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/glu/android/Debug;->log(Ljava/lang/String;)V

    .line 212
    sget v3, Lcom/glu/android/GluAds;->m_currentAdState:I

    if-eq v3, p0, :cond_0

    .line 213
    packed-switch p0, :pswitch_data_0

    .line 246
    :goto_1
    sput p0, Lcom/glu/android/GluAds;->m_currentAdState:I

    .line 247
    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 250
    :cond_0
    return-void

    .line 205
    :cond_1
    sget-object v3, Lcom/glu/android/GameLet;->instance:Lcom/glu/android/GameLet;

    iget-object v2, v3, Lcom/glu/android/GameLet;->gameView:Lcom/glu/android/GluView;

    .line 206
    sget-object v1, Lcom/glu/android/GluAds;->m_gameAdViewSmall:Lcom/google/ads/GoogleAdView;

    .line 207
    sget-object v0, Lcom/glu/android/GluAds;->m_gameAdViewLarge:Lcom/google/ads/GoogleAdView;

    goto :goto_0

    .line 215
    :pswitch_0
    invoke-virtual {v1, v6}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 216
    invoke-virtual {v0, v6}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 217
    sput v5, Lcom/glu/android/GluAds;->m_adHeight:I

    goto :goto_1

    .line 221
    :pswitch_1
    invoke-virtual {v0, v5}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 222
    invoke-virtual {v1, v5}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 223
    sget-object v3, Lcom/glu/android/GluAds;->m_adLarge:Lcom/google/ads/AdSenseSpec;

    invoke-virtual {v0, v3}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 224
    sget-object v3, Lcom/glu/android/GluAds;->m_adSmall:Lcom/google/ads/AdSenseSpec;

    invoke-virtual {v1, v3}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 225
    sput v5, Lcom/glu/android/GluAds;->m_adHeight:I

    goto :goto_1

    .line 229
    :pswitch_2
    invoke-virtual {v0, v6}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 230
    invoke-virtual {v1, v5}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 231
    sget-object v3, Lcom/glu/android/GluAds;->m_adSmall:Lcom/google/ads/AdSenseSpec;

    invoke-virtual {v1, v3}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 233
    sget v3, Lcom/glu/android/GluAds;->m_fullScreenHeight:I

    sget v4, Lcom/glu/android/GluAds;->m_fullScreenWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit8 v3, v3, 0x32

    div-int/lit16 v3, v3, 0x140

    sput v3, Lcom/glu/android/GluAds;->m_adHeight:I

    goto :goto_1

    .line 237
    :pswitch_3
    invoke-virtual {v1, v6}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 238
    invoke-virtual {v0, v5}, Lcom/google/ads/GoogleAdView;->setVisibility(I)V

    .line 239
    sget-object v3, Lcom/glu/android/GluAds;->m_adLarge:Lcom/google/ads/AdSenseSpec;

    invoke-virtual {v0, v3}, Lcom/google/ads/GoogleAdView;->showAds(Lcom/google/ads/AdSpec;)V

    .line 241
    sget v3, Lcom/glu/android/GluAds;->m_fullScreenHeight:I

    sget v4, Lcom/glu/android/GluAds;->m_fullScreenWidth:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    mul-int/lit16 v3, v3, 0xfa

    div-int/lit16 v3, v3, 0x140

    sput v3, Lcom/glu/android/GluAds;->m_adHeight:I

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
