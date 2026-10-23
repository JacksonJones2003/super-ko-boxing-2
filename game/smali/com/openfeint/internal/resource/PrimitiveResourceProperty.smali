.class public abstract Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.super Lcom/openfeint/internal/resource/ResourceProperty;
.source "PrimitiveResourceProperty.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/openfeint/internal/resource/ResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V
.end method

.method public abstract generate(Lcom/openfeint/internal/resource/Resource;Lorg/codehaus/jackson/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonGenerationException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parse(Lcom/openfeint/internal/resource/Resource;Lorg/codehaus/jackson/JsonParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
