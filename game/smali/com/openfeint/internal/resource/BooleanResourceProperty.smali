.class public abstract Lcom/openfeint/internal/resource/BooleanResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "BooleanResourceProperty.java"


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
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Z)V

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
    .line 28
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeBoolean(Z)V

    .line 29
    return-void
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)Z
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
    .line 21
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_TRUE:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Z)V

    .line 25
    :goto_0
    return-void

    .line 24
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/BooleanResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Z)V

    goto :goto_0
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;Z)V
.end method
