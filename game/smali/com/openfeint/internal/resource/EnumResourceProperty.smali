.class public abstract Lcom/openfeint/internal/resource/EnumResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "EnumResourceProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum",
        "<TT;>;>",
        "Lcom/openfeint/internal/resource/PrimitiveResourceProperty;"
    }
.end annotation


# instance fields
.field mEnumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/openfeint/internal/resource/EnumResourceProperty;, "Lcom/openfeint/internal/resource/EnumResourceProperty<TT;>;"
    .local p1, "enumClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/openfeint/internal/resource/EnumResourceProperty;->mEnumClass:Ljava/lang/Class;

    .line 14
    return-void
.end method


# virtual methods
.method public copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V
    .locals 1
    .param p1, "lhs"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "rhs"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 17
    .local p0, "this":Lcom/openfeint/internal/resource/EnumResourceProperty;, "Lcom/openfeint/internal/resource/EnumResourceProperty<TT;>;"
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/EnumResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/EnumResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/Enum;)V

    .line 18
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
    .line 29
    .local p0, "this":Lcom/openfeint/internal/resource/EnumResourceProperty;, "Lcom/openfeint/internal/resource/EnumResourceProperty<TT;>;"
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/EnumResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/lang/Enum;

    move-result-object v0

    .line 30
    .local v0, "val":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/internal/resource/Resource;",
            ")TT;"
        }
    .end annotation
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
    .line 25
    .local p0, "this":Lcom/openfeint/internal/resource/EnumResourceProperty;, "Lcom/openfeint/internal/resource/EnumResourceProperty<TT;>;"
    iget-object v0, p0, Lcom/openfeint/internal/resource/EnumResourceProperty;->mEnumClass:Ljava/lang/Class;

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/EnumResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/Enum;)V

    .line 26
    return-void
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;Ljava/lang/Enum;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/openfeint/internal/resource/Resource;",
            "TT;)V"
        }
    .end annotation
.end method
