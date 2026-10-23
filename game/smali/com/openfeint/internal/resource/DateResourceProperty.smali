.class public abstract Lcom/openfeint/internal/resource/DateResourceProperty;
.super Lcom/openfeint/internal/resource/PrimitiveResourceProperty;
.source "DateResourceProperty.java"


# static fields
.field static p:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/openfeint/internal/resource/DateResourceProperty;->p:Ljava/text/DateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/openfeint/internal/resource/PrimitiveResourceProperty;-><init>()V

    return-void
.end method


# virtual methods
.method public copy(Lcom/openfeint/internal/resource/Resource;Lcom/openfeint/internal/resource/Resource;)V
    .locals 1
    .param p1, "lhs"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "rhs"    # Lcom/openfeint/internal/resource/Resource;

    .prologue
    .line 19
    invoke-virtual {p0, p2}, Lcom/openfeint/internal/resource/DateResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/openfeint/internal/resource/DateResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V

    .line 20
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
    .line 34
    invoke-virtual {p0, p1}, Lcom/openfeint/internal/resource/DateResourceProperty;->get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/Date;

    move-result-object v0

    .line 35
    .local v0, "o":Ljava/util/Date;
    if-eqz v0, :cond_0

    .line 36
    sget-object v1, Lcom/openfeint/internal/resource/DateResourceProperty;->p:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonGenerator;->writeNull()V

    goto :goto_0
.end method

.method public abstract get(Lcom/openfeint/internal/resource/Resource;)Ljava/util/Date;
.end method

.method public parse(Lcom/openfeint/internal/resource/Resource;Lorg/codehaus/jackson/JsonParser;)V
    .locals 3
    .param p1, "obj"    # Lcom/openfeint/internal/resource/Resource;
    .param p2, "jp"    # Lorg/codehaus/jackson/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    sget-object v1, Lcom/openfeint/internal/resource/DateResourceProperty;->p:Ljava/text/DateFormat;

    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/resource/DateResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 29
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    check-cast v1, Ljava/util/Date;

    invoke-virtual {p0, p1, v1}, Lcom/openfeint/internal/resource/DateResourceProperty;->set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V

    goto :goto_0
.end method

.method public abstract set(Lcom/openfeint/internal/resource/Resource;Ljava/util/Date;)V
.end method
