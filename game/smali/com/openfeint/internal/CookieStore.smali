.class public Lcom/openfeint/internal/CookieStore;
.super Lorg/apache/http/impl/client/BasicCookieStore;
.source "CookieStore.java"


# static fields
.field static final COOKIE_PREFIX:Ljava/lang/String; = "_of_cookie_"

.field static final COOKIE_PREFIX_LEN:I

.field static final COOKIE_VALUE_TAG:Ljava/lang/String; = "value"

.field static final COOKIE_VALUE_TAG_LEN:I

.field static final TAG:Ljava/lang/String; = "CookieStore"


# instance fields
.field mSharedPreferences:Lcom/openfeint/internal/SyncedStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "_of_cookie_"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/openfeint/internal/CookieStore;->COOKIE_PREFIX_LEN:I

    .line 18
    const-string v0, "value"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/openfeint/internal/CookieStore;->COOKIE_VALUE_TAG_LEN:I

    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/SyncedStore;)V
    .locals 8
    .param p1, "sp"    # Lcom/openfeint/internal/SyncedStore;

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/openfeint/internal/CookieStore;->mSharedPreferences:Lcom/openfeint/internal/SyncedStore;

    .line 27
    iget-object v5, p0, Lcom/openfeint/internal/CookieStore;->mSharedPreferences:Lcom/openfeint/internal/SyncedStore;

    invoke-virtual {v5}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;

    move-result-object v4

    .line 29
    .local v4, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_0
    invoke-virtual {v4}, Lcom/openfeint/internal/SyncedStore$Reader;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 30
    .local v3, "k":Ljava/lang/String;
    const-string v5, "_of_cookie_"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "value"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 31
    sget v5, Lcom/openfeint/internal/CookieStore;->COOKIE_PREFIX_LEN:I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sget v7, Lcom/openfeint/internal/CookieStore;->COOKIE_VALUE_TAG_LEN:I

    sub-int/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 32
    .local v1, "cookieName":Ljava/lang/String;
    invoke-direct {p0, v4, v1}, Lcom/openfeint/internal/CookieStore;->cookieFromPrefs(Lcom/openfeint/internal/SyncedStore$Reader;Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;

    move-result-object v0

    .line 33
    .local v0, "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-super {p0, v0}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 37
    .end local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    .end local v1    # "cookieName":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "k":Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    throw v5

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v4}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 40
    return-void
.end method

