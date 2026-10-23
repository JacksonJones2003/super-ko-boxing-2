.class public abstract Lorg/codehaus/jackson/impl/Utf8NumericParser;
.super Lorg/codehaus/jackson/impl/StreamBasedParserBase;
.source "Utf8NumericParser.java"


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V
    .locals 0
    .param p1, "pc"    # Lorg/codehaus/jackson/io/IOContext;
    .param p2, "features"    # I
    .param p3, "in"    # Ljava/io/InputStream;
    .param p4, "inputBuffer"    # [B
    .param p5, "start"    # I
    .param p6, "end"    # I
    .param p7, "bufferRecyclable"    # Z

    .prologue
    .line 32
    invoke-direct/range {p0 .. p7}, Lorg/codehaus/jackson/impl/StreamBasedParserBase;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;[BIIZ)V

    .line 33
    return-void
.end method


# virtual methods
.method protected final parseNumberText(I)Lorg/codehaus/jackson/JsonToken;
    .locals 11
    .param p1, "c"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v5

    .line 61
    .local v5, "outBuf":[C
    const/4 v6, 0x0

    .line 62
    .local v6, "outPtr":I
    const/16 v8, 0x2d

    if-ne p1, v8, :cond_e

    const/4 v8, 0x1

    move v4, v8

    .line 65
    .local v4, "negative":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 66
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .local v7, "outPtr":I
    const/16 v8, 0x2d

    aput-char v8, v5, v6

    .line 68
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_0

    .line 69
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 71
    :cond_0
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .line 74
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_1
    const/4 v3, 0x0

    .line 75
    .local v3, "intLen":I
    const/4 v0, 0x0

    .line 80
    .local v0, "eof":Z
    :goto_1
    const/16 v8, 0x30

    if-lt p1, v8, :cond_19

    const/16 v8, 0x39

    if-le p1, v8, :cond_f

    move v7, v6

    .line 104
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :goto_2
    if-nez v3, :cond_2

    .line 105
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Missing integer part (next char "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_getCharDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 108
    :cond_2
    const/4 v2, 0x0

    .line 110
    .local v2, "fractLen":I
    const/16 v8, 0x2e

    if-ne p1, v8, :cond_18

    .line 111
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v7

    .line 115
    :goto_3
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_13

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_13

    .line 116
    const/4 v0, 0x1

    .line 131
    :cond_3
    if-nez v2, :cond_4

    .line 132
    const-string v8, "Decimal point not followed by a digit"

    invoke-virtual {p0, p1, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 136
    :cond_4
    :goto_4
    const/4 v1, 0x0

    .line 137
    .local v1, "expLen":I
    const/16 v8, 0x65

    if-eq p1, v8, :cond_5

    const/16 v8, 0x45

    if-ne p1, v8, :cond_c

    .line 138
    :cond_5
    array-length v8, v5

    if-lt v6, v8, :cond_6

    .line 139
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 140
    const/4 v6, 0x0

    .line 142
    :cond_6
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 144
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_7

    .line 145
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 147
    :cond_7
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    .line 149
    const/16 v8, 0x2d

    if-eq p1, v8, :cond_8

    const/16 v8, 0x2b

    if-ne p1, v8, :cond_17

    .line 150
    :cond_8
    array-length v8, v5

    if-lt v7, v8, :cond_16

    .line 151
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 152
    const/4 v6, 0x0

    .line 154
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_5
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 156
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_9

    .line 157
    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMoreGuaranteed()V

    .line 159
    :cond_9
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .line 163
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :goto_6
    const/16 v8, 0x39

    if-gt p1, v8, :cond_b

    const/16 v8, 0x30

    if-lt p1, v8, :cond_b

    .line 164
    add-int/lit8 v1, v1, 0x1

    .line 165
    array-length v8, v5

    if-lt v6, v8, :cond_a

    .line 166
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 167
    const/4 v6, 0x0

    .line 169
    :cond_a
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 170
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_15

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_15

    .line 171
    const/4 v0, 0x1

    move v6, v7

    .line 177
    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    :cond_b
    if-nez v1, :cond_c

    .line 178
    const-string v8, "Exponent indicator not followed by a digit"

    invoke-virtual {p0, p1, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportUnexpectedNumberChar(ILjava/lang/String;)V

    .line 183
    :cond_c
    if-nez v0, :cond_d

    .line 184
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    iput v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    .line 186
    :cond_d
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8, v6}, Lorg/codehaus/jackson/util/TextBuffer;->setCurrentLength(I)V

    .line 189
    invoke-virtual {p0, v4, v3, v2, v1}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reset(ZIII)Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    return-object v8

    .line 62
    .end local v0    # "eof":Z
    .end local v1    # "expLen":I
    .end local v2    # "fractLen":I
    .end local v3    # "intLen":I
    .end local v4    # "negative":Z
    :cond_e
    const/4 v8, 0x0

    move v4, v8

    goto/16 :goto_0

    .line 83
    .restart local v0    # "eof":Z
    .restart local v3    # "intLen":I
    .restart local v4    # "negative":Z
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 85
    const/4 v8, 0x2

    if-ne v3, v8, :cond_10

    .line 86
    const/4 v8, 0x1

    sub-int v8, v6, v8

    aget-char v8, v5, v8

    const/16 v9, 0x30

    if-ne v8, v9, :cond_10

    .line 87
    const-string v8, "Leading zeroes not allowed"

    invoke-virtual {p0, v8}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->reportInvalidNumber(Ljava/lang/String;)V

    .line 90
    :cond_10
    array-length v8, v5

    if-lt v6, v8, :cond_11

    .line 91
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 92
    const/4 v6, 0x0

    .line 94
    :cond_11
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    .line 95
    iget v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputEnd:I

    if-lt v8, v9, :cond_12

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/Utf8NumericParser;->loadMore()Z

    move-result v8

    if-nez v8, :cond_12

    .line 97
    const/4 p1, 0x0

    .line 98
    const/4 v0, 0x1

    .line 99
    goto/16 :goto_2

    .line 101
    :cond_12
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_1

    .line 119
    .restart local v2    # "fractLen":I
    :cond_13
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    .line 120
    const/16 v8, 0x30

    if-lt p1, v8, :cond_3

    const/16 v8, 0x39

    if-gt p1, v8, :cond_3

    .line 123
    add-int/lit8 v2, v2, 0x1

    .line 124
    array-length v8, v5

    if-lt v6, v8, :cond_14

    .line 125
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_textBuffer:Lorg/codehaus/jackson/util/TextBuffer;

    invoke-virtual {v8}, Lorg/codehaus/jackson/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v5

    .line 126
    const/4 v6, 0x0

    .line 128
    :cond_14
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    int-to-char v8, p1

    aput-char v8, v5, v6

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_3

    .line 174
    .end local v6    # "outPtr":I
    .restart local v1    # "expLen":I
    .restart local v7    # "outPtr":I
    :cond_15
    iget-object v8, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputBuffer:[B

    iget v9, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lorg/codehaus/jackson/impl/Utf8NumericParser;->_inputPtr:I

    aget-byte v8, v8, v9

    and-int/lit16 p1, v8, 0xff

    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_16
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_5

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_17
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_6

    .end local v1    # "expLen":I
    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    :cond_18
    move v6, v7

    .end local v7    # "outPtr":I
    .restart local v6    # "outPtr":I
    goto/16 :goto_4

    .end local v2    # "fractLen":I
    :cond_19
    move v7, v6

    .end local v6    # "outPtr":I
    .restart local v7    # "outPtr":I
    goto/16 :goto_2
.end method
