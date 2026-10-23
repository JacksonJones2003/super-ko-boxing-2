.class public abstract Lcom/openfeint/internal/resource/IntResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "IntResourceProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V
    .locals 1
    .param p1, "lhs"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "rhs"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 15
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/IntResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/IntResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;I)V

    .line 16
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
    .line 24
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/IntResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)I

    move-result v0

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V

    .line 25
    return-void
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)I
.end method

.method public parse(Lcom/openfeint/internal/resource/Resource;Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
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
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/IntResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;I)V

    .line 21
    return-void
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;I)V
.end method
