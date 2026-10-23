.class public Lcom/openfeint/internal/JsonResourceParser;
.super Ljava/lang/Object;
.source "JsonResourceParser.java"


# instance fields
.field private mParser:Lorg/codehaus/jackson/JsonParser;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 0
    .param p1, "parser"    # Lorg/codehaus/jackson/JsonParser;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    .line 24
    return-void
.end method

.method private parseArray()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 119
    .local v0, "tok":Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 125
    :goto_0
    return-object v1

    .line 121
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 122
    new-instance v1, Lorg/codehaus/jackson/JsonParseException;

    const-string v2, "Wanted START_ARRAY"

    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v1

    .line 125
    :cond_1
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedArray()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0
.end method

.method private parseOpenedArray()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/openfeint/internal/resource/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/openfeint/internal/resource/Resource;>;"
    :goto_0
    iget-object v1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v2, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseResource()Lcom/openfeint/internal/resource/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 136
    :cond_0
    return-object v0
.end method

.method private parseOpenedResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;
    .locals 10
    .param p1, "resourceClass"    # Lcom/openfeint/internal/resource/ResourceClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/openfeint/internal/resource/ResourceClass;->factory()Lcom/openfeint/internal/resource/Resource;

    move-result-object v6

    .line 75
    .local v6, "resource":Lcom/openfeint/internal/resource/Resource;
    :goto_0
    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    sget-object v8, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v7, v8, :cond_4

    .line 76
    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "name":Ljava/lang/String;
    iget-object v7, p1, Lcom/openfeint/internal/resource/ResourceClass;->mProperties:Ljava/util/HashMap;

    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/openfeint/internal/resource/ResourceProperty;

    .line 78
    .local v5, "prop":Lcom/openfeint/internal/resource/ResourceProperty;
    if-nez v5, :cond_0

    .line 80
    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 81
    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_0

    .line 82
    :cond_0
    instance-of v7, v5, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    if-eqz v7, :cond_1

    .line 83
    move-object v0, v5

    check-cast v0, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;

    move-object v4, v0

    .line 84
    .local v4, "pprop":Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    .line 85
    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v4, v6, v7}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;->parse(Lcom/openfeint/internal/resource/Resource;Lorg/codehaus/jackson/JsonParser;)V

    goto :goto_0

    .line 86
    .end local v4    # "pprop":Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
    :cond_1
    instance-of v7, v5, Lcom/openfeint/internal/resource/NestedResourceProperty;

    if-eqz v7, :cond_2

    .line 87
    move-object v0, v5

    check-cast v0, Lcom/openfeint/internal/resource/NestedResourceProperty;

    move-object v3, v0

    .line 88
    .local v3, "nprop":Lcom/openfeint/internal/resource/NestedResourceProperty;
    invoke-virtual {v3}, Lcom/openfeint/internal/resource/NestedResourceProperty;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/Class;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/openfeint/internal/JsonResourceParser;->parseResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/openfeint/internal/resource/NestedResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V

    goto :goto_0

    .line 89
    .end local v3    # "nprop":Lcom/openfeint/internal/resource/NestedResourceProperty;
    :cond_2
    instance-of v7, v5, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    if-eqz v7, :cond_3

    .line 90
    move-object v0, v5

    check-cast v0, Lcom/openfeint/internal/resource/ArrayResourceProperty;

    move-object v1, v0

    .line 91
    .local v1, "aprop":Lcom/openfeint/internal/resource/ArrayResourceProperty;
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseArray()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/openfeint/internal/resource/ArrayResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/List;)V

    goto :goto_0

    .line 93
    .end local v1    # "aprop":Lcom/openfeint/internal/resource/ArrayResourceProperty;
    :cond_3
    const-string v7, "ResourceParser"

    const-string v8, "Totally don\'t know what to do about this property"

    invoke-static {v7, v8}, Lcom/openfeint/internal/OpenFeintInternal;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->skipChildren()Lorg/codehaus/jackson/JsonParser;

    goto :goto_0

    .line 98
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "prop":Lcom/openfeint/internal/resource/ResourceProperty;
    :cond_4
    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    sget-object v8, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v7, v8, :cond_5

    .line 99
    new-instance v7, Lorg/codehaus/jackson/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected END_OBJECT of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v9}, Lorg/codehaus/jackson/JsonParser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v7

    .line 101
    :cond_5
    return-object v6
.end method

