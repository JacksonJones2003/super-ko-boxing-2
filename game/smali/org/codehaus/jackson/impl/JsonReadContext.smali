.class public final Lorg/codehaus/jackson/impl/JsonReadContext;
.super Lorg/codehaus/jackson/JsonStreamContext;
.source "JsonReadContext.java"


# instance fields
.field _child:Lorg/codehaus/jackson/impl/JsonReadContext;

.field protected _columnNr:I

.field protected _currentName:Ljava/lang/String;

.field protected _lineNr:I

.field protected final _parent:Lorg/codehaus/jackson/impl/JsonReadContext;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V
    .locals 1
    .param p1, "parent"    # Lorg/codehaus/jackson/impl/JsonReadContext;
    .param p2, "type"    # I
    .param p3, "lineNr"    # I
    .param p4, "colNr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p2}, Lorg/codehaus/jackson/JsonStreamContext;-><init>(I)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 49
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_parent:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 50
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 51
    iput p4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 52
    return-void
.end method

.method public static createRootContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p0, "lineNr"    # I
    .param p1, "colNr"    # I

    .prologue
    .line 67
    new-instance v0, Lorg/codehaus/jackson/impl/JsonReadContext;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    return-object v0
.end method


# virtual methods
.method public final createChildArrayContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 73
    .local v0, "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 74
    new-instance v1, Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-direct {v1, p0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 77
    :goto_0
    return-object v1

    .line 76
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 77
    goto :goto_0
.end method

.method public final createChildObjectContext(II)Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 3
    .param p1, "lineNr"    # I
    .param p2, "colNr"    # I

    .prologue
    const/4 v2, 0x2

    .line 82
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 83
    .local v0, "ctxt":Lorg/codehaus/jackson/impl/JsonReadContext;
    if-nez v0, :cond_0

    .line 84
    new-instance v1, Lorg/codehaus/jackson/impl/JsonReadContext;

    invoke-direct {v1, p0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;-><init>(Lorg/codehaus/jackson/impl/JsonReadContext;III)V

    iput-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_child:Lorg/codehaus/jackson/impl/JsonReadContext;

    .line 87
    :goto_0
    return-object v1

    .line 86
    :cond_0
    invoke-virtual {v0, v2, p1, p2}, Lorg/codehaus/jackson/impl/JsonReadContext;->reset(III)V

    move-object v1, v0

    .line 87
    goto :goto_0
.end method

.method public final expectComma()Z
    .locals 2

    .prologue
    .line 132
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 133
    .local v0, "ix":I
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getCurrentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/codehaus/jackson/JsonStreamContext;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getParent()Lorg/codehaus/jackson/impl/JsonReadContext;

    move-result-object v0

    return-object v0
.end method

.method public final getParent()Lorg/codehaus/jackson/impl/JsonReadContext;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_parent:Lorg/codehaus/jackson/impl/JsonReadContext;

    return-object v0
.end method

.method public final getStartLocation(Ljava/lang/Object;)Lorg/codehaus/jackson/JsonLocation;
    .locals 6
    .param p1, "srcRef"    # Ljava/lang/Object;

    .prologue
    .line 115
    const-wide/16 v2, -0x1

    .line 117
    .local v2, "totalChars":J
    new-instance v0, Lorg/codehaus/jackson/JsonLocation;

    iget v4, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/JsonLocation;-><init>(Ljava/lang/Object;JII)V

    return-object v0
.end method

.method protected final reset(III)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "lineNr"    # I
    .param p3, "colNr"    # I

    .prologue
    .line 56
    iput p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_index:I

    .line 58
    iput p2, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_lineNr:I

    .line 59
    iput p3, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_columnNr:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setCurrentName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x5d

    const/16 v2, 0x22

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 154
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_type:I

    packed-switch v1, :pswitch_data_0

    .line 175
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 156
    :pswitch_0
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 159
    :pswitch_1
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/JsonReadContext;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 164
    :pswitch_2
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lorg/codehaus/jackson/impl/JsonReadContext;->_currentName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/codehaus/jackson/util/CharTypes;->appendQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 170
    :cond_0
    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
