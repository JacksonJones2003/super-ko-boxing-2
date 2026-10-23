.class Lcom/openfeint/internal/ui/WebViewCache$ManifestData;
.super Ljava/lang/Object;
.source "WebViewCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/internal/ui/WebViewCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ManifestData"
.end annotation


# instance fields
.field globals:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field objects:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/openfeint/internal/ui/WebViewCache;


# direct methods
.method constructor <init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/io/InputStream;)V
    .locals 10
    .param p2, "stm"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->this$0:Lcom/openfeint/internal/ui/WebViewCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    .line 136
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    .line 137
    const/4 v2, 0x0

    .line 139
    .local v2, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :try_start_0
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 140
    .local v7, "reader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v8, 0x2000

    invoke-direct {v0, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .local v0, "buffered":Ljava/io/BufferedReader;
    move-object v3, v2

    .line 141
    .end local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .local v3, "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 142
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 143
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 144
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 156
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 158
    .local v6, "pieces":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x2

    if-lt v8, v9, :cond_3

    .line 159
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x40

    if-ne v8, v9, :cond_2

    .line 160
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "path":Ljava/lang/String;
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->globals:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    :goto_1
    new-instance v2, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-direct {v2, p1, v5, v8}, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;-><init>(Lcom/openfeint/internal/ui/WebViewCache;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 167
    .end local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :try_start_2
    iget-object v8, p0, Lcom/openfeint/internal/ui/WebViewCache$ManifestData;->objects:Ljava/util/Map;

    invoke-interface {v8, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "pieces":[Ljava/lang/String;
    :goto_2
    move-object v3, v2

    .line 172
    .end local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    goto :goto_0

    :sswitch_0
    move-object v2, v3

    .line 147
    .end local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    goto :goto_2

    .line 149
    .end local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :sswitch_1
    if-eqz v3, :cond_1

    .line 150
    :try_start_3
    iget-object v8, v3, Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;->dependentObjects:Ljava/util/Set;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    .end local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    goto :goto_2

    .line 152
    .end local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :cond_1
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Manifest Syntax Error: Dependency without an item"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 175
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v1, v8

    move-object v2, v3

    .line 176
    .end local v0    # "buffered":Ljava/io/BufferedReader;
    .end local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :goto_3
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 164
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v0    # "buffered":Ljava/io/BufferedReader;
    .restart local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "pieces":[Ljava/lang/String;
    .restart local v7    # "reader":Ljava/io/InputStreamReader;
    :cond_2
    const/4 v8, 0x0

    :try_start_4
    aget-object v5, v6, v8

    .restart local v5    # "path":Ljava/lang/String;
    goto :goto_1

    .line 169
    .end local v5    # "path":Ljava/lang/String;
    :cond_3
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Manifest Syntax Error: Extra items in line"

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 178
    .end local v6    # "pieces":[Ljava/lang/String;
    :cond_4
    return-void

    .line 175
    .end local v0    # "buffered":Ljava/io/BufferedReader;
    .end local v3    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    .end local v4    # "line":Ljava/lang/String;
    .end local v7    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "item":Lcom/openfeint/internal/ui/WebViewCache$ManifestItem;
    :catch_1
    move-exception v8

    move-object v1, v8

    goto :goto_3

    .line 144
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2d -> :sswitch_1
    .end sparse-switch
.end method
