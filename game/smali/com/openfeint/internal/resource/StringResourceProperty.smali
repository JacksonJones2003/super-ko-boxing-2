.class public abstract Lcom/openfeint/internal/resource/StringResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "StringResourceProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V
    .locals 1
    .param p1, "lhs"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "rhs"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 16
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/StringResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/StringResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public generate(Lcom/openfeint/internal/resource/Resource;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 1
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "generator"    # Lorg/codehaus/jackson/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonGenerationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/StringResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "o":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_0
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)Ljava/lang/String;
.end method

.method public parse(Lcom/openfeint/internal/resource/Resource;Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NULL:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/StringResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/StringResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/String;)V
.end method
