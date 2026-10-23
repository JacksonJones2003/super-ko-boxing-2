.class public abstract Lcom/openfeint/internal/resource/LongResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "LongResourceProperty.java"


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
    .locals 2
    .param p1, "lhs"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "rhs"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 15
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/LongResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/openfeint/internal/resource/LongResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;J)V

    .line 16
    return-void
.end method

.method public generate(Lcom/openfeint/internal/resource/Resource;Lorg/codehaus/jackson/JsonGenerator;)V
    .locals 2
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
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/LongResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(J)V

    .line 29
    return-void
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)J
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
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/openfeint/internal/resource/LongResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;J)V

    .line 21
    return-void
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;J)V
.end method

.method public set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/String;)V
    .locals 2
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "val"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/openfeint/internal/resource/LongResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;J)V

    .line 25
    return-void
.end method
