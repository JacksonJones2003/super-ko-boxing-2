.class public Lcom/openfeint/internal/request/Signer;
.super Ljava/lang/Object;
.source "Signer.java"


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field private mSecret:Ljava/lang/String;

.field private mSigningKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/openfeint/internal/request/Signer;->mKey:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/openfeint/internal/request/Signer;->mSecret:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/openfeint/internal/request/Signer;->mSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/Signer;->mSigningKey:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/openfeint/internal/request/Signer;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "tokenSecret"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/openfeint/internal/request/Signer;->mAccessToken:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/openfeint/internal/request/Signer;->mSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/openfeint/internal/request/Signer;->mSigningKey:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public sign(Ljava/lang/String;Ljava/lang/String;JLcom/openfeint/internal/request/OrderedArgList;)Ljava/lang/String;
    .locals 9
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "secondsSinceEpoch"    # J
    .param p5, "unsignedParams"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    const/16 v7, 0x2b

    const-string v5, "UTF-8"

    const-string v5, "HmacSHA1"

    const-string v8, ""

    .line 35
    iget-object v5, p0, Lcom/openfeint/internal/request/Signer;->mAccessToken:Ljava/lang/String;

    if-eqz v5, :cond_0

    const-string v5, "token"

    iget-object v6, p0, Lcom/openfeint/internal/request/Signer;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p5, v5, v6}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .local v4, "sigbase":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    iget-object v5, p0, Lcom/openfeint/internal/request/Signer;->mSecret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p5}, Lcom/openfeint/internal/request/OrderedArgList;->getArgString()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "argString":Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v5, ""

    move-object v5, v8

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v5, p0, Lcom/openfeint/internal/request/Signer;->mSigningKey:Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    const-string v6, "HmacSHA1"

    invoke-direct {v2, v5, v6}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 50
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    const-string v5, "HmacSHA1"

    invoke-static {v5}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v3

    .line 51
    .local v3, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v3, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v1

    .line 53
    .local v1, "bytes":[B
    new-instance v5, Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    const-string v6, "\r\n"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 59
    .end local v1    # "bytes":[B
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "mac":Ljavax/crypto/Mac;
    :goto_1
    return-object v5

    :cond_1
    move-object v5, v0

    .line 46
    goto :goto_0

    .line 56
    :catch_0
    move-exception v5

    .line 59
    :goto_2
    const/4 v5, 0x0

    goto :goto_1

    .line 55
    :catch_1
    move-exception v5

    goto :goto_2

    .line 54
    :catch_2
    move-exception v5

    goto :goto_2
.end method
