.class public Lcom/openfeint/internal/request/OrderedArgList;
.super Ljava/lang/Object;
.source "OrderedArgList.java"


# instance fields
.field mArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/openfeint/internal/request/OrderedArgList;)V
    .locals 2
    .param p1, "rhs"    # Lcom/openfeint/internal/request/OrderedArgList;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    .line 51
    iget-object v0, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/openfeint/internal/request/OrderedArgList;->getArgs()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/openfeint/internal/request/OrderedArgList;->accumulate(Ljava/util/Map;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    .line 44
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/openfeint/internal/request/OrderedArgList;->accumulate(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private accumulate(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 132
    .local p1, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 133
    .local v2, "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, "k":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 137
    .local v4, "v":Ljava/lang/Object;
    if-nez p2, :cond_0

    move-object v3, v1

    .line 138
    .local v3, "subKey":Ljava/lang/String;
    :goto_1
    instance-of v5, v4, Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 139
    invoke-direct {p0, v4}, Lcom/openfeint/internal/request/OrderedArgList;->stringObjectMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lcom/openfeint/internal/request/OrderedArgList;->accumulate(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    .end local v3    # "subKey":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_1

    .line 141
    .restart local v3    # "subKey":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "me":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "subKey":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private accumulate(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 4
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 98
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "arrayIndex":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 99
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 100
    .local v0, "arrayEntry":Ljava/lang/Object;
    instance-of v3, v0, Lorg/json/JSONObject;

    if-eqz v3, :cond_0

    .line 101
    check-cast v0, Lorg/json/JSONObject;

    .end local v0    # "arrayEntry":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/openfeint/internal/request/OrderedArgList;->accumulate(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 98
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .restart local v0    # "arrayEntry":Ljava/lang/Object;
    :cond_0
    instance-of v3, v0, Lorg/json/JSONArray;

    if-eqz v3, :cond_1

    .line 103
    check-cast v0, Lorg/json/JSONArray;

    .end local v0    # "arrayEntry":Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/openfeint/internal/request/OrderedArgList;->accumulate(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    .restart local v0    # "arrayEntry":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p2, v3}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    .end local v0    # "arrayEntry":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private accumulate(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 111
    new-instance v3, Lcom/openfeint/internal/request/OrderedArgList$1;

    invoke-direct {v3, p0, p1}, Lcom/openfeint/internal/request/OrderedArgList$1;-><init>(Lcom/openfeint/internal/request/OrderedArgList;Lorg/json/JSONObject;)V

    .line 118
    .local v3, "objectIteratable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "fieldName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    .local v1, "fieldObject":Ljava/lang/Object;
    if-nez p2, :cond_0

    move-object v4, v0

    .line 121
    .local v4, "subKey":Ljava/lang/String;
    :goto_1
    instance-of v5, v1, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 122
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "fieldObject":Ljava/lang/Object;
    invoke-direct {p0, v1, v4}, Lcom/openfeint/internal/request/OrderedArgList;->accumulate(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v4    # "subKey":Ljava/lang/String;
    .restart local v1    # "fieldObject":Ljava/lang/Object;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto :goto_1

    .line 123
    .restart local v4    # "subKey":Ljava/lang/String;
    :cond_1
    instance-of v5, v1, Lorg/json/JSONArray;

    if-eqz v5, :cond_2

    .line 124
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "fieldObject":Ljava/lang/Object;
    invoke-direct {p0, v1, v4}, Lcom/openfeint/internal/request/OrderedArgList;->accumulate(Lorg/json/JSONArray;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .restart local v1    # "fieldObject":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/openfeint/internal/request/OrderedArgList;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    .end local v0    # "fieldName":Ljava/lang/String;
    .end local v1    # "fieldObject":Ljava/lang/Object;
    .end local v4    # "subKey":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static getArgString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, "pairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    const/4 v0, 0x0

    .line 79
    .local v0, "accumulator":Ljava/lang/StringBuilder;
    new-instance v1, Lcom/google/api/client/escape/PercentEscaper;

    const-string v4, "-_.*"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5}, Lcom/google/api/client/escape/PercentEscaper;-><init>(Ljava/lang/String;Z)V

    .line 81
    .local v1, "escaper":Lcom/google/api/client/escape/PercentEscaper;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/NameValuePair;

    .line 82
    .local v3, "nvp":Lorg/apache/http/NameValuePair;
    if-nez v0, :cond_1

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "accumulator":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .restart local v0    # "accumulator":Ljava/lang/StringBuilder;
    :goto_1
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/client/escape/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/api/client/escape/PercentEscaper;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 85
    :cond_1
    const/16 v4, 0x26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 93
    .end local v3    # "nvp":Lorg/apache/http/NameValuePair;
    :cond_2
    if-nez v0, :cond_3

    const/4 v4, 0x0

    :goto_2
    return-object v4

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method private final stringObjectMap(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .param p1, "v"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    check-cast p1, Ljava/util/Map;

    .end local p1    # "v":Ljava/lang/Object;
    return-object p1
.end method


# virtual methods
.method public getArgString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/openfeint/internal/request/OrderedArgList;->getArgs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/request/OrderedArgList;->getArgString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArgStringSorted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/openfeint/internal/request/OrderedArgList;->getArgsSorted()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/request/OrderedArgList;->getArgString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getArgsSorted()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .local v0, "s":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v1, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    new-instance v1, Lcom/openfeint/internal/request/NVPComparator;

    invoke-direct {v1}, Lcom/openfeint/internal/request/NVPComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "k"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method public remove(Ljava/lang/String;)Lorg/apache/http/NameValuePair;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v2, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 28
    .local v1, "p":Lorg/apache/http/NameValuePair;
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/openfeint/internal/request/OrderedArgList;->mArgs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-object v2, v1

    .line 33
    .end local v1    # "p":Lorg/apache/http/NameValuePair;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