.method private cookieFromPrefs(Lcom/openfeint/internal/SyncedStore$Reader;Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    .locals 9
    .param p1, "r"    # Lcom/openfeint/internal/SyncedStore$Reader;
    .param p2, "cookieName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_of_cookie_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 44
    .local v5, "prefix":Ljava/lang/String;
    const/4 v0, 0x0

    .line 46
    .local v0, "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "cookieValue":Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v6, v8

    .line 59
    :goto_0
    return-object v6

    .line 49
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "cookiePath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "domain"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "cookieDomain":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "expiry"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6, v8}, Lcom/openfeint/internal/SyncedStore$Reader;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "cookieExpiry":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/impl/cookie/BasicClientCookie;

    .end local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-direct {v0, p2, v4}, Lorg/apache/http/impl/cookie/BasicClientCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .restart local v0    # "c":Lorg/apache/http/impl/cookie/BasicClientCookie;
    invoke-virtual {v0, v3}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setPath(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setDomain(Ljava/lang/String;)V

    .line 57
    invoke-static {v2}, Lcom/openfeint/internal/CookieStore;->dateFromString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/http/impl/cookie/BasicClientCookie;->setExpiryDate(Ljava/util/Date;)V

    move-object v6, v0

    .line 59
    goto :goto_0
.end method

.method private static final dateFromString(Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 120
    :try_start_0
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 123
    :goto_0
    return-object v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Lorg/apache/http/impl/cookie/DateParseException;
    const-string v1, "CookieStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t parse date: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static final stringFromDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "d"    # Ljava/util/Date;

    .prologue
    .line 115
    invoke-static {p0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addCookie(Lorg/apache/http/cookie/Cookie;)V
    .locals 9
    .param p1, "cookie"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    const-string v7, "_of_cookie_"

    .line 65
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/http/impl/client/BasicCookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 66
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getName()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "name":Ljava/lang/String;
    const/4 v1, 0x0

    .line 69
    .local v1, "existing":Lorg/apache/http/cookie/Cookie;
    iget-object v7, p0, Lcom/openfeint/internal/CookieStore;->mSharedPreferences:Lcom/openfeint/internal/SyncedStore;

    invoke-virtual {v7}, Lcom/openfeint/internal/SyncedStore;->read()Lcom/openfeint/internal/SyncedStore$Reader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 71
    .local v6, "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :try_start_1
    invoke-direct {p0, v6, v4}, Lcom/openfeint/internal/CookieStore;->cookieFromPrefs(Lcom/openfeint/internal/SyncedStore$Reader;Ljava/lang/String;)Lorg/apache/http/impl/cookie/BasicClientCookie;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 73
    :try_start_2
    invoke-virtual {v6}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    .line 76
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 82
    :cond_0
    iget-object v7, p0, Lcom/openfeint/internal/CookieStore;->mSharedPreferences:Lcom/openfeint/internal/SyncedStore;

    invoke-virtual {v7}, Lcom/openfeint/internal/SyncedStore;->edit()Lcom/openfeint/internal/SyncedStore$Editor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    .line 85
    .local v0, "e":Lcom/openfeint/internal/SyncedStore$Editor;
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_of_cookie_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "prefix":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87
    .local v3, "k":Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 88
    invoke-virtual {v0, v3}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 100
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "k":Ljava/lang/String;
    .end local v5    # "prefix":Ljava/lang/String;
    :catchall_0
    move-exception v7

    :try_start_4
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V

    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 65
    .end local v0    # "e":Lcom/openfeint/internal/SyncedStore$Editor;
    .end local v1    # "existing":Lorg/apache/http/cookie/Cookie;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 73
    .restart local v1    # "existing":Lorg/apache/http/cookie/Cookie;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "r":Lcom/openfeint/internal/SyncedStore$Reader;
    :catchall_2
    move-exception v7

    :try_start_5
    invoke-virtual {v6}, Lcom/openfeint/internal/SyncedStore$Reader;->complete()V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 93
    .restart local v0    # "e":Lcom/openfeint/internal/SyncedStore$Editor;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v5    # "prefix":Ljava/lang/String;
    :cond_2
    :try_start_6
    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 94
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_of_cookie_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_of_cookie_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "path"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_of_cookie_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "domain"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "_of_cookie_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "expiry"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lorg/apache/http/cookie/Cookie;->getExpiryDate()Ljava/util/Date;

    move-result-object v8

    invoke-static {v8}, Lcom/openfeint/internal/CookieStore;->stringFromDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lcom/openfeint/internal/SyncedStore$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 100
    :cond_3
    :try_start_7
    invoke-virtual {v0}, Lcom/openfeint/internal/SyncedStore$Editor;->commit()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 103
    .end local v0    # "e":Lcom/openfeint/internal/SyncedStore$Editor;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v5    # "prefix":Ljava/lang/String;
    :cond_4
    monitor-exit p0

    return-void
.end method

.method public clearCookies(Lcom/openfeint/internal/SyncedStore$Editor;)V
    .locals 3
    .param p1, "e"    # Lcom/openfeint/internal/SyncedStore$Editor;

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/openfeint/internal/SyncedStore$Editor;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 107
    .local v1, "k":Ljava/lang/String;
    const-string v2, "_of_cookie_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p1, v1}, Lcom/openfeint/internal/SyncedStore$Editor;->remove(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v1    # "k":Ljava/lang/String;
    :cond_1
    invoke-super {p0}, Lorg/apache/http/impl/client/BasicCookieStore;->clear()V

    .line 112
    return-void
.end method
