.class public abstract Lcom/openfeint/internal/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"


# static fields
.field private static sNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/openfeint/internal/resource/ResourceClass;",
            ">;"
        }
    .end annotation
.end field

.field private static sSubclassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;",
            "Lcom/openfeint/internal/resource/ResourceClass;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openfeint/internal/resource/Resource;->sSubclassMap:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/openfeint/internal/resource/Resource;->sNameMap:Ljava/util/HashMap;

    .line 150
    invoke-static {}, Lcom/openfeint/internal/resource/Resource;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 151
    invoke-static {}, Lcom/openfeint/internal/resource/ServerException;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 152
    invoke-static {}, Lcom/openfeint/internal/resource/BlobUploadParameters;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 154
    invoke-static {}, Lcom/openfeint/api/resource/Achievement;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 155
    invoke-static {}, Lcom/openfeint/api/resource/Leaderboard;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 156
    invoke-static {}, Lcom/openfeint/api/resource/Score;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 157
    invoke-static {}, Lcom/openfeint/api/resource/User;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 160
    invoke-static {}, Lcom/openfeint/api/resource/CurrentUser;->getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v0

    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V

    .line 162
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/openfeint/internal/resource/ResourceClass;"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/openfeint/internal/resource/Resource;->sSubclassMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "subclass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    check-cast p0, Lcom/openfeint/internal/resource/ResourceClass;

    return-object p0
.end method

.method public static getKlass(Ljava/lang/String;)Lcom/openfeint/internal/resource/ResourceClass;
    .locals 1
    .param p0, "klassName"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-object v0, Lcom/openfeint/internal/resource/Resource;->sNameMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "klassName":Ljava/lang/String;
    check-cast p0, Lcom/openfeint/internal/resource/ResourceClass;

    return-object p0
.end method

.method public static getResourceClass()Lcom/openfeint/internal/resource/ResourceClass;
    .locals 4

    .prologue
    .line 45
    new-instance v0, Lcom/openfeint/internal/resource/Resource$1;

    const-class v1, Lcom/openfeint/internal/resource/Resource;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/openfeint/internal/resource/Resource$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 46
    .local v0, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v1, v0, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    const-string v2, "id"

    new-instance v3, Lcom/openfeint/internal/resource/Resource$2;

    invoke-direct {v3}, Lcom/openfeint/internal/resource/Resource$2;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-object v0
.end method

.method private static registerSubclass(Lcom/openfeint/internal/resource/ResourceClass;)V
    .locals 2
    .param p0, "klass"    # Lcom/openfeint/internal/resource/ResourceClass;

    .prologue
    .line 29
    sget-object v0, Lcom/openfeint/internal/resource/Resource;->sSubclassMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/openfeint/internal/resource/ResourceClass;->mObjectClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v0, p0, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/openfeint/internal/resource/Resource;->sNameMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-void
.end method

.method private final unguardedShallowCopy(Lcom/openfeint/internal/resource/Resource;)V
    .locals 7
    .param p1, "otherResource"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v3

    .line 133
    .local v3, "rc":Lcom/openfeint/internal/resource/ResourceClass;
    iget-object v5, v3, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 134
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/openfeint/internal/resource/ResourceProperty;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/openfeint/internal/resource/ResourceProperty;

    .line 135
    .local v4, "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    instance-of v5, v4, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    if-eqz v5, :cond_1

    .line 136
    check-cast v4, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    .end local v4    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v4, p0, p1}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;->copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V

    goto :goto_0

    .line 137
    .restart local v4    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    :cond_1
    instance-of v5, v4, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    if-eqz v5, :cond_2

    .line 138
    move-object v0, v4

    check-cast v0, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    move-object v5, v0

    check-cast v4, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    .end local v4    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v4, p1}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/List;)V

    goto :goto_0

    .line 139
    .restart local v4    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    :cond_2
    instance-of v5, v4, Lcom/openfeint/internal/resource/NestedResourceProperty;

    if-eqz v5, :cond_0

    .line 140
    move-object v0, v4

    check-cast v0, Lcom/openfeint/internal/resource/NestedResourceProperty;

    move-object v5, v0

    check-cast v4, Lcom/openfeint/internal/resource/NestedResourceProperty;

    .end local v4    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v4, p1}, Lcom/openfeint/internal/resource/NestedResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Lcom/openfeint/internal/resource/NestedResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V

    goto :goto_0

    .line 143
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/openfeint/internal/resource/ResourceProperty;>;"
    :cond_3
    return-void
.end method