.method private parseResource()Lcom/openfeint/internal/resource/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_0

    new-instance v3, Lorg/codehaus/jackson/JsonParseException;

    const-string v4, "Couldn\'t find wrapper object."

    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v3

    .line 107
    :cond_0
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/String;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v1

    .line 109
    .local v1, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    if-nez v1, :cond_1

    new-instance v3, Lorg/codehaus/jackson/JsonParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Don\'t know class \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v3

    .line 110
    :cond_1
    invoke-direct {p0, v1}, Lcom/openfeint/internal/JsonResourceParser;->parseResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v2

    .line 111
    .local v2, "rv":Lcom/openfeint/internal/resource/Resource;
    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    new-instance v3, Lorg/codehaus/jackson/JsonParseException;

    const-string v4, "Expected only one k/v in wrapper object."

    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v3

    .line 112
    :cond_2
    return-object v2
.end method

.method private parseResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;
    .locals 4
    .param p1, "resourceClass"    # Lcom/openfeint/internal/resource/ResourceClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v1, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 63
    .local v0, "tok":Lorg/codehaus/jackson/JsonToken;
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    .line 68
    :goto_0
    return-object v1

    .line 65
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_1

    .line 66
    new-instance v1, Lorg/codehaus/jackson/JsonParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected START_OBJECT of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/openfeint/internal/resource/ResourceClass;->mResourceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonParser;->getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v1

    .line 68
    :cond_1
    invoke-direct {p0, p1}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public parse()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "Couldn\'t find toplevel wrapper object."

    .line 28
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 29
    .local v1, "firstTok":Lorg/codehaus/jackson/JsonToken;
    if-nez v1, :cond_0

    .line 32
    const/4 v5, 0x0

    .line 56
    :goto_0
    return-object v5

    .line 35
    :cond_0
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v1, v5, :cond_1

    new-instance v5, Lorg/codehaus/jackson/JsonParseException;

    const-string v6, "Couldn\'t find toplevel wrapper object."

    iget-object v6, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v5

    .line 36
    :cond_1
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_2

    new-instance v5, Lorg/codehaus/jackson/JsonParseException;

    const-string v6, "Couldn\'t find toplevel wrapper object."

    iget-object v6, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v6

    invoke-direct {v5, v7, v6}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v5

    .line 37
    :cond_2
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "classOrArrayName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 41
    .local v3, "rv":Ljava/lang/Object;
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    .line 42
    .local v4, "tok":Lorg/codehaus/jackson/JsonToken;
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_3

    .line 44
    invoke-direct {p0}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedArray()Ljava/util/ArrayList;

    move-result-object v3

    .line 54
    .end local v3    # "rv":Ljava/lang/Object;
    :goto_1
    iget-object v5, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v5}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_6

    new-instance v5, Lorg/codehaus/jackson/JsonParseException;

    const-string v6, "Expected only one k/v in toplevel wrapper object."

    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v5

    .line 45
    .restart local v3    # "rv":Ljava/lang/Object;
    :cond_3
    sget-object v5, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v4, v5, :cond_5

    .line 47
    invoke-static {v0}, Lcom/openfeint/internal/resource/Resource;->getKlass(Ljava/lang/String;)Lcom/openfeint/internal/resource/ResourceClass;

    move-result-object v2

    .line 48
    .local v2, "klass":Lcom/openfeint/internal/resource/ResourceClass;
    if-nez v2, :cond_4

    new-instance v5, Lorg/codehaus/jackson/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown toplevel class \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v5

    .line 49
    :cond_4
    invoke-direct {p0, v2}, Lcom/openfeint/internal/JsonResourceParser;->parseOpenedResource(Lcom/openfeint/internal/resource/ResourceClass;)Lcom/openfeint/internal/resource/Resource;

    move-result-object v3

    .line 50
    .local v3, "rv":Lcom/openfeint/internal/resource/Resource;
    goto :goto_1

    .line 51
    .end local v2    # "klass":Lcom/openfeint/internal/resource/ResourceClass;
    .local v3, "rv":Ljava/lang/Object;
    :cond_5
    new-instance v5, Lorg/codehaus/jackson/JsonParseException;

    const-string v6, "Expected object or array at top level."

    iget-object v7, p0, Lcom/openfeint/internal/JsonResourceParser;->mParser:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->getTokenLocation()Lorg/codehaus/jackson/JsonLocation;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/codehaus/jackson/JsonParseException;-><init>(Ljava/lang/String;Lorg/codehaus/jackson/JsonLocation;)V

    throw v5

    .end local v3    # "rv":Ljava/lang/Object;
    :cond_6
    move-object v5, v3

    .line 56
    goto/16 :goto_0
.end method
