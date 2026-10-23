.class public Lcom/glu/android/DeviceHttpConnection;
.super Ljava/lang/Object;
.source "DeviceHttpConnection.java"


# static fields
.field public static final GET:Ljava/lang/String; = "GET"

.field public static final POST:Ljava/lang/String; = "POST"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeHttpGetRequest(Ljava/lang/String;[[Ljava/lang/String;Z)Ljava/io/DataInputStream;
    .locals 2
    .param p0, "URL"    # Ljava/lang/String;
    .param p1, "requestProperties"    # [[Ljava/lang/String;
    .param p2, "BIS"    # Z

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/glu/android/DeviceHttpConnection;->makeHttpRequest(Ljava/lang/String;[[Ljava/lang/String;[BZ)Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static makeHttpPostRequest(Ljava/lang/String;[[Ljava/lang/String;[BZ)Ljava/io/DataInputStream;
    .locals 1
    .param p0, "URL"    # Ljava/lang/String;
    .param p1, "requestProperties"    # [[Ljava/lang/String;
    .param p2, "outData"    # [B
    .param p3, "BIS"    # Z

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/glu/android/DeviceHttpConnection;->makeHttpRequest(Ljava/lang/String;[[Ljava/lang/String;[BZ)Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method

.method public static makeHttpRequest(Ljava/lang/String;[[Ljava/lang/String;[BZ)Ljava/io/DataInputStream;
    .locals 7
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "requestProperties"    # [[Ljava/lang/String;
    .param p2, "outData"    # [B
    .param p3, "get"    # Z

    .prologue
    .line 23
    const/4 v3, 0x0

    .line 24
    .local v3, "is":Ljava/io/DataInputStream;
    const/4 v2, 0x0

    .line 27
    .local v2, "dis":Ljava/io/DataInputStream;
    const/4 v1, 0x0

    .line 35
    .local v1, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    .end local p0    # "address":Ljava/lang/String;
    check-cast p0, Ljava/net/HttpURLConnection;

    move-object v0, p0

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 38
    if-eqz p3, :cond_1

    const-string p0, "GET"

    .line 39
    .local p0, "connectionType":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 40
    invoke-virtual {v1, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 42
    const/4 p0, 0x0

    .local p0, "i":I
    :goto_1
    array-length v4, p1

    if-ge p0, v4, :cond_2

    .line 43
    aget-object v4, p1, p0

    if-eqz v4, :cond_0

    .line 44
    aget-object v4, p1, p0

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-object v5, p1, p0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v1, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 38
    .end local p0    # "i":I
    :cond_1
    const-string p0, "POST"

    goto :goto_0

    .line 49
    .restart local p0    # "i":I
    :cond_2
    if-nez p3, :cond_3

    .line 50
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    .line 51
    .local p0, "out":Ljava/io/OutputStream;
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 52
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 53
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 56
    .end local p0    # "out":Ljava/io/OutputStream;
    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 57
    .local p0, "responseCode":I
    const/16 p1, 0xc8

    if-ne p0, p1, :cond_6

    .line 58
    .end local p1    # "requestProperties":[[Ljava/lang/String;
    new-instance p2, Ljava/io/DataInputStream;

    .end local p2    # "outData":[B
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .end local p0    # "responseCode":I
    invoke-direct {p2, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 59
    .end local v3    # "is":Ljava/io/DataInputStream;
    .local p2, "is":Ljava/io/DataInputStream;
    :try_start_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local p0, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 p1, 0x0

    .line 61
    .end local p3    # "get":Z
    .local p1, "read":I
    :goto_2
    invoke-virtual {p2}, Ljava/io/DataInputStream;->read()I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_5

    .line 62
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    .line 72
    .end local p0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "read":I
    :catch_0
    move-exception p0

    move-object p0, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .local p0, "conn":Ljava/net/HttpURLConnection;
    move-object p1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local p1, "dis":Ljava/io/DataInputStream;
    :goto_3
    move-object p0, p1

    .end local p1    # "dis":Ljava/io/DataInputStream;
    .local p0, "dis":Ljava/io/DataInputStream;
    move-object p1, p2

    .line 78
    .end local p2    # "is":Ljava/io/DataInputStream;
    .local p1, "is":Ljava/io/DataInputStream;
    :cond_4
    :goto_4
    return-object p0

    .line 63
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .local p0, "bout":Ljava/io/ByteArrayOutputStream;
    .local p1, "read":I
    .restart local p2    # "is":Ljava/io/DataInputStream;
    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 64
    .local p1, "inData":[B
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 65
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    .line 66
    new-instance p0, Ljava/io/DataInputStream;

    .end local p0    # "bout":Ljava/io/ByteArrayOutputStream;
    new-instance p3, Ljava/io/ByteArrayInputStream;

    invoke-direct {p3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, p3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local p0, "dis":Ljava/io/DataInputStream;
    move-object p1, p2

    .line 68
    .end local p2    # "is":Ljava/io/DataInputStream;
    .local p1, "is":Ljava/io/DataInputStream;
    :goto_5
    if-eqz v1, :cond_4

    .line 69
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 72
    :catch_1
    move-exception p2

    move-object p2, p1

    .end local p1    # "is":Ljava/io/DataInputStream;
    .restart local p2    # "is":Ljava/io/DataInputStream;
    move-object p1, p0

    .end local p0    # "dis":Ljava/io/DataInputStream;
    .local p1, "dis":Ljava/io/DataInputStream;
    move-object p0, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .local p0, "conn":Ljava/net/HttpURLConnection;
    goto :goto_3

    .end local p0    # "conn":Ljava/net/HttpURLConnection;
    .end local p1    # "dis":Ljava/io/DataInputStream;
    .end local p2    # "is":Ljava/io/DataInputStream;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .restart local p3    # "get":Z
    :catch_2
    move-exception p0

    move-object p0, v1

    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local p0    # "conn":Ljava/net/HttpURLConnection;
    move-object p1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local p1    # "dis":Ljava/io/DataInputStream;
    move-object p2, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .restart local p2    # "is":Ljava/io/DataInputStream;
    goto :goto_3

    .end local p1    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v3    # "is":Ljava/io/DataInputStream;
    .local p0, "responseCode":I
    .local p2, "outData":[B
    :cond_6
    move-object p0, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .local p0, "dis":Ljava/io/DataInputStream;
    move-object p1, v3

    .end local v3    # "is":Ljava/io/DataInputStream;
    .local p1, "is":Ljava/io/DataInputStream;
    goto :goto_5
.end method