# virtual methods
.method public final generate()Ljava/lang/String;
    .locals 5

    .prologue
    .line 51
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 52
    .local v3, "sw":Ljava/io/StringWriter;
    new-instance v1, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v1}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    .line 54
    .local v1, "jf":Lorg/codehaus/jackson/JsonFactory;
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/codehaus/jackson/JsonFactory;->createJsonGenerator(Ljava/io/Writer;)Lorg/codehaus/jackson/JsonGenerator;

    move-result-object v2

    .line 55
    .local v2, "jg":Lorg/codehaus/jackson/JsonGenerator;
    invoke-virtual {p0, v2}, Lcom/openfeint/internal/resource/Resource;->generate(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 56
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonGenerator;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2    # "jg":Lorg/codehaus/jackson/JsonGenerator;
    :goto_0
    return-object v4

    .line 57
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 58
    .local v0, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final generate(Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 12
    .param p1, "generator"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonGenerationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v7

    .line 66
    .local v7, "rc":Lcom/openfeint/internal/resource/ResourceClass;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 67
    iget-object v10, v7, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-virtual {p1, v10}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 70
    iget-object v10, v7, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 71
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/openfeint/internal/resource/ResourceProperty;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {p1, v10}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 73
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/openfeint/internal/resource/ResourceProperty;

    .line 74
    .local v9, "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    instance-of v10, v9, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    if-eqz v10, :cond_1

    .line 75
    check-cast v9, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    .end local v9    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v9, p0, p1}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;->generate(Lcom/openfeint/internal/resource/Resource;Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 76
    .restart local v9    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    :cond_1
    instance-of v10, v9, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    if-eqz v10, :cond_4

    .line 77
    move-object v0, v9

    check-cast v0, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    move-object v1, v0

    .line 78
    .local v1, "arp":Lcom/openfeint/internal/resource/ArrayResourceProperty;
    invoke-virtual {v1, p0}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/List;

    move-result-object v8

    .line 79
    .local v8, "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/openfeint/internal/resource/Resource;>;"
    if-nez v8, :cond_2

    .line 80
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {v1}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->elementType()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v3

    .line 84
    .local v3, "erc":Lcom/openfeint/internal/resource/ResourceClass;
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartObject()V

    .line 85
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v3, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Lorg/codehaus/jackson/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeStartArray()V

    .line 88
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/openfeint/internal/resource/Resource;

    .line 89
    .local v6, "r":Lcom/openfeint/internal/resource/Resource;
    invoke-virtual {v6, p1}, Lcom/openfeint/internal/resource/Resource;->generate(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_1

    .line 92
    .end local v6    # "r":Lcom/openfeint/internal/resource/Resource;
    :cond_3
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndArray()V

    .line 93
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    goto :goto_0

    .line 95
    .end local v1    # "arp":Lcom/openfeint/internal/resource/ArrayResourceProperty;
    .end local v3    # "erc":Lcom/openfeint/internal/resource/ResourceClass;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "resources":Ljava/util/List;, "Ljava/util/List<+Lcom/openfeint/internal/resource/Resource;>;"
    :cond_4
    instance-of v10, v9, Lcom/openfeint/internal/resource/NestedResourceProperty;

    if-eqz v10, :cond_0

    .line 96
    check-cast v9, Lcom/openfeint/internal/resource/NestedResourceProperty;

    .end local v9    # "rp":Lcom/openfeint/internal/resource/ResourceProperty;
    invoke-virtual {v9, p0}, Lcom/openfeint/internal/resource/NestedResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v6

    .line 97
    .restart local v6    # "r":Lcom/openfeint/internal/resource/Resource;
    if-nez v6, :cond_5

    .line 98
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    goto/16 :goto_0

    .line 100
    :cond_5
    invoke-virtual {v6, p1}, Lcom/openfeint/internal/resource/Resource;->generate(Lorg/codehaus/jackson/JsonGenerator;)V

    goto/16 :goto_0

    .line 104
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/openfeint/internal/resource/ResourceProperty;>;"
    .end local v6    # "r":Lcom/openfeint/internal/resource/Resource;
    :cond_6
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 105
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->writeEndObject()V

    .line 106
    return-void
.end method

.method public resourceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/openfeint/internal/resource/Resource;->mID:Ljava/lang/String;

    return-object v0
.end method

.method public setResourceID(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/openfeint/internal/resource/Resource;->mID:Ljava/lang/String;

    return-void
.end method

.method public final shallowCopy(Lcom/openfeint/internal/resource/Resource;)V
    .locals 2
    .param p1, "otherResource"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "You can only shallowCopy the same type of resource"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/openfeint/internal/resource/Resource;->unguardedShallowCopy(Lcom/openfeint/internal/resource/Resource;)V

    .line 114
    return-void
.end method

.method public final shallowCopyAncestorType(Lcom/openfeint/internal/resource/Resource;)V
    .locals 5
    .param p1, "otherResource"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    const-class v3, Lcom/openfeint/internal/resource/Resource;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 118
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 119
    .local v1, "o":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/openfeint/internal/resource/Resource;

    if-eq v1, v3, :cond_1

    .line 120
    :goto_0
    if-eq v0, v1, :cond_0

    const-class v2, Lcom/openfeint/internal/resource/Resource;

    if-eq v0, v3, :cond_0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 123
    :cond_0
    const-class v2, Lcom/openfeint/internal/resource/Resource;

    if-ne v0, v3, :cond_1

    .line 124
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a superclass of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 128
    :cond_1
    invoke-direct {p0, p1}, Lcom/openfeint/internal/resource/Resource;->unguardedShallowCopy(Lcom/openfeint/internal/resource/Resource;)V

    .line 129
    return-void
.end method
