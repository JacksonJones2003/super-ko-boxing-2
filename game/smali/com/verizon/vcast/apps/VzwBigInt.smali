.class Lcom/verizon/vcast/apps/VzwBigInt;
.super Ljava/lang/Object;
.source "VzwBigInt.java"


# static fields
.field private static final BITS_PER_BYTE:I = 0x8

.field private static final BYTES_PER_INT:I = 0x4

.field private static final IMASK:J = 0xffffffffL

.field public static final ONE:Lcom/verizon/vcast/apps/VzwBigInt;

.field private static final THREE:Lcom/verizon/vcast/apps/VzwBigInt;

.field private static final TWO:Lcom/verizon/vcast/apps/VzwBigInt;

.field public static final ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

.field private static final ZERO_MAGNITUDE:[I

.field private static final bitCounts:[B

.field private static final primeLists:[[I

.field private static primeProducts:[I

.field private static final rndMask:[B


# instance fields
.field private mQuote:J

.field private magnitude:[I

.field private nBitLength:I

.field private nBits:I

.field private sign:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 23
    const/16 v4, 0x34

    new-array v4, v4, [[I

    const/4 v5, 0x0

    .line 24
    const/16 v6, 0x8

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 25
    new-array v6, v9, [I

    fill-array-data v6, :array_1

    aput-object v6, v4, v5

    .line 26
    new-array v5, v9, [I

    fill-array-data v5, :array_2

    aput-object v5, v4, v10

    .line 27
    new-array v5, v8, [I

    fill-array-data v5, :array_3

    aput-object v5, v4, v7

    .line 28
    new-array v5, v8, [I

    fill-array-data v5, :array_4

    aput-object v5, v4, v8

    .line 30
    new-array v5, v8, [I

    fill-array-data v5, :array_5

    aput-object v5, v4, v9

    .line 31
    new-array v5, v8, [I

    fill-array-data v5, :array_6

    aput-object v5, v4, v11

    const/4 v5, 0x7

    .line 32
    new-array v6, v8, [I

    fill-array-data v6, :array_7

    aput-object v6, v4, v5

    const/16 v5, 0x8

    .line 33
    new-array v6, v8, [I

    fill-array-data v6, :array_8

    aput-object v6, v4, v5

    const/16 v5, 0x9

    .line 34
    new-array v6, v8, [I

    fill-array-data v6, :array_9

    aput-object v6, v4, v5

    const/16 v5, 0xa

    .line 36
    new-array v6, v7, [I

    fill-array-data v6, :array_a

    aput-object v6, v4, v5

    const/16 v5, 0xb

    .line 37
    new-array v6, v7, [I

    fill-array-data v6, :array_b

    aput-object v6, v4, v5

    const/16 v5, 0xc

    .line 38
    new-array v6, v7, [I

    fill-array-data v6, :array_c

    aput-object v6, v4, v5

    const/16 v5, 0xd

    .line 39
    new-array v6, v7, [I

    fill-array-data v6, :array_d

    aput-object v6, v4, v5

    const/16 v5, 0xe

    .line 40
    new-array v6, v7, [I

    fill-array-data v6, :array_e

    aput-object v6, v4, v5

    const/16 v5, 0xf

    .line 42
    new-array v6, v7, [I

    fill-array-data v6, :array_f

    aput-object v6, v4, v5

    const/16 v5, 0x10

    .line 43
    new-array v6, v7, [I

    fill-array-data v6, :array_10

    aput-object v6, v4, v5

    const/16 v5, 0x11

    .line 44
    new-array v6, v7, [I

    fill-array-data v6, :array_11

    aput-object v6, v4, v5

    const/16 v5, 0x12

    .line 45
    new-array v6, v7, [I

    fill-array-data v6, :array_12

    aput-object v6, v4, v5

    const/16 v5, 0x13

    .line 46
    new-array v6, v7, [I

    fill-array-data v6, :array_13

    aput-object v6, v4, v5

    const/16 v5, 0x14

    .line 48
    new-array v6, v7, [I

    fill-array-data v6, :array_14

    aput-object v6, v4, v5

    const/16 v5, 0x15

    .line 49
    new-array v6, v7, [I

    fill-array-data v6, :array_15

    aput-object v6, v4, v5

    const/16 v5, 0x16

    .line 50
    new-array v6, v7, [I

    fill-array-data v6, :array_16

    aput-object v6, v4, v5

    const/16 v5, 0x17

    .line 51
    new-array v6, v7, [I

    fill-array-data v6, :array_17

    aput-object v6, v4, v5

    const/16 v5, 0x18

    .line 52
    new-array v6, v7, [I

    fill-array-data v6, :array_18

    aput-object v6, v4, v5

    const/16 v5, 0x19

    .line 54
    new-array v6, v7, [I

    fill-array-data v6, :array_19

    aput-object v6, v4, v5

    const/16 v5, 0x1a

    .line 55
    new-array v6, v7, [I

    fill-array-data v6, :array_1a

    aput-object v6, v4, v5

    const/16 v5, 0x1b

    .line 56
    new-array v6, v7, [I

    fill-array-data v6, :array_1b

    aput-object v6, v4, v5

    const/16 v5, 0x1c

    .line 57
    new-array v6, v7, [I

    fill-array-data v6, :array_1c

    aput-object v6, v4, v5

    const/16 v5, 0x1d

    .line 58
    new-array v6, v7, [I

    fill-array-data v6, :array_1d

    aput-object v6, v4, v5

    const/16 v5, 0x1e

    .line 60
    new-array v6, v7, [I

    fill-array-data v6, :array_1e

    aput-object v6, v4, v5

    const/16 v5, 0x1f

    .line 61
    new-array v6, v7, [I

    fill-array-data v6, :array_1f

    aput-object v6, v4, v5

    const/16 v5, 0x20

    .line 62
    new-array v6, v7, [I

    fill-array-data v6, :array_20

    aput-object v6, v4, v5

    const/16 v5, 0x21

    .line 63
    new-array v6, v7, [I

    fill-array-data v6, :array_21

    aput-object v6, v4, v5

    const/16 v5, 0x22

    .line 64
    new-array v6, v7, [I

    fill-array-data v6, :array_22

    aput-object v6, v4, v5

    const/16 v5, 0x23

    .line 66
    new-array v6, v7, [I

    fill-array-data v6, :array_23

    aput-object v6, v4, v5

    const/16 v5, 0x24

    .line 67
    new-array v6, v7, [I

    fill-array-data v6, :array_24

    aput-object v6, v4, v5

    const/16 v5, 0x25

    .line 68
    new-array v6, v7, [I

    fill-array-data v6, :array_25

    aput-object v6, v4, v5

    const/16 v5, 0x26

    .line 69
    new-array v6, v7, [I

    fill-array-data v6, :array_26

    aput-object v6, v4, v5

    const/16 v5, 0x27

    .line 70
    new-array v6, v7, [I

    fill-array-data v6, :array_27

    aput-object v6, v4, v5

    const/16 v5, 0x28

    .line 72
    new-array v6, v7, [I

    fill-array-data v6, :array_28

    aput-object v6, v4, v5

    const/16 v5, 0x29

    .line 73
    new-array v6, v7, [I

    fill-array-data v6, :array_29

    aput-object v6, v4, v5

    const/16 v5, 0x2a

    .line 74
    new-array v6, v7, [I

    fill-array-data v6, :array_2a

    aput-object v6, v4, v5

    const/16 v5, 0x2b

    .line 75
    new-array v6, v7, [I

    fill-array-data v6, :array_2b

    aput-object v6, v4, v5

    const/16 v5, 0x2c

    .line 76
    new-array v6, v7, [I

    fill-array-data v6, :array_2c

    aput-object v6, v4, v5

    const/16 v5, 0x2d

    .line 78
    new-array v6, v7, [I

    fill-array-data v6, :array_2d

    aput-object v6, v4, v5

    const/16 v5, 0x2e

    .line 79
    new-array v6, v7, [I

    fill-array-data v6, :array_2e

    aput-object v6, v4, v5

    const/16 v5, 0x2f

    .line 80
    new-array v6, v7, [I

    fill-array-data v6, :array_2f

    aput-object v6, v4, v5

    const/16 v5, 0x30

    .line 81
    new-array v6, v7, [I

    fill-array-data v6, :array_30

    aput-object v6, v4, v5

    const/16 v5, 0x31

    .line 82
    new-array v6, v7, [I

    fill-array-data v6, :array_31

    aput-object v6, v4, v5

    const/16 v5, 0x32

    .line 84
    new-array v6, v7, [I

    fill-array-data v6, :array_32

    aput-object v6, v4, v5

    const/16 v5, 0x33

    .line 85
    new-array v6, v7, [I

    fill-array-data v6, :array_33

    aput-object v6, v4, v5

    .line 23
    sput-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->primeLists:[[I

    .line 90
    const/4 v4, 0x0

    new-array v4, v4, [I

    sput-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO_MAGNITUDE:[I

    .line 91
    new-instance v4, Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v5, 0x0

    sget-object v6, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO_MAGNITUDE:[I

    invoke-direct {v4, v5, v6}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    sput-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 92
    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->valueOf(J)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v4

    sput-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 93
    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->valueOf(J)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v4

    sput-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->TWO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 94
    const-wide/16 v4, 0x3

    invoke-static {v4, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->valueOf(J)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v4

    sput-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->THREE:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 98
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v5, 0x0

    iput v5, v4, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v5, 0x0

    iput v5, v4, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 99
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v5, 0x1

    iput v5, v4, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v5, 0x1

    iput v5, v4, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 100
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->TWO:Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v5, 0x1

    iput v5, v4, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->TWO:Lcom/verizon/vcast/apps/VzwBigInt;

    iput v10, v4, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 102
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->primeLists:[[I

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->primeProducts:[I

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->primeLists:[[I

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 478
    const/16 v4, 0x8

    new-array v4, v4, [B

    fill-array-data v4, :array_34

    sput-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->rndMask:[B

    .line 735
    const/16 v4, 0x100

    new-array v4, v4, [B

    const/4 v5, 0x1

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    aput-byte v5, v4, v10

    aput-byte v10, v4, v7

    const/4 v5, 0x1

    aput-byte v5, v4, v8

    aput-byte v10, v4, v9

    aput-byte v10, v4, v11

    const/4 v5, 0x7

    aput-byte v7, v4, v5

    const/16 v5, 0x8

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/16 v5, 0x9

    aput-byte v10, v4, v5

    const/16 v5, 0xa

    aput-byte v10, v4, v5

    const/16 v5, 0xb

    aput-byte v7, v4, v5

    const/16 v5, 0xc

    aput-byte v10, v4, v5

    const/16 v5, 0xd

    aput-byte v7, v4, v5

    const/16 v5, 0xe

    aput-byte v7, v4, v5

    const/16 v5, 0xf

    aput-byte v8, v4, v5

    const/16 v5, 0x10

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/16 v5, 0x11

    .line 736
    aput-byte v10, v4, v5

    const/16 v5, 0x12

    aput-byte v10, v4, v5

    const/16 v5, 0x13

    aput-byte v7, v4, v5

    const/16 v5, 0x14

    aput-byte v10, v4, v5

    const/16 v5, 0x15

    aput-byte v7, v4, v5

    const/16 v5, 0x16

    aput-byte v7, v4, v5

    const/16 v5, 0x17

    aput-byte v8, v4, v5

    const/16 v5, 0x18

    aput-byte v10, v4, v5

    const/16 v5, 0x19

    aput-byte v7, v4, v5

    const/16 v5, 0x1a

    aput-byte v7, v4, v5

    const/16 v5, 0x1b

    aput-byte v8, v4, v5

    const/16 v5, 0x1c

    aput-byte v7, v4, v5

    const/16 v5, 0x1d

    aput-byte v8, v4, v5

    const/16 v5, 0x1e

    aput-byte v8, v4, v5

    const/16 v5, 0x1f

    aput-byte v9, v4, v5

    const/16 v5, 0x20

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/16 v5, 0x21

    aput-byte v10, v4, v5

    const/16 v5, 0x22

    aput-byte v10, v4, v5

    const/16 v5, 0x23

    aput-byte v7, v4, v5

    const/16 v5, 0x24

    aput-byte v10, v4, v5

    const/16 v5, 0x25

    aput-byte v7, v4, v5

    const/16 v5, 0x26

    aput-byte v7, v4, v5

    const/16 v5, 0x27

    aput-byte v8, v4, v5

    const/16 v5, 0x28

    aput-byte v10, v4, v5

    const/16 v5, 0x29

    aput-byte v7, v4, v5

    const/16 v5, 0x2a

    aput-byte v7, v4, v5

    const/16 v5, 0x2b

    aput-byte v8, v4, v5

    const/16 v5, 0x2c

    aput-byte v7, v4, v5

    const/16 v5, 0x2d

    aput-byte v8, v4, v5

    const/16 v5, 0x2e

    .line 737
    aput-byte v8, v4, v5

    const/16 v5, 0x2f

    aput-byte v9, v4, v5

    const/16 v5, 0x30

    aput-byte v10, v4, v5

    const/16 v5, 0x31

    aput-byte v7, v4, v5

    const/16 v5, 0x32

    aput-byte v7, v4, v5

    const/16 v5, 0x33

    aput-byte v8, v4, v5

    const/16 v5, 0x34

    aput-byte v7, v4, v5

    const/16 v5, 0x35

    aput-byte v8, v4, v5

    const/16 v5, 0x36

    aput-byte v8, v4, v5

    const/16 v5, 0x37

    aput-byte v9, v4, v5

    const/16 v5, 0x38

    aput-byte v7, v4, v5

    const/16 v5, 0x39

    aput-byte v8, v4, v5

    const/16 v5, 0x3a

    aput-byte v8, v4, v5

    const/16 v5, 0x3b

    aput-byte v9, v4, v5

    const/16 v5, 0x3c

    aput-byte v8, v4, v5

    const/16 v5, 0x3d

    aput-byte v9, v4, v5

    const/16 v5, 0x3e

    aput-byte v9, v4, v5

    const/16 v5, 0x3f

    aput-byte v11, v4, v5

    const/16 v5, 0x40

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/16 v5, 0x41

    aput-byte v10, v4, v5

    const/16 v5, 0x42

    aput-byte v10, v4, v5

    const/16 v5, 0x43

    aput-byte v7, v4, v5

    const/16 v5, 0x44

    aput-byte v10, v4, v5

    const/16 v5, 0x45

    aput-byte v7, v4, v5

    const/16 v5, 0x46

    aput-byte v7, v4, v5

    const/16 v5, 0x47

    aput-byte v8, v4, v5

    const/16 v5, 0x48

    aput-byte v10, v4, v5

    const/16 v5, 0x49

    aput-byte v7, v4, v5

    const/16 v5, 0x4a

    aput-byte v7, v4, v5

    const/16 v5, 0x4b

    .line 738
    aput-byte v8, v4, v5

    const/16 v5, 0x4c

    aput-byte v7, v4, v5

    const/16 v5, 0x4d

    aput-byte v8, v4, v5

    const/16 v5, 0x4e

    aput-byte v8, v4, v5

    const/16 v5, 0x4f

    aput-byte v9, v4, v5

    const/16 v5, 0x50

    aput-byte v10, v4, v5

    const/16 v5, 0x51

    aput-byte v7, v4, v5

    const/16 v5, 0x52

    aput-byte v7, v4, v5

    const/16 v5, 0x53

    aput-byte v8, v4, v5

    const/16 v5, 0x54

    aput-byte v7, v4, v5

    const/16 v5, 0x55

    aput-byte v8, v4, v5

    const/16 v5, 0x56

    aput-byte v8, v4, v5

    const/16 v5, 0x57

    aput-byte v9, v4, v5

    const/16 v5, 0x58

    aput-byte v7, v4, v5

    const/16 v5, 0x59

    aput-byte v8, v4, v5

    const/16 v5, 0x5a

    aput-byte v8, v4, v5

    const/16 v5, 0x5b

    aput-byte v9, v4, v5

    const/16 v5, 0x5c

    aput-byte v8, v4, v5

    const/16 v5, 0x5d

    aput-byte v9, v4, v5

    const/16 v5, 0x5e

    aput-byte v9, v4, v5

    const/16 v5, 0x5f

    aput-byte v11, v4, v5

    const/16 v5, 0x60

    aput-byte v10, v4, v5

    const/16 v5, 0x61

    aput-byte v7, v4, v5

    const/16 v5, 0x62

    aput-byte v7, v4, v5

    const/16 v5, 0x63

    aput-byte v8, v4, v5

    const/16 v5, 0x64

    aput-byte v7, v4, v5

    const/16 v5, 0x65

    aput-byte v8, v4, v5

    const/16 v5, 0x66

    aput-byte v8, v4, v5

    const/16 v5, 0x67

    aput-byte v9, v4, v5

    const/16 v5, 0x68

    .line 739
    aput-byte v7, v4, v5

    const/16 v5, 0x69

    aput-byte v8, v4, v5

    const/16 v5, 0x6a

    aput-byte v8, v4, v5

    const/16 v5, 0x6b

    aput-byte v9, v4, v5

    const/16 v5, 0x6c

    aput-byte v8, v4, v5

    const/16 v5, 0x6d

    aput-byte v9, v4, v5

    const/16 v5, 0x6e

    aput-byte v9, v4, v5

    const/16 v5, 0x6f

    aput-byte v11, v4, v5

    const/16 v5, 0x70

    aput-byte v7, v4, v5

    const/16 v5, 0x71

    aput-byte v8, v4, v5

    const/16 v5, 0x72

    aput-byte v8, v4, v5

    const/16 v5, 0x73

    aput-byte v9, v4, v5

    const/16 v5, 0x74

    aput-byte v8, v4, v5

    const/16 v5, 0x75

    aput-byte v9, v4, v5

    const/16 v5, 0x76

    aput-byte v9, v4, v5

    const/16 v5, 0x77

    aput-byte v11, v4, v5

    const/16 v5, 0x78

    aput-byte v8, v4, v5

    const/16 v5, 0x79

    aput-byte v9, v4, v5

    const/16 v5, 0x7a

    aput-byte v9, v4, v5

    const/16 v5, 0x7b

    aput-byte v11, v4, v5

    const/16 v5, 0x7c

    aput-byte v9, v4, v5

    const/16 v5, 0x7d

    aput-byte v11, v4, v5

    const/16 v5, 0x7e

    aput-byte v11, v4, v5

    const/16 v5, 0x7f

    const/4 v6, 0x7

    aput-byte v6, v4, v5

    const/16 v5, 0x80

    const/4 v6, 0x1

    aput-byte v6, v4, v5

    const/16 v5, 0x81

    aput-byte v10, v4, v5

    const/16 v5, 0x82

    aput-byte v10, v4, v5

    const/16 v5, 0x83

    aput-byte v7, v4, v5

    const/16 v5, 0x84

    aput-byte v10, v4, v5

    const/16 v5, 0x85

    .line 740
    aput-byte v7, v4, v5

    const/16 v5, 0x86

    aput-byte v7, v4, v5

    const/16 v5, 0x87

    aput-byte v8, v4, v5

    const/16 v5, 0x88

    aput-byte v10, v4, v5

    const/16 v5, 0x89

    aput-byte v7, v4, v5

    const/16 v5, 0x8a

    aput-byte v7, v4, v5

    const/16 v5, 0x8b

    aput-byte v8, v4, v5

    const/16 v5, 0x8c

    aput-byte v7, v4, v5

    const/16 v5, 0x8d

    aput-byte v8, v4, v5

    const/16 v5, 0x8e

    aput-byte v8, v4, v5

    const/16 v5, 0x8f

    aput-byte v9, v4, v5

    const/16 v5, 0x90

    aput-byte v10, v4, v5

    const/16 v5, 0x91

    aput-byte v7, v4, v5

    const/16 v5, 0x92

    aput-byte v7, v4, v5

    const/16 v5, 0x93

    aput-byte v8, v4, v5

    const/16 v5, 0x94

    aput-byte v7, v4, v5

    const/16 v5, 0x95

    aput-byte v8, v4, v5

    const/16 v5, 0x96

    aput-byte v8, v4, v5

    const/16 v5, 0x97

    aput-byte v9, v4, v5

    const/16 v5, 0x98

    aput-byte v7, v4, v5

    const/16 v5, 0x99

    aput-byte v8, v4, v5

    const/16 v5, 0x9a

    aput-byte v8, v4, v5

    const/16 v5, 0x9b

    aput-byte v9, v4, v5

    const/16 v5, 0x9c

    aput-byte v8, v4, v5

    const/16 v5, 0x9d

    aput-byte v9, v4, v5

    const/16 v5, 0x9e

    aput-byte v9, v4, v5

    const/16 v5, 0x9f

    aput-byte v11, v4, v5

    const/16 v5, 0xa0

    aput-byte v10, v4, v5

    const/16 v5, 0xa1

    aput-byte v7, v4, v5

    const/16 v5, 0xa2

    .line 741
    aput-byte v7, v4, v5

    const/16 v5, 0xa3

    aput-byte v8, v4, v5

    const/16 v5, 0xa4

    aput-byte v7, v4, v5

    const/16 v5, 0xa5

    aput-byte v8, v4, v5

    const/16 v5, 0xa6

    aput-byte v8, v4, v5

    const/16 v5, 0xa7

    aput-byte v9, v4, v5

    const/16 v5, 0xa8

    aput-byte v7, v4, v5

    const/16 v5, 0xa9

    aput-byte v8, v4, v5

    const/16 v5, 0xaa

    aput-byte v8, v4, v5

    const/16 v5, 0xab

    aput-byte v9, v4, v5

    const/16 v5, 0xac

    aput-byte v8, v4, v5

    const/16 v5, 0xad

    aput-byte v9, v4, v5

    const/16 v5, 0xae

    aput-byte v9, v4, v5

    const/16 v5, 0xaf

    aput-byte v11, v4, v5

    const/16 v5, 0xb0

    aput-byte v7, v4, v5

    const/16 v5, 0xb1

    aput-byte v8, v4, v5

    const/16 v5, 0xb2

    aput-byte v8, v4, v5

    const/16 v5, 0xb3

    aput-byte v9, v4, v5

    const/16 v5, 0xb4

    aput-byte v8, v4, v5

    const/16 v5, 0xb5

    aput-byte v9, v4, v5

    const/16 v5, 0xb6

    aput-byte v9, v4, v5

    const/16 v5, 0xb7

    aput-byte v11, v4, v5

    const/16 v5, 0xb8

    aput-byte v8, v4, v5

    const/16 v5, 0xb9

    aput-byte v9, v4, v5

    const/16 v5, 0xba

    aput-byte v9, v4, v5

    const/16 v5, 0xbb

    aput-byte v11, v4, v5

    const/16 v5, 0xbc

    aput-byte v9, v4, v5

    const/16 v5, 0xbd

    aput-byte v11, v4, v5

    const/16 v5, 0xbe

    aput-byte v11, v4, v5

    const/16 v5, 0xbf

    .line 742
    const/4 v6, 0x7

    aput-byte v6, v4, v5

    const/16 v5, 0xc0

    aput-byte v10, v4, v5

    const/16 v5, 0xc1

    aput-byte v7, v4, v5

    const/16 v5, 0xc2

    aput-byte v7, v4, v5

    const/16 v5, 0xc3

    aput-byte v8, v4, v5

    const/16 v5, 0xc4

    aput-byte v7, v4, v5

    const/16 v5, 0xc5

    aput-byte v8, v4, v5

    const/16 v5, 0xc6

    aput-byte v8, v4, v5

    const/16 v5, 0xc7

    aput-byte v9, v4, v5

    const/16 v5, 0xc8

    aput-byte v7, v4, v5

    const/16 v5, 0xc9

    aput-byte v8, v4, v5

    const/16 v5, 0xca

    aput-byte v8, v4, v5

    const/16 v5, 0xcb

    aput-byte v9, v4, v5

    const/16 v5, 0xcc

    aput-byte v8, v4, v5

    const/16 v5, 0xcd

    aput-byte v9, v4, v5

    const/16 v5, 0xce

    aput-byte v9, v4, v5

    const/16 v5, 0xcf

    aput-byte v11, v4, v5

    const/16 v5, 0xd0

    aput-byte v7, v4, v5

    const/16 v5, 0xd1

    aput-byte v8, v4, v5

    const/16 v5, 0xd2

    aput-byte v8, v4, v5

    const/16 v5, 0xd3

    aput-byte v9, v4, v5

    const/16 v5, 0xd4

    aput-byte v8, v4, v5

    const/16 v5, 0xd5

    aput-byte v9, v4, v5

    const/16 v5, 0xd6

    aput-byte v9, v4, v5

    const/16 v5, 0xd7

    aput-byte v11, v4, v5

    const/16 v5, 0xd8

    aput-byte v8, v4, v5

    const/16 v5, 0xd9

    aput-byte v9, v4, v5

    const/16 v5, 0xda

    aput-byte v9, v4, v5

    const/16 v5, 0xdb

    aput-byte v11, v4, v5

    const/16 v5, 0xdc

    .line 743
    aput-byte v9, v4, v5

    const/16 v5, 0xdd

    aput-byte v11, v4, v5

    const/16 v5, 0xde

    aput-byte v11, v4, v5

    const/16 v5, 0xdf

    const/4 v6, 0x7

    aput-byte v6, v4, v5

    const/16 v5, 0xe0

    aput-byte v7, v4, v5

    const/16 v5, 0xe1

    aput-byte v8, v4, v5

    const/16 v5, 0xe2

    aput-byte v8, v4, v5

    const/16 v5, 0xe3

    aput-byte v9, v4, v5

    const/16 v5, 0xe4

    aput-byte v8, v4, v5

    const/16 v5, 0xe5

    aput-byte v9, v4, v5

    const/16 v5, 0xe6

    aput-byte v9, v4, v5

    const/16 v5, 0xe7

    aput-byte v11, v4, v5

    const/16 v5, 0xe8

    aput-byte v8, v4, v5

    const/16 v5, 0xe9

    aput-byte v9, v4, v5

    const/16 v5, 0xea

    aput-byte v9, v4, v5

    const/16 v5, 0xeb

    aput-byte v11, v4, v5

    const/16 v5, 0xec

    aput-byte v9, v4, v5

    const/16 v5, 0xed

    aput-byte v11, v4, v5

    const/16 v5, 0xee

    aput-byte v11, v4, v5

    const/16 v5, 0xef

    const/4 v6, 0x7

    aput-byte v6, v4, v5

    const/16 v5, 0xf0

    aput-byte v8, v4, v5

    const/16 v5, 0xf1

    aput-byte v9, v4, v5

    const/16 v5, 0xf2

    aput-byte v9, v4, v5

    const/16 v5, 0xf3

    aput-byte v11, v4, v5

    const/16 v5, 0xf4

    aput-byte v9, v4, v5

    const/16 v5, 0xf5

    aput-byte v11, v4, v5

    const/16 v5, 0xf6

    aput-byte v11, v4, v5

    const/16 v5, 0xf7

    const/4 v6, 0x7

    aput-byte v6, v4, v5

    const/16 v5, 0xf8

    aput-byte v9, v4, v5

    const/16 v5, 0xf9

    .line 744
    aput-byte v11, v4, v5

    const/16 v5, 0xfa

    aput-byte v11, v4, v5

    const/16 v5, 0xfb

    const/4 v6, 0x7

    aput-byte v6, v4, v5

    const/16 v5, 0xfc

    aput-byte v11, v4, v5

    const/16 v5, 0xfd

    const/4 v6, 0x7

    aput-byte v6, v4, v5

    const/16 v5, 0xfe

    const/4 v6, 0x7

    aput-byte v6, v4, v5

    const/16 v5, 0xff

    const/16 v6, 0x8

    aput-byte v6, v4, v5

    .line 735
    sput-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->bitCounts:[B

    .line 21
    return-void

    .line 106
    :cond_0
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->primeLists:[[I

    aget-object v2, v4, v0

    .line 107
    .local v2, "primeList":[I
    const/4 v3, 0x1

    .line 108
    .local v3, "product":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    array-length v4, v2

    if-lt v1, v4, :cond_1

    .line 112
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->primeProducts:[I

    aput v3, v4, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 110
    :cond_1
    aget v4, v2, v1

    mul-int/2addr v3, v4

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    :array_0
    .array-data 4
        0x3
        0x5
        0x7
        0xb
        0xd
        0x11
        0x13
        0x17
    .end array-data

    .line 25
    :array_1
    .array-data 4
        0x1d
        0x1f
        0x25
        0x29
        0x2b
    .end array-data

    .line 26
    :array_2
    .array-data 4
        0x2f
        0x35
        0x3b
        0x3d
        0x43
    .end array-data

    .line 27
    :array_3
    .array-data 4
        0x47
        0x49
        0x4f
        0x53
    .end array-data

    .line 28
    :array_4
    .array-data 4
        0x59
        0x61
        0x65
        0x67
    .end array-data

    .line 30
    :array_5
    .array-data 4
        0x6b
        0x6d
        0x71
        0x7f
    .end array-data

    .line 31
    :array_6
    .array-data 4
        0x83
        0x89
        0x8b
        0x95
    .end array-data

    .line 32
    :array_7
    .array-data 4
        0x97
        0x9d
        0xa3
        0xa7
    .end array-data

    .line 33
    :array_8
    .array-data 4
        0xad
        0xb3
        0xb5
        0xbf
    .end array-data

    .line 34
    :array_9
    .array-data 4
        0xc1
        0xc5
        0xc7
        0xd3
    .end array-data

    .line 36
    :array_a
    .array-data 4
        0xdf
        0xe3
        0xe5
    .end array-data

    .line 37
    :array_b
    .array-data 4
        0xe9
        0xef
        0xf1
    .end array-data

    .line 38
    :array_c
    .array-data 4
        0xfb
        0x101
        0x107
    .end array-data

    .line 39
    :array_d
    .array-data 4
        0x10d
        0x10f
        0x115
    .end array-data

    .line 40
    :array_e
    .array-data 4
        0x119
        0x11b
        0x125
    .end array-data

    .line 42
    :array_f
    .array-data 4
        0x133
        0x137
        0x139
    .end array-data

    .line 43
    :array_10
    .array-data 4
        0x13d
        0x14b
        0x151
    .end array-data

    .line 44
    :array_11
    .array-data 4
        0x15b
        0x15d
        0x161
    .end array-data

    .line 45
    :array_12
    .array-data 4
        0x167
        0x16f
        0x175
    .end array-data

    .line 46
    :array_13
    .array-data 4
        0x17b
        0x17f
        0x185
    .end array-data

    .line 48
    :array_14
    .array-data 4
        0x18d
        0x191
        0x199
    .end array-data

    .line 49
    :array_15
    .array-data 4
        0x1a3
        0x1a5
        0x1af
    .end array-data

    .line 50
    :array_16
    .array-data 4
        0x1b1
        0x1b7
        0x1bb
    .end array-data

    .line 51
    :array_17
    .array-data 4
        0x1c1
        0x1c9
        0x1cd
    .end array-data

    .line 52
    :array_18
    .array-data 4
        0x1cf
        0x1d3
        0x1df
    .end array-data

    .line 54
    :array_19
    .array-data 4
        0x1e7
        0x1eb
        0x1f3
    .end array-data

    .line 55
    :array_1a
    .array-data 4
        0x1f7
        0x1fd
        0x209
    .end array-data

    .line 56
    :array_1b
    .array-data 4
        0x20b
        0x21d
        0x223
    .end array-data

    .line 57
    :array_1c
    .array-data 4
        0x22d
        0x233
        0x239
    .end array-data

    .line 58
    :array_1d
    .array-data 4
        0x23b
        0x241
        0x24b
    .end array-data

    .line 60
    :array_1e
    .array-data 4
        0x251
        0x257
        0x259
    .end array-data

    .line 61
    :array_1f
    .array-data 4
        0x25f
        0x265
        0x269
    .end array-data

    .line 62
    :array_20
    .array-data 4
        0x26b
        0x277
        0x281
    .end array-data

    .line 63
    :array_21
    .array-data 4
        0x283
        0x287
        0x28d
    .end array-data

    .line 64
    :array_22
    .array-data 4
        0x293
        0x295
        0x2a1
    .end array-data

    .line 66
    :array_23
    .array-data 4
        0x2a5
        0x2ab
        0x2b3
    .end array-data

    .line 67
    :array_24
    .array-data 4
        0x2bd
        0x2c5
        0x2cf
    .end array-data

    .line 68
    :array_25
    .array-data 4
        0x2d7
        0x2dd
        0x2e3
    .end array-data

    .line 69
    :array_26
    .array-data 4
        0x2e7
        0x2ef
        0x2f5
    .end array-data

    .line 70
    :array_27
    .array-data 4
        0x2f9
        0x301
        0x305
    .end array-data

    .line 72
    :array_28
    .array-data 4
        0x313
        0x31d
        0x329
    .end array-data

    .line 73
    :array_29
    .array-data 4
        0x32b
        0x335
        0x337
    .end array-data

    .line 74
    :array_2a
    .array-data 4
        0x33b
        0x33d
        0x347
    .end array-data

    .line 75
    :array_2b
    .array-data 4
        0x355
        0x359
        0x35b
    .end array-data

    .line 76
    :array_2c
    .array-data 4
        0x35f
        0x36d
        0x371
    .end array-data

    .line 78
    :array_2d
    .array-data 4
        0x373
        0x377
        0x38b
    .end array-data

    .line 79
    :array_2e
    .array-data 4
        0x38f
        0x397
        0x3a1
    .end array-data

    .line 80
    :array_2f
    .array-data 4
        0x3a9
        0x3ad
        0x3b3
    .end array-data

    .line 81
    :array_30
    .array-data 4
        0x3b9
        0x3c7
        0x3cb
    .end array-data

    .line 82
    :array_31
    .array-data 4
        0x3d1
        0x3d7
        0x3df
    .end array-data

    .line 84
    :array_32
    .array-data 4
        0x3e5
        0x3f1
        0x3f5
    .end array-data

    .line 85
    :array_33
    .array-data 4
        0x3fb
        0x3fd
        0x407
    .end array-data

    .line 478
    :array_34
    .array-data 1
        -0x1t
        0x7ft
        0x3ft
        0x1ft
        0xft
        0x7t
        0x3t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 119
    iput v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 124
    return-void
.end method

.method public constructor <init>(IILjava/util/Random;)V
    .locals 11
    .param p1, "bitLength"    # I
    .param p2, "certainty"    # I
    .param p3, "rnd"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v6, -0x1

    iput v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 119
    const/4 v6, -0x1

    iput v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 120
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 482
    const/4 v6, 0x2

    if-ge p1, v6, :cond_0

    .line 484
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "bitLength < 2"

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 487
    :cond_0
    const/4 v6, 0x1

    iput v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 488
    iput p1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 490
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    .line 492
    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v6

    if-gez v6, :cond_2

    .line 493
    sget-object v6, Lcom/verizon/vcast/apps/VzwBigInt;->TWO:Lcom/verizon/vcast/apps/VzwBigInt;

    iget-object v6, v6, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 492
    :goto_0
    iput-object v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 541
    :cond_1
    return-void

    .line 494
    :cond_2
    sget-object v6, Lcom/verizon/vcast/apps/VzwBigInt;->THREE:Lcom/verizon/vcast/apps/VzwBigInt;

    iget-object v6, v6, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    goto :goto_0

    .line 498
    :cond_3
    add-int/lit8 v6, p1, 0x7

    div-int/lit8 v3, v6, 0x8

    .line 499
    .local v3, "nBytes":I
    mul-int/lit8 v6, v3, 0x8

    sub-int v5, v6, p1

    .line 500
    .local v5, "xBits":I
    sget-object v6, Lcom/verizon/vcast/apps/VzwBigInt;->rndMask:[B

    aget-byte v1, v6, v5

    .line 502
    .local v1, "mask":B
    new-array v0, v3, [B

    .line 506
    .local v0, "b":[B
    :cond_4
    invoke-direct {p0, p3, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->nextRndBytes(Ljava/util/Random;[B)V

    .line 509
    const/4 v6, 0x0

    aget-byte v7, v0, v6

    and-int/2addr v7, v1

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 512
    const/4 v6, 0x0

    aget-byte v7, v0, v6

    const/4 v8, 0x1

    const/4 v9, 0x7

    sub-int/2addr v9, v5

    shl-int/2addr v8, v9

    int-to-byte v8, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 515
    const/4 v6, 0x1

    sub-int v6, v3, v6

    aget-byte v7, v0, v6

    or-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    .line 517
    const/4 v6, 0x1

    invoke-direct {p0, v0, v6}, Lcom/verizon/vcast/apps/VzwBigInt;->makeMagnitude([BI)[I

    move-result-object v6

    iput-object v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 518
    const/4 v6, -0x1

    iput v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 519
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 521
    const/4 v6, 0x1

    if-lt p2, v6, :cond_1

    .line 524
    invoke-virtual {p0, p2}, Lcom/verizon/vcast/apps/VzwBigInt;->isProbablePrime(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 527
    const/16 v6, 0x20

    if-le p1, v6, :cond_4

    .line 529
    const/4 v4, 0x0

    .local v4, "rep":I
    :goto_1
    const/16 v6, 0x2710

    if-ge v4, v6, :cond_4

    .line 531
    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v6

    ushr-int/lit8 v6, v6, 0x1

    const/4 v7, 0x2

    sub-int v7, p1, v7

    rem-int/2addr v6, v7

    add-int/lit8 v2, v6, 0x21

    .line 532
    .local v2, "n":I
    iget-object v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v7, v7

    ushr-int/lit8 v8, v2, 0x5

    sub-int/2addr v7, v8

    aget v8, v6, v7

    const/4 v9, 0x1

    and-int/lit8 v10, v2, 0x1f

    shl-int/2addr v9, v10

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 533
    iget-object v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget v8, v6, v7

    invoke-virtual {p3}, Ljava/util/Random;->nextInt()I

    move-result v9

    shl-int/lit8 v9, v9, 0x1

    xor-int/2addr v8, v9

    aput v8, v6, v7

    .line 534
    const-wide/16 v6, -0x1

    iput-wide v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 536
    invoke-virtual {p0, p2}, Lcom/verizon/vcast/apps/VzwBigInt;->isProbablePrime(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 529
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public constructor <init>(ILjava/util/Random;)V
    .locals 7
    .param p1, "numBits"    # I
    .param p2, "rnd"    # Ljava/util/Random;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 119
    iput v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 120
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 417
    if-gez p1, :cond_0

    .line 419
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "numBits must be non-negative"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 422
    :cond_0
    iput v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 423
    iput v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 425
    if-nez p1, :cond_1

    .line 428
    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO_MAGNITUDE:[I

    iput-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 442
    :goto_0
    return-void

    .line 432
    :cond_1
    add-int/lit8 v2, p1, 0x7

    div-int/lit8 v1, v2, 0x8

    .line 434
    .local v1, "nBytes":I
    new-array v0, v1, [B

    .line 435
    .local v0, "b":[B
    invoke-direct {p0, p2, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->nextRndBytes(Ljava/util/Random;[B)V

    .line 438
    aget-byte v2, v0, v6

    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->rndMask:[B

    mul-int/lit8 v4, v1, 0x8

    sub-int/2addr v4, p1

    aget-byte v3, v3, v4

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v6

    .line 440
    invoke-direct {p0, v0, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->makeMagnitude([BI)[I

    move-result-object v2

    iput-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 441
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v2, v2

    if-ge v2, v5, :cond_2

    move v2, v6

    :goto_1
    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1
.end method

.method public constructor <init>(I[B)V
    .locals 5
    .param p1, "sign"    # I
    .param p2, "mag"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 396
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 119
    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 398
    if-lt p1, v2, :cond_0

    if-le p1, v4, :cond_1

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Invalid sign value"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 403
    :cond_1
    if-nez p1, :cond_2

    .line 405
    iput v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 406
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_2
    invoke-direct {p0, p2, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->makeMagnitude([BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 412
    iput p1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    goto :goto_0
.end method

.method private constructor <init>(I[I)V
    .locals 5
    .param p1, "signum"    # I
    .param p2, "mag"    # [I

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 119
    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 120
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 128
    array-length v2, p2

    if-lez v2, :cond_4

    .line 130
    iput p1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget v2, p2, v0

    if-eqz v2, :cond_2

    .line 137
    :cond_0
    if-nez v0, :cond_3

    .line 139
    iput-object p2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 156
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 135
    .restart local v0    # "i":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_3
    array-length v2, p2

    sub-int/2addr v2, v0

    new-array v1, v2, [I

    .line 145
    .local v1, "newMag":[I
    array-length v2, v1

    invoke-static {p2, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iput-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 147
    array-length v2, v1

    if-nez v2, :cond_1

    .line 148
    iput v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    goto :goto_1

    .line 153
    .end local v0    # "i":I
    .end local v1    # "newMag":[I
    :cond_4
    iput-object p2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 154
    iput v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sval"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 160
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(Ljava/lang/String;I)V

    .line 161
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 9
    .param p1, "sval"    # Ljava/lang/String;
    .param p2, "rdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    const-string v8, "Zero length BigInteger"

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v5, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 119
    iput v5, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 120
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 165
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 167
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "Zero length BigInteger"

    invoke-direct {v3, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 170
    :cond_0
    const/4 v3, 0x2

    if-lt p2, v3, :cond_1

    const/16 v3, 0x24

    if-le p2, v3, :cond_2

    .line 172
    :cond_1
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "Radix out of range"

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 175
    :cond_2
    const/4 v1, 0x0

    .line 176
    .local v1, "index":I
    iput v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 178
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_4

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v7, :cond_3

    .line 182
    new-instance v3, Ljava/lang/NumberFormatException;

    const-string v4, "Zero length BigInteger"

    invoke-direct {v3, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 185
    :cond_3
    iput v5, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 186
    const/4 v1, 0x1

    .line 190
    :cond_4
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    if-eqz v3, :cond_6

    .line 195
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_7

    .line 198
    iput v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 199
    new-array v3, v6, [I

    iput-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 219
    :goto_1
    return-void

    .line 192
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_7
    sget-object v0, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 210
    .local v0, "b":Lcom/verizon/vcast/apps/VzwBigInt;
    int-to-long v3, p2

    invoke-static {v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->valueOf(J)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    .line 211
    .local v2, "r":Lcom/verizon/vcast/apps/VzwBigInt;
    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_8

    .line 218
    iget-object v3, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iput-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    goto :goto_1

    .line 214
    :cond_8
    invoke-virtual {v0, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->multiply(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->valueOf(J)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "bval"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 119
    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 120
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 224
    array-length v0, p1

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "Zero length BigInteger"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 230
    aget-byte v0, p1, v3

    if-gez v0, :cond_1

    .line 232
    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 234
    :cond_1
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    invoke-direct {p0, p1, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->makeMagnitude([BI)[I

    move-result-object v0

    iput-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 235
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 236
    iput v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 238
    :cond_2
    return-void
.end method

.method private _extEuclid(JJ[J)J
    .locals 16
    .param p1, "a"    # J
    .param p3, "b"    # J
    .param p5, "uOut"    # [J

    .prologue
    .line 1669
    const-wide/16 v6, 0x1

    .line 1670
    .local v6, "u1":J
    move-wide/from16 v8, p1

    .line 1671
    .local v8, "u3":J
    const-wide/16 v10, 0x0

    .line 1672
    .local v10, "v1":J
    move-wide/from16 v12, p3

    .line 1674
    .local v12, "v3":J
    :goto_0
    const-wide/16 v14, 0x0

    cmp-long v14, v12, v14

    if-gtz v14, :cond_0

    .line 1689
    const/4 v14, 0x0

    aput-wide v6, p5, v14

    .line 1691
    mul-long v14, v6, p1

    sub-long v14, v8, v14

    div-long v2, v14, p3

    .line 1692
    .local v2, "res":J
    const/4 v14, 0x1

    aput-wide v2, p5, v14

    .line 1694
    return-wide v8

    .line 1678
    .end local v2    # "res":J
    :cond_0
    div-long v0, v8, v12

    .line 1680
    .local v0, "q":J
    mul-long v14, v10, v0

    sub-long v4, v6, v14

    .line 1681
    .local v4, "tn":J
    move-wide v6, v10

    .line 1682
    move-wide v10, v4

    .line 1684
    mul-long v14, v12, v0

    sub-long v4, v8, v14

    .line 1685
    move-wide v8, v12

    .line 1686
    move-wide v12, v4

    goto :goto_0
.end method

.method private _modInverse(JJ)J
    .locals 11
    .param p1, "v"    # J
    .param p3, "m"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 1699
    cmp-long v0, p3, v9

    if-gez v0, :cond_0

    .line 1701
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Modulus must be positive"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1704
    :cond_0
    const/4 v0, 0x2

    new-array v5, v0, [J

    .local v5, "x":[J
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1706
    invoke-direct/range {v0 .. v5}, Lcom/verizon/vcast/apps/VzwBigInt;->_extEuclid(JJ[J)J

    move-result-wide v6

    .line 1708
    .local v6, "gcd":J
    const-wide/16 v0, 0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_1

    .line 1710
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Numbers not relatively prime."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1713
    :cond_1
    aget-wide v0, v5, v8

    cmp-long v0, v0, v9

    if-gez v0, :cond_2

    .line 1715
    aget-wide v0, v5, v8

    add-long/2addr v0, p3

    aput-wide v0, v5, v8

    .line 1718
    :cond_2
    aget-wide v0, v5, v8

    return-wide v0
.end method

.method private add([I[I)[I
    .locals 13
    .param p1, "a"    # [I
    .param p2, "b"    # [I

    .prologue
    const/16 v12, 0x20

    const/4 v7, 0x1

    const-wide v10, 0xffffffffL

    .line 553
    array-length v6, p1

    sub-int v2, v6, v7

    .line 554
    .local v2, "tI":I
    array-length v6, p2

    sub-int v4, v6, v7

    .line 555
    .local v4, "vI":I
    const-wide/16 v0, 0x0

    .local v0, "m":J
    move v5, v4

    .end local v4    # "vI":I
    .local v5, "vI":I
    move v3, v2

    .line 557
    .end local v2    # "tI":I
    .local v3, "tI":I
    :goto_0
    if-gez v5, :cond_1

    .line 564
    :goto_1
    if-ltz v3, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_2

    .line 571
    :cond_0
    return-object p1

    .line 559
    :cond_1
    aget v6, p1, v3

    int-to-long v6, v6

    and-long/2addr v6, v10

    add-int/lit8 v4, v5, -0x1

    .end local v5    # "vI":I
    .restart local v4    # "vI":I
    aget v8, p2, v5

    int-to-long v8, v8

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v0, v6

    .line 560
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "tI":I
    .restart local v2    # "tI":I
    long-to-int v6, v0

    aput v6, p1, v3

    .line 561
    ushr-long/2addr v0, v12

    move v5, v4

    .end local v4    # "vI":I
    .restart local v5    # "vI":I
    move v3, v2

    .end local v2    # "tI":I
    .restart local v3    # "tI":I
    goto :goto_0

    .line 566
    :cond_2
    aget v6, p1, v3

    int-to-long v6, v6

    and-long/2addr v6, v10

    add-long/2addr v0, v6

    .line 567
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "tI":I
    .restart local v2    # "tI":I
    long-to-int v6, v0

    aput v6, p1, v3

    .line 568
    ushr-long/2addr v0, v12

    move v3, v2

    .end local v2    # "tI":I
    .restart local v3    # "tI":I
    goto :goto_1
.end method

.method private addToMagnitude([I)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 10
    .param p1, "magToAdd"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 620
    iget-object v6, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v6, v6

    array-length v7, p1

    if-ge v6, v7, :cond_1

    .line 622
    move-object v0, p1

    .line 623
    .local v0, "big":[I
    iget-object v5, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 632
    .local v5, "small":[I
    :goto_0
    const v3, 0x7fffffff

    .line 633
    .local v3, "limit":I
    array-length v6, v0

    array-length v7, v5

    if-ne v6, v7, :cond_0

    .line 634
    aget v6, v5, v8

    sub-int/2addr v3, v6

    .line 636
    :cond_0
    aget v6, v0, v8

    const/high16 v7, -0x80000000

    xor-int/2addr v6, v7

    if-lt v6, v3, :cond_2

    move v4, v9

    .line 637
    .local v4, "possibleOverflow":Z
    :goto_1
    if-eqz v4, :cond_3

    move v2, v9

    .line 639
    .local v2, "extra":I
    :goto_2
    array-length v6, v0

    add-int/2addr v6, v2

    new-array v1, v6, [I

    .line 640
    .local v1, "bigCopy":[I
    array-length v6, v0

    invoke-static {v0, v8, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    invoke-direct {p0, v1, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->add([I[I)[I

    move-result-object v1

    .line 644
    new-instance v6, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    invoke-direct {v6, v7, v1}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    return-object v6

    .line 627
    .end local v0    # "big":[I
    .end local v1    # "bigCopy":[I
    .end local v2    # "extra":I
    .end local v3    # "limit":I
    .end local v4    # "possibleOverflow":Z
    .end local v5    # "small":[I
    :cond_1
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 628
    .restart local v0    # "big":[I
    move-object v5, p1

    .restart local v5    # "small":[I
    goto :goto_0

    .restart local v3    # "limit":I
    :cond_2
    move v4, v8

    .line 636
    goto :goto_1

    .restart local v4    # "possibleOverflow":Z
    :cond_3
    move v2, v8

    .line 637
    goto :goto_2
.end method

.method static bitLen(I)I
    .locals 6
    .param p0, "w"    # I

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 815
    const v0, 0x8000

    if-ge p0, v0, :cond_10

    const/16 v0, 0x80

    if-ge p0, v0, :cond_8

    .line 816
    if-ge p0, v4, :cond_4

    if-ge p0, v2, :cond_2

    .line 817
    if-ge p0, v1, :cond_1

    if-gez p0, :cond_0

    const/16 v0, 0x20

    .line 815
    :goto_0
    return v0

    .line 817
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 818
    :cond_2
    if-ge p0, v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/16 v0, 0x20

    if-ge p0, v0, :cond_6

    .line 819
    if-ge p0, v5, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    .line 820
    :cond_6
    const/16 v0, 0x40

    if-ge p0, v0, :cond_7

    const/4 v0, 0x6

    goto :goto_0

    :cond_7
    const/4 v0, 0x7

    goto :goto_0

    .line 821
    :cond_8
    const/16 v0, 0x800

    if-ge p0, v0, :cond_c

    .line 822
    const/16 v0, 0x200

    if-ge p0, v0, :cond_a

    const/16 v0, 0x100

    if-ge p0, v0, :cond_9

    move v0, v4

    goto :goto_0

    :cond_9
    const/16 v0, 0x9

    goto :goto_0

    :cond_a
    const/16 v0, 0x400

    if-ge p0, v0, :cond_b

    const/16 v0, 0xa

    goto :goto_0

    :cond_b
    const/16 v0, 0xb

    goto :goto_0

    .line 823
    :cond_c
    const/16 v0, 0x2000

    if-ge p0, v0, :cond_e

    const/16 v0, 0x1000

    if-ge p0, v0, :cond_d

    const/16 v0, 0xc

    goto :goto_0

    :cond_d
    const/16 v0, 0xd

    goto :goto_0

    :cond_e
    const/16 v0, 0x4000

    if-ge p0, v0, :cond_f

    const/16 v0, 0xe

    goto :goto_0

    :cond_f
    const/16 v0, 0xf

    goto :goto_0

    :cond_10
    const/high16 v0, 0x800000

    if-ge p0, v0, :cond_18

    const/high16 v0, 0x80000

    if-ge p0, v0, :cond_14

    .line 824
    const/high16 v0, 0x20000

    if-ge p0, v0, :cond_12

    const/high16 v0, 0x10000

    if-ge p0, v0, :cond_11

    move v0, v5

    goto :goto_0

    :cond_11
    const/16 v0, 0x11

    goto :goto_0

    :cond_12
    const/high16 v0, 0x40000

    if-ge p0, v0, :cond_13

    const/16 v0, 0x12

    goto :goto_0

    :cond_13
    const/16 v0, 0x13

    goto :goto_0

    .line 825
    :cond_14
    const/high16 v0, 0x200000

    if-ge p0, v0, :cond_16

    const/high16 v0, 0x100000

    if-ge p0, v0, :cond_15

    const/16 v0, 0x14

    goto :goto_0

    :cond_15
    const/16 v0, 0x15

    goto :goto_0

    :cond_16
    const/high16 v0, 0x400000

    if-ge p0, v0, :cond_17

    const/16 v0, 0x16

    goto/16 :goto_0

    :cond_17
    const/16 v0, 0x17

    goto/16 :goto_0

    :cond_18
    const/high16 v0, 0x8000000

    if-ge p0, v0, :cond_1c

    .line 826
    const/high16 v0, 0x2000000

    if-ge p0, v0, :cond_1a

    const/high16 v0, 0x1000000

    if-ge p0, v0, :cond_19

    const/16 v0, 0x18

    goto/16 :goto_0

    :cond_19
    const/16 v0, 0x19

    goto/16 :goto_0

    :cond_1a
    const/high16 v0, 0x4000000

    if-ge p0, v0, :cond_1b

    const/16 v0, 0x1a

    goto/16 :goto_0

    :cond_1b
    const/16 v0, 0x1b

    goto/16 :goto_0

    .line 827
    :cond_1c
    const/high16 v0, 0x20000000

    if-ge p0, v0, :cond_1e

    const/high16 v0, 0x10000000

    if-ge p0, v0, :cond_1d

    const/16 v0, 0x1c

    goto/16 :goto_0

    :cond_1d
    const/16 v0, 0x1d

    goto/16 :goto_0

    :cond_1e
    const/high16 v0, 0x40000000    # 2.0f

    if-ge p0, v0, :cond_1f

    const/16 v0, 0x1e

    goto/16 :goto_0

    :cond_1f
    const/16 v0, 0x1f

    goto/16 :goto_0
.end method

.method private bitLength(I[I)I
    .locals 8
    .param p1, "indx"    # I
    .param p2, "mag"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 750
    array-length v3, p2

    if-nez v3, :cond_1

    move v3, v6

    .line 789
    :goto_0
    return v3

    .line 758
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 756
    :cond_1
    array-length v3, p2

    if-eq p1, v3, :cond_2

    aget v3, p2, p1

    if-eqz v3, :cond_0

    .line 761
    :cond_2
    array-length v3, p2

    if-ne p1, v3, :cond_3

    move v3, v6

    .line 763
    goto :goto_0

    .line 767
    :cond_3
    array-length v3, p2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v7

    mul-int/lit8 v0, v3, 0x20

    .line 770
    .local v0, "bitLength":I
    aget v3, p2, p1

    invoke-static {v3}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLen(I)I

    move-result v3

    add-int/2addr v0, v3

    .line 772
    iget v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v3, :cond_5

    .line 775
    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->bitCounts:[B

    aget v4, p2, p1

    and-int/lit16 v4, v4, 0xff

    aget-byte v3, v3, v4

    .line 776
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->bitCounts:[B

    aget v5, p2, p1

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    .line 775
    add-int/2addr v3, v4

    .line 777
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->bitCounts:[B

    aget v5, p2, p1

    shr-int/lit8 v5, v5, 0x10

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    .line 775
    add-int/2addr v3, v4

    .line 778
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->bitCounts:[B

    aget v5, p2, p1

    shr-int/lit8 v5, v5, 0x18

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    .line 775
    add-int/2addr v3, v4

    if-ne v3, v7, :cond_6

    move v2, v7

    .line 780
    .local v2, "pow2":Z
    :goto_1
    add-int/lit8 v1, p1, 0x1

    .local v1, "i":I
    :goto_2
    array-length v3, p2

    if-ge v1, v3, :cond_4

    if-nez v2, :cond_7

    .line 785
    :cond_4
    if-eqz v2, :cond_9

    move v3, v7

    :goto_3
    sub-int/2addr v0, v3

    .end local v1    # "i":I
    .end local v2    # "pow2":Z
    :cond_5
    move v3, v0

    .line 789
    goto :goto_0

    :cond_6
    move v2, v6

    .line 775
    goto :goto_1

    .line 782
    .restart local v1    # "i":I
    .restart local v2    # "pow2":Z
    :cond_7
    aget v3, p2, v1

    if-nez v3, :cond_8

    move v2, v7

    .line 780
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    move v2, v6

    .line 782
    goto :goto_4

    :cond_9
    move v3, v6

    .line 785
    goto :goto_3
.end method

.method private compareNoLeadingZeroes(I[II[I)I
    .locals 10
    .param p1, "xIndx"    # I
    .param p2, "x"    # [I
    .param p3, "yIndx"    # I
    .param p4, "y"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/high16 v7, -0x80000000

    .line 861
    array-length v5, p2

    array-length v6, p4

    sub-int/2addr v5, v6

    sub-int v6, p1, p3

    sub-int v0, v5, v6

    .line 863
    .local v0, "diff":I
    if-eqz v0, :cond_4

    .line 865
    if-gez v0, :cond_0

    move v5, v8

    .line 881
    :goto_0
    return v5

    :cond_0
    move v5, v9

    .line 865
    goto :goto_0

    .line 872
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .end local p1    # "xIndx":I
    .local v3, "xIndx":I
    aget v1, p2, p1

    .line 873
    .local v1, "v1":I
    add-int/lit8 v4, p3, 0x1

    .end local p3    # "yIndx":I
    .local v4, "yIndx":I
    aget v2, p4, p3

    .line 875
    .local v2, "v2":I
    if-eq v1, v2, :cond_3

    .line 877
    xor-int v5, v1, v7

    xor-int v6, v2, v7

    if-ge v5, v6, :cond_2

    move v5, v8

    :goto_1
    move p3, v4

    .end local v4    # "yIndx":I
    .restart local p3    # "yIndx":I
    move p1, v3

    .end local v3    # "xIndx":I
    .restart local p1    # "xIndx":I
    goto :goto_0

    .end local p1    # "xIndx":I
    .end local p3    # "yIndx":I
    .restart local v3    # "xIndx":I
    .restart local v4    # "yIndx":I
    :cond_2
    move v5, v9

    goto :goto_1

    :cond_3
    move p3, v4

    .end local v4    # "yIndx":I
    .restart local p3    # "yIndx":I
    move p1, v3

    .line 870
    .end local v1    # "v1":I
    .end local v2    # "v2":I
    .end local v3    # "xIndx":I
    .restart local p1    # "xIndx":I
    :cond_4
    array-length v5, p2

    if-lt p1, v5, :cond_1

    .line 881
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private compareTo(I[II[I)I
    .locals 1
    .param p1, "xIndx"    # I
    .param p2, "x"    # [I
    .param p3, "yIndx"    # I
    .param p4, "y"    # [I

    .prologue
    .line 846
    :goto_0
    array-length v0, p2

    if-eq p1, v0, :cond_0

    aget v0, p2, p1

    if-eqz v0, :cond_2

    .line 851
    :cond_0
    :goto_1
    array-length v0, p4

    if-eq p3, v0, :cond_1

    aget v0, p4, p3

    if-eqz v0, :cond_3

    .line 856
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/verizon/vcast/apps/VzwBigInt;->compareNoLeadingZeroes(I[II[I)I

    move-result v0

    return v0

    .line 848
    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 853
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private createResult(I)[I
    .locals 5
    .param p1, "wordNum"    # I

    .prologue
    .line 2572
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    add-int/lit8 v2, p1, 0x1

    if-ge v1, v2, :cond_0

    .line 2574
    add-int/lit8 v1, p1, 0x1

    new-array v0, v1, [I

    .line 2581
    .local v0, "result":[I
    :goto_0
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    const/4 v2, 0x0

    array-length v3, v0

    iget-object v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v4, v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2582
    return-object v0

    .line 2578
    .end local v0    # "result":[I
    :cond_0
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    new-array v0, v1, [I

    .restart local v0    # "result":[I
    goto :goto_0
.end method

.method private divide([I[I)[I
    .locals 20
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .prologue
    .line 902
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(I[II[I)I

    move-result v15

    .line 905
    .local v15, "xyCmp":I
    if-lez v15, :cond_a

    .line 909
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength(I[I)I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength(I[I)I

    move-result v17

    sub-int v13, v16, v17

    .line 911
    .local v13, "shift":I
    const/16 v16, 0x1

    move v0, v13

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    .line 913
    const/16 v16, 0x1

    sub-int v16, v13, v16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftLeft([II)[I

    move-result-object v5

    .line 914
    .local v5, "c":[I
    sget-object v16, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftLeft([II)[I

    move-result-object v8

    .line 915
    .local v8, "count":[I
    rem-int/lit8 v16, v13, 0x20

    if-nez v16, :cond_0

    .line 918
    div-int/lit8 v16, v13, 0x20

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v9, v0

    .line 919
    .local v9, "countSpecial":[I
    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v0, v9

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object v0, v8

    move/from16 v1, v16

    move-object v2, v9

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 920
    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v9, v16

    .line 921
    move-object v8, v9

    .line 933
    .end local v9    # "countSpecial":[I
    :cond_0
    :goto_0
    move-object v0, v8

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v11, v0

    .line 935
    .local v11, "iCount":[I
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, v17

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(I[II[I)[I

    .line 936
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v0, v8

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v8

    move/from16 v1, v16

    move-object v2, v11

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    const/4 v14, 0x0

    .line 939
    .local v14, "xStart":I
    const/4 v6, 0x0

    .line 940
    .local v6, "cStart":I
    const/4 v12, 0x0

    .line 944
    .local v12, "iCountStart":I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    move v3, v6

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(I[II[I)I

    move-result v7

    .line 946
    .local v7, "cmp":I
    :goto_2
    if-gez v7, :cond_5

    .line 953
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    move/from16 v3, v16

    move-object/from16 v4, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(I[II[I)I

    move-result v15

    .line 955
    if-lez v15, :cond_7

    .line 957
    aget v16, p1, v14

    if-nez v16, :cond_2

    .line 959
    add-int/lit8 v14, v14, 0x1

    .line 962
    :cond_2
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength(I[I)I

    move-result v16

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength(I[I)I

    move-result v17

    sub-int v13, v16, v17

    .line 964
    if-nez v13, :cond_6

    .line 966
    invoke-static {v6, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftRightOneInPlace(I[I)V

    .line 967
    invoke-static {v12, v11}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftRightOneInPlace(I[I)V

    .line 975
    :goto_3
    aget v16, v5, v6

    if-nez v16, :cond_3

    .line 977
    add-int/lit8 v6, v6, 0x1

    .line 980
    :cond_3
    aget v16, v11, v12

    if-nez v16, :cond_1

    .line 982
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 926
    .end local v5    # "c":[I
    .end local v6    # "cStart":I
    .end local v7    # "cmp":I
    .end local v8    # "count":[I
    .end local v11    # "iCount":[I
    .end local v12    # "iCountStart":I
    .end local v14    # "xStart":I
    :cond_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v5, v0

    .line 927
    .restart local v5    # "c":[I
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v8, v0

    .line 929
    .restart local v8    # "count":[I
    const/16 v16, 0x0

    move-object v0, v5

    array-length v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move-object v2, v5

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 930
    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v17, v8, v16

    goto/16 :goto_0

    .line 948
    .restart local v6    # "cStart":I
    .restart local v7    # "cmp":I
    .restart local v11    # "iCount":[I
    .restart local v12    # "iCountStart":I
    .restart local v14    # "xStart":I
    :cond_5
    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    move v3, v6

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(I[II[I)[I

    .line 949
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->add([I[I)[I

    .line 950
    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    move v3, v6

    move-object v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(I[II[I)I

    move-result v7

    goto/16 :goto_2

    .line 971
    :cond_6
    invoke-static {v6, v5, v13}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftRightInPlace(I[II)V

    .line 972
    invoke-static {v12, v11, v13}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftRightInPlace(I[II)V

    goto :goto_3

    .line 985
    :cond_7
    if-nez v15, :cond_8

    .line 987
    sget-object v16, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->add([I[I)[I

    .line 988
    move v10, v14

    .local v10, "i":I
    :goto_4
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move v0, v10

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 1013
    .end local v5    # "c":[I
    .end local v6    # "cStart":I
    .end local v7    # "cmp":I
    .end local v10    # "i":I
    .end local v11    # "iCount":[I
    .end local v12    # "iCountStart":I
    .end local v13    # "shift":I
    .end local v14    # "xStart":I
    :cond_8
    :goto_5
    return-object v8

    .line 990
    .restart local v5    # "c":[I
    .restart local v6    # "cStart":I
    .restart local v7    # "cmp":I
    .restart local v10    # "i":I
    .restart local v11    # "iCount":[I
    .restart local v12    # "iCountStart":I
    .restart local v13    # "shift":I
    .restart local v14    # "xStart":I
    :cond_9
    const/16 v16, 0x0

    aput v16, p1, v10

    .line 988
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1000
    .end local v5    # "c":[I
    .end local v6    # "cStart":I
    .end local v7    # "cmp":I
    .end local v8    # "count":[I
    .end local v10    # "i":I
    .end local v11    # "iCount":[I
    .end local v12    # "iCountStart":I
    .end local v13    # "shift":I
    .end local v14    # "xStart":I
    :cond_a
    if-nez v15, :cond_b

    .line 1002
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v8, v0

    .line 1004
    .restart local v8    # "count":[I
    const/16 v16, 0x0

    const/16 v17, 0x1

    aput v17, v8, v16

    goto :goto_5

    .line 1008
    .end local v8    # "count":[I
    :cond_b
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v8, v0

    .line 1010
    .restart local v8    # "count":[I
    const/16 v16, 0x0

    const/16 v17, 0x0

    aput v17, v8, v16

    goto :goto_5
.end method

.method private static extEuclid(Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 8
    .param p0, "a"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .param p1, "b"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .param p2, "u1Out"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .param p3, "u2Out"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 1337
    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 1338
    .local v3, "u1":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object v4, p0

    .line 1339
    .local v4, "u3":Lcom/verizon/vcast/apps/VzwBigInt;
    sget-object v5, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 1340
    .local v5, "v1":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object v6, p1

    .line 1342
    .local v6, "v3":Lcom/verizon/vcast/apps/VzwBigInt;
    :goto_0
    iget v7, v6, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gtz v7, :cond_2

    .line 1354
    if-eqz p2, :cond_0

    .line 1356
    iget v7, v3, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iput v7, p2, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 1357
    iget-object v7, v3, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iput-object v7, p2, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 1360
    :cond_0
    if-eqz p3, :cond_1

    .line 1362
    invoke-virtual {v3, p0}, Lcom/verizon/vcast/apps/VzwBigInt;->multiply(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->divide(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    .line 1363
    .local v1, "res":Lcom/verizon/vcast/apps/VzwBigInt;
    iget v7, v1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iput v7, p3, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    .line 1364
    iget-object v7, v1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iput-object v7, p3, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    .line 1367
    .end local v1    # "res":Lcom/verizon/vcast/apps/VzwBigInt;
    :cond_1
    return-object v4

    .line 1344
    :cond_2
    invoke-virtual {v4, v6}, Lcom/verizon/vcast/apps/VzwBigInt;->divideAndRemainder(Lcom/verizon/vcast/apps/VzwBigInt;)[Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    .line 1346
    .local v0, "q":[Lcom/verizon/vcast/apps/VzwBigInt;
    const/4 v7, 0x0

    aget-object v7, v0, v7

    invoke-virtual {v5, v7}, Lcom/verizon/vcast/apps/VzwBigInt;->multiply(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    .line 1347
    .local v2, "tn":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object v3, v5

    .line 1348
    move-object v5, v2

    .line 1350
    move-object v4, v6

    .line 1351
    const/4 v7, 0x1

    aget-object v6, v0, v7

    goto :goto_0
.end method

.method private flipExistingBit(I)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 5
    .param p1, "n"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2562
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 2563
    .local v0, "mag":[I
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2564
    array-length v1, v0

    sub-int/2addr v1, v4

    ushr-int/lit8 v2, p1, 0x5

    sub-int/2addr v1, v2

    aget v2, v0, v1

    and-int/lit8 v3, p1, 0x1f

    shl-int v3, v4, v3

    xor-int/2addr v2, v3

    aput v2, v0, v1

    .line 2566
    new-instance v1, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    invoke-direct {v1, v2, v0}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    return-object v1
.end method

.method private getMQuote()J
    .locals 7

    .prologue
    const-wide/16 v5, -0x1

    const/4 v4, 0x1

    .line 1726
    iget-wide v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    cmp-long v2, v2, v5

    if-eqz v2, :cond_0

    .line 1728
    iget-wide v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 1743
    :goto_0
    return-wide v2

    .line 1730
    :cond_0
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    sub-int/2addr v3, v4

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    move-wide v2, v5

    .line 1732
    goto :goto_0

    .line 1740
    :cond_1
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    sub-int/2addr v3, v4

    aget v2, v2, v3

    xor-int/lit8 v2, v2, -0x1

    or-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long v0, v2, v4

    .line 1741
    .local v0, "v":J
    const-wide v2, 0x100000000L

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->_modInverse(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    .line 1743
    iget-wide v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->mQuote:J

    goto :goto_0
.end method

.method private inc([I)[I
    .locals 11
    .param p1, "a"    # [I

    .prologue
    const-wide v9, 0xffffffffL

    const/16 v8, 0x20

    .line 579
    array-length v4, p1

    const/4 v5, 0x1

    sub-int v2, v4, v5

    .line 580
    .local v2, "tI":I
    const-wide/16 v0, 0x0

    .line 582
    .local v0, "m":J
    aget v4, p1, v2

    int-to-long v4, v4

    and-long/2addr v4, v9

    const-wide/16 v6, 0x1

    add-long v0, v4, v6

    .line 583
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "tI":I
    .local v3, "tI":I
    long-to-int v4, v0

    aput v4, p1, v2

    .line 584
    ushr-long/2addr v0, v8

    .line 586
    :goto_0
    if-ltz v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    .line 593
    :cond_0
    return-object p1

    .line 588
    :cond_1
    aget v4, p1, v3

    int-to-long v4, v4

    and-long/2addr v4, v9

    add-long/2addr v0, v4

    .line 589
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "tI":I
    .restart local v2    # "tI":I
    long-to-int v4, v0

    aput v4, p1, v3

    .line 590
    ushr-long/2addr v0, v8

    move v3, v2

    .end local v2    # "tI":I
    .restart local v3    # "tI":I
    goto :goto_0
.end method

.method private lastNBits(I)[I
    .locals 6
    .param p1, "n"    # I

    .prologue
    const/4 v5, 0x0

    .line 2040
    const/4 v3, 0x1

    if-ge p1, v3, :cond_0

    .line 2042
    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO_MAGNITUDE:[I

    .line 2057
    :goto_0
    return-object v3

    .line 2045
    :cond_0
    add-int/lit8 v3, p1, 0x1f

    div-int/lit8 v1, v3, 0x20

    .line 2046
    .local v1, "numWords":I
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2047
    new-array v2, v1, [I

    .line 2049
    .local v2, "result":[I
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2051
    rem-int/lit8 v0, p1, 0x20

    .line 2052
    .local v0, "hiBits":I
    if-eqz v0, :cond_1

    .line 2054
    aget v3, v2, v5

    const/4 v4, -0x1

    shl-int/2addr v4, v0

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    aput v3, v2, v5

    :cond_1
    move-object v3, v2

    .line 2057
    goto :goto_0
.end method

.method private makeMagnitude([BI)[I
    .locals 13
    .param p1, "bval"    # [B
    .param p2, "sign"    # I

    .prologue
    .line 252
    if-ltz p2, :cond_6

    .line 258
    const/4 v1, 0x0

    .local v1, "firstSignificant":I
    :goto_0
    array-length v10, p1

    if-ge v1, v10, :cond_0

    .line 259
    aget-byte v10, p1, v1

    if-eqz v10, :cond_1

    .line 261
    :cond_0
    array-length v10, p1

    if-lt v1, v10, :cond_2

    .line 263
    const/4 v10, 0x0

    new-array v10, v10, [I

    .line 392
    :goto_1
    return-object v10

    .line 259
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 266
    :cond_2
    array-length v10, p1

    sub-int/2addr v10, v1

    add-int/lit8 v10, v10, 0x3

    div-int/lit8 v7, v10, 0x4

    .line 267
    .local v7, "nInts":I
    array-length v10, p1

    sub-int/2addr v10, v1

    rem-int/lit8 v0, v10, 0x4

    .line 268
    .local v0, "bCount":I
    if-nez v0, :cond_3

    .line 269
    const/4 v0, 0x4

    .line 274
    :cond_3
    new-array v4, v7, [I

    .line 275
    .local v4, "mag":[I
    const/4 v9, 0x0

    .line 276
    .local v9, "v":I
    const/4 v5, 0x0

    .line 277
    .local v5, "magnitudeIndex":I
    move v2, v1

    .local v2, "i":I
    :goto_2
    array-length v10, p1

    if-lt v2, v10, :cond_4

    move-object v10, v4

    .line 301
    goto :goto_1

    .line 281
    :cond_4
    shl-int/lit8 v9, v9, 0x8

    .line 282
    aget-byte v10, p1, v2

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 283
    add-int/lit8 v0, v0, -0x1

    .line 284
    if-gtz v0, :cond_5

    .line 286
    aput v9, v4, v5

    .line 287
    add-int/lit8 v5, v5, 0x1

    .line 288
    const/4 v0, 0x4

    .line 289
    const/4 v9, 0x0

    .line 277
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 310
    .end local v0    # "bCount":I
    .end local v1    # "firstSignificant":I
    .end local v2    # "i":I
    .end local v4    # "mag":[I
    .end local v5    # "magnitudeIndex":I
    .end local v7    # "nInts":I
    .end local v9    # "v":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "firstSignificant":I
    :goto_3
    array-length v10, p1

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    if-ge v1, v10, :cond_7

    .line 311
    aget-byte v10, p1, v1

    const/16 v11, 0xff

    if-eq v10, v11, :cond_d

    .line 313
    :cond_7
    array-length v6, p1

    .line 314
    .local v6, "nBytes":I
    const/4 v3, 0x0

    .line 317
    .local v3, "leadingByte":Z
    aget-byte v10, p1, v1

    const/16 v11, 0x80

    if-ne v10, v11, :cond_9

    .line 318
    add-int/lit8 v2, v1, 0x1

    .restart local v2    # "i":I
    :goto_4
    array-length v10, p1

    if-lt v2, v10, :cond_e

    .line 323
    :cond_8
    array-length v10, p1

    if-ne v2, v10, :cond_9

    .line 324
    add-int/lit8 v6, v6, 0x1

    .line 325
    const/4 v3, 0x1

    .line 329
    .end local v2    # "i":I
    :cond_9
    sub-int v10, v6, v1

    add-int/lit8 v10, v10, 0x3

    div-int/lit8 v7, v10, 0x4

    .line 330
    .restart local v7    # "nInts":I
    sub-int v10, v6, v1

    rem-int/lit8 v0, v10, 0x4

    .line 331
    .restart local v0    # "bCount":I
    if-nez v0, :cond_a

    .line 332
    const/4 v0, 0x4

    .line 339
    :cond_a
    new-array v4, v7, [I

    .line 340
    .restart local v4    # "mag":[I
    const/4 v9, 0x0

    .line 341
    .restart local v9    # "v":I
    const/4 v5, 0x0

    .line 344
    .restart local v5    # "magnitudeIndex":I
    if-eqz v3, :cond_b

    .line 346
    add-int/lit8 v0, v0, -0x1

    .line 349
    if-gtz v0, :cond_b

    .line 351
    add-int/lit8 v5, v5, 0x1

    .line 352
    const/4 v0, 0x4

    .line 357
    :cond_b
    move v2, v1

    .restart local v2    # "i":I
    :goto_5
    array-length v10, p1

    if-lt v2, v10, :cond_f

    .line 382
    invoke-direct {p0, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->inc([I)[I

    move-result-object v4

    .line 385
    const/4 v10, 0x0

    aget v10, v4, v10

    if-nez v10, :cond_c

    .line 387
    array-length v10, v4

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    new-array v8, v10, [I

    .line 388
    .local v8, "tmp":[I
    const/4 v10, 0x1

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v4, v10, v8, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    move-object v4, v8

    .end local v8    # "tmp":[I
    :cond_c
    move-object v10, v4

    .line 392
    goto/16 :goto_1

    .line 311
    .end local v0    # "bCount":I
    .end local v2    # "i":I
    .end local v3    # "leadingByte":Z
    .end local v4    # "mag":[I
    .end local v5    # "magnitudeIndex":I
    .end local v6    # "nBytes":I
    .end local v7    # "nInts":I
    .end local v9    # "v":I
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 319
    .restart local v2    # "i":I
    .restart local v3    # "leadingByte":Z
    .restart local v6    # "nBytes":I
    :cond_e
    aget-byte v10, p1, v2

    if-nez v10, :cond_8

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 361
    .restart local v0    # "bCount":I
    .restart local v4    # "mag":[I
    .restart local v5    # "magnitudeIndex":I
    .restart local v7    # "nInts":I
    .restart local v9    # "v":I
    :cond_f
    shl-int/lit8 v9, v9, 0x8

    .line 362
    aget-byte v10, p1, v2

    xor-int/lit8 v10, v10, -0x1

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    .line 363
    add-int/lit8 v0, v0, -0x1

    .line 364
    if-gtz v0, :cond_10

    .line 366
    aput v9, v4, v5

    .line 367
    add-int/lit8 v5, v5, 0x1

    .line 368
    const/4 v0, 0x4

    .line 369
    const/4 v9, 0x0

    .line 357
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private multiply([I[I[I)[I
    .locals 14
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    .line 1625
    move-object/from16 v0, p3

    array-length v0, v0

    move v3, v0

    .line 1627
    .local v3, "i":I
    const/4 v8, 0x1

    if-ge v3, v8, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return-object p1

    .line 1632
    :cond_1
    array-length v8, p1

    move-object/from16 v0, p2

    array-length v0, v0

    move v9, v0

    sub-int v7, v8, v9

    .line 1636
    .local v7, "xBase":I
    :goto_1
    add-int/lit8 v3, v3, -0x1

    aget v8, p3, v3

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long v1, v8, v10

    .line 1637
    .local v1, "a":J
    const-wide/16 v5, 0x0

    .line 1639
    .local v5, "val":J
    move-object/from16 v0, p2

    array-length v0, v0

    move v8, v0

    const/4 v9, 0x1

    sub-int v4, v8, v9

    .local v4, "j":I
    :goto_2
    if-gez v4, :cond_2

    .line 1648
    add-int/lit8 v7, v7, -0x1

    .line 1650
    const/4 v8, 0x1

    if-ge v3, v8, :cond_3

    .line 1652
    if-ltz v7, :cond_0

    .line 1654
    long-to-int v8, v5

    aput v8, p1, v7

    goto :goto_0

    .line 1641
    :cond_2
    aget v8, p2, v4

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    mul-long/2addr v8, v1

    add-int v10, v7, v4

    aget v10, p1, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    add-long/2addr v5, v8

    .line 1643
    add-int v8, v7, v4

    long-to-int v9, v5

    aput v9, p1, v8

    .line 1645
    const/16 v8, 0x20

    ushr-long/2addr v5, v8

    .line 1639
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1659
    :cond_3
    long-to-int v8, v5

    aput v8, p1, v7

    goto :goto_1
.end method

.method private multiplyMonty([I[I[I[IJ)V
    .locals 29
    .param p1, "a"    # [I
    .param p2, "x"    # [I
    .param p3, "y"    # [I
    .param p4, "m"    # [I
    .param p5, "mQuote"    # J

    .prologue
    .line 1762
    move-object/from16 v0, p4

    array-length v0, v0

    move v9, v0

    .line 1763
    .local v9, "n":I
    const/16 v23, 0x1

    sub-int v10, v9, v23

    .line 1764
    .local v10, "nMinus1":I
    const/16 v23, 0x1

    sub-int v23, v9, v23

    aget v23, p3, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v21, v23, v25

    .line 1767
    .local v21, "y_0":J
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-le v7, v9, :cond_1

    .line 1773
    move v7, v9

    :goto_1
    if-gtz v7, :cond_2

    .line 1800
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, p1

    move/from16 v3, v24

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(I[II[I)I

    move-result v23

    if-ltz v23, :cond_0

    .line 1802
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, p1

    move/from16 v3, v24

    move-object/from16 v4, p4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(I[II[I)[I

    .line 1806
    :cond_0
    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v2, p2

    move/from16 v3, v24

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1807
    return-void

    .line 1769
    :cond_1
    const/16 v23, 0x0

    aput v23, p1, v7

    .line 1767
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1776
    :cond_2
    const/16 v23, 0x1

    sub-int v23, v7, v23

    aget v23, p2, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v19, v23, v25

    .line 1779
    .local v19, "x_i":J
    aget v23, p1, v9

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v23, v23, v25

    mul-long v25, v19, v21

    const-wide v27, 0xffffffffL

    and-long v25, v25, v27

    add-long v23, v23, v25

    const-wide v25, 0xffffffffL

    and-long v23, v23, v25

    mul-long v23, v23, p5

    const-wide v25, 0xffffffffL

    and-long v17, v23, v25

    .line 1782
    .local v17, "u":J
    mul-long v11, v19, v21

    .line 1783
    .local v11, "prod1":J
    const/16 v23, 0x1

    sub-int v23, v9, v23

    aget v23, p4, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v23, v23, v25

    mul-long v13, v17, v23

    .line 1784
    .local v13, "prod2":J
    aget v23, p1, v9

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v23, v23, v25

    const-wide v25, 0xffffffffL

    and-long v25, v25, v11

    add-long v23, v23, v25

    const-wide v25, 0xffffffffL

    and-long v25, v25, v13

    add-long v15, v23, v25

    .line 1785
    .local v15, "tmp":J
    const/16 v23, 0x20

    ushr-long v23, v11, v23

    const/16 v25, 0x20

    ushr-long v25, v13, v25

    add-long v23, v23, v25

    const/16 v25, 0x20

    ushr-long v25, v15, v25

    add-long v5, v23, v25

    .line 1786
    .local v5, "carry":J
    move v8, v10

    .local v8, "j":I
    :goto_2
    if-gtz v8, :cond_3

    .line 1794
    const/16 v23, 0x0

    aget v23, p1, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v23, v23, v25

    add-long v5, v5, v23

    .line 1795
    const/16 v23, 0x1

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v24, v0

    aput v24, p1, v23

    .line 1796
    const/16 v23, 0x0

    const/16 v24, 0x20

    ushr-long v24, v5, v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v24, v0

    aput v24, p1, v23

    .line 1773
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 1788
    :cond_3
    const/16 v23, 0x1

    sub-int v23, v8, v23

    aget v23, p3, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v23, v23, v25

    mul-long v11, v19, v23

    .line 1789
    const/16 v23, 0x1

    sub-int v23, v8, v23

    aget v23, p4, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v23, v23, v25

    mul-long v13, v17, v23

    .line 1790
    aget v23, p1, v8

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0xffffffffL

    and-long v23, v23, v25

    const-wide v25, 0xffffffffL

    and-long v25, v25, v11

    add-long v23, v23, v25

    const-wide v25, 0xffffffffL

    and-long v25, v25, v13

    add-long v23, v23, v25

    const-wide v25, 0xffffffffL

    and-long v25, v25, v5

    add-long v15, v23, v25

    .line 1791
    const/16 v23, 0x20

    ushr-long v23, v5, v23

    const/16 v25, 0x20

    ushr-long v25, v11, v25

    add-long v23, v23, v25

    const/16 v25, 0x20

    ushr-long v25, v13, v25

    add-long v23, v23, v25

    const/16 v25, 0x20

    ushr-long v25, v15, v25

    add-long v5, v23, v25

    .line 1792
    add-int/lit8 v23, v8, 0x1

    move-wide v0, v15

    long-to-int v0, v0

    move/from16 v24, v0

    aput v24, p1, v23

    .line 1786
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_2
.end method

.method private nextRndBytes(Ljava/util/Random;[B)V
    .locals 6
    .param p1, "rnd"    # Ljava/util/Random;
    .param p2, "bytes"    # [B

    .prologue
    .line 455
    array-length v3, p2

    .line 456
    .local v3, "numRequested":I
    const/4 v1, 0x0

    .line 457
    .local v1, "numGot":I
    const/4 v4, 0x0

    .line 464
    .local v4, "r":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    move v2, v1

    .end local v1    # "numGot":I
    .local v2, "numGot":I
    :goto_1
    const/4 v5, 0x4

    if-lt v0, v5, :cond_0

    move v1, v2

    .line 462
    .end local v2    # "numGot":I
    .restart local v1    # "numGot":I
    goto :goto_0

    .line 466
    .end local v1    # "numGot":I
    .restart local v2    # "numGot":I
    :cond_0
    if-ne v2, v3, :cond_1

    .line 468
    return-void

    .line 471
    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result v5

    move v4, v5

    .line 472
    :goto_2
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "numGot":I
    .restart local v1    # "numGot":I
    int-to-byte v5, v4

    aput-byte v5, p2, v2

    .line 464
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    .end local v1    # "numGot":I
    .restart local v2    # "numGot":I
    goto :goto_1

    .line 471
    :cond_2
    shr-int/lit8 v5, v4, 0x8

    move v4, v5

    goto :goto_2
.end method

.method public static probablePrime(ILjava/util/Random;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 2
    .param p0, "bitLength"    # I
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 1876
    new-instance v0, Lcom/verizon/vcast/apps/VzwBigInt;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1, p1}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(IILjava/util/Random;)V

    return-object v0
.end method

.method private quickPow2Check()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 832
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private remainder(I)I
    .locals 9
    .param p1, "m"    # I

    .prologue
    .line 1881
    const-wide/16 v0, 0x0

    .line 1882
    .local v0, "acc":J
    const/4 v2, 0x0

    .local v2, "pos":I
    :goto_0
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 1887
    long-to-int v3, v0

    return v3

    .line 1884
    :cond_0
    const/16 v3, 0x20

    shl-long v3, v0, v3

    iget-object v5, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v5, v5, v2

    int-to-long v5, v5

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    or-long/2addr v3, v5

    int-to-long v5, p1

    rem-long v0, v3, v5

    .line 1882
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private remainder([I[I)[I
    .locals 13
    .param p1, "x"    # [I
    .param p2, "y"    # [I

    .prologue
    .line 1895
    const/4 v7, 0x0

    .line 1896
    .local v7, "xStart":I
    :goto_0
    array-length v11, p1

    if-ge v7, v11, :cond_0

    aget v11, p1, v7

    if-eqz v11, :cond_7

    .line 1901
    :cond_0
    const/4 v10, 0x0

    .line 1902
    .local v10, "yStart":I
    :goto_1
    array-length v11, p2

    if-ge v10, v11, :cond_1

    aget v11, p2, v10

    if-eqz v11, :cond_8

    .line 1907
    :cond_1
    invoke-direct {p0, v7, p1, v10, p2}, Lcom/verizon/vcast/apps/VzwBigInt;->compareNoLeadingZeroes(I[II[I)I

    move-result v8

    .line 1909
    .local v8, "xyCmp":I
    if-lez v8, :cond_5

    .line 1911
    invoke-direct {p0, v10, p2}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength(I[I)I

    move-result v9

    .line 1912
    .local v9, "yBitLength":I
    invoke-direct {p0, v7, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength(I[I)I

    move-result v6

    .line 1913
    .local v6, "xBitLength":I
    sub-int v5, v6, v9

    .line 1916
    .local v5, "shift":I
    const/4 v2, 0x0

    .line 1917
    .local v2, "cStart":I
    move v1, v9

    .line 1918
    .local v1, "cBitLength":I
    if-lez v5, :cond_9

    .line 1920
    invoke-direct {p0, p2, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftLeft([II)[I

    move-result-object v0

    .line 1921
    .local v0, "c":[I
    add-int/2addr v1, v5

    .line 1932
    :cond_2
    :goto_2
    if-lt v1, v6, :cond_3

    .line 1933
    invoke-direct {p0, v7, p1, v2, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->compareNoLeadingZeroes(I[II[I)I

    move-result v11

    if-ltz v11, :cond_c

    .line 1935
    :cond_3
    invoke-direct {p0, v7, p1, v2, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(I[II[I)[I

    .line 1937
    :cond_4
    aget v11, p1, v7

    if-eqz v11, :cond_a

    .line 1945
    invoke-direct {p0, v7, p1, v10, p2}, Lcom/verizon/vcast/apps/VzwBigInt;->compareNoLeadingZeroes(I[II[I)I

    move-result v8

    .line 1947
    if-gtz v8, :cond_b

    .line 1977
    .end local v0    # "c":[I
    .end local v1    # "cBitLength":I
    .end local v2    # "cStart":I
    .end local v5    # "shift":I
    .end local v6    # "xBitLength":I
    .end local v9    # "yBitLength":I
    :cond_5
    if-nez v8, :cond_6

    .line 1979
    move v3, v7

    .local v3, "i":I
    :goto_3
    array-length v11, p1

    if-lt v3, v11, :cond_e

    .line 1985
    .end local v3    # "i":I
    :cond_6
    :goto_4
    return-object p1

    .line 1898
    .end local v8    # "xyCmp":I
    .end local v10    # "yStart":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1904
    .restart local v10    # "yStart":I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1925
    .restart local v1    # "cBitLength":I
    .restart local v2    # "cStart":I
    .restart local v5    # "shift":I
    .restart local v6    # "xBitLength":I
    .restart local v8    # "xyCmp":I
    .restart local v9    # "yBitLength":I
    :cond_9
    array-length v11, p2

    sub-int v4, v11, v10

    .line 1926
    .local v4, "len":I
    new-array v0, v4, [I

    .line 1927
    .restart local v0    # "c":[I
    const/4 v11, 0x0

    invoke-static {p2, v10, v0, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 1939
    .end local v4    # "len":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    array-length v11, p1

    if-ne v7, v11, :cond_4

    goto :goto_4

    .line 1953
    :cond_b
    array-length v11, p1

    sub-int/2addr v11, v7

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    mul-int/lit8 v11, v11, 0x20

    aget v12, p1, v7

    invoke-static {v12}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLen(I)I

    move-result v12

    add-int v6, v11, v12

    .line 1956
    :cond_c
    sub-int v5, v1, v6

    .line 1958
    const/4 v11, 0x2

    if-ge v5, v11, :cond_d

    .line 1960
    invoke-static {v2, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftRightOneInPlace(I[I)V

    .line 1961
    add-int/lit8 v1, v1, -0x1

    .line 1970
    :goto_5
    aget v11, v0, v2

    if-nez v11, :cond_2

    .line 1972
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1965
    :cond_d
    invoke-static {v2, v0, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftRightInPlace(I[II)V

    .line 1966
    sub-int/2addr v1, v5

    .line 1970
    goto :goto_5

    .line 1981
    .end local v0    # "c":[I
    .end local v1    # "cBitLength":I
    .end local v2    # "cStart":I
    .end local v5    # "shift":I
    .end local v6    # "xBitLength":I
    .end local v9    # "yBitLength":I
    .restart local v3    # "i":I
    :cond_e
    const/4 v11, 0x0

    aput v11, p1, v3

    .line 1979
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method private shiftLeft([II)[I
    .locals 13
    .param p1, "mag"    # [I
    .param p2, "n"    # I

    .prologue
    .line 2065
    ushr-int/lit8 v8, p2, 0x5

    .line 2066
    .local v8, "nInts":I
    and-int/lit8 v6, p2, 0x1f

    .line 2067
    .local v6, "nBits":I
    array-length v5, p1

    .line 2068
    .local v5, "magLen":I
    const/4 v9, 0x0

    check-cast v9, [I

    .line 2070
    .local v9, "newMag":[I
    if-nez v6, :cond_0

    .line 2072
    add-int v11, v5, v8

    new-array v9, v11, [I

    .line 2073
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p1, v11, v9, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2103
    :goto_0
    return-object v9

    .line 2077
    :cond_0
    const/4 v1, 0x0

    .line 2078
    .local v1, "i":I
    const/16 v11, 0x20

    sub-int v7, v11, v6

    .line 2079
    .local v7, "nBits2":I
    const/4 v11, 0x0

    aget v11, p1, v11

    ushr-int v0, v11, v7

    .line 2081
    .local v0, "highBits":I
    if-eqz v0, :cond_1

    .line 2083
    add-int v11, v5, v8

    add-int/lit8 v11, v11, 0x1

    new-array v9, v11, [I

    .line 2084
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput v0, v9, v1

    move v1, v2

    .line 2091
    .end local v2    # "i":I
    .restart local v1    # "i":I
    :goto_1
    const/4 v11, 0x0

    aget v4, p1, v11

    .line 2092
    .local v4, "m":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    :goto_2
    const/4 v11, 0x1

    sub-int v11, v5, v11

    if-lt v3, v11, :cond_2

    .line 2100
    const/4 v11, 0x1

    sub-int v11, v5, v11

    aget v11, p1, v11

    shl-int/2addr v11, v6

    aput v11, v9, v2

    goto :goto_0

    .line 2088
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v4    # "m":I
    .restart local v1    # "i":I
    :cond_1
    add-int v11, v5, v8

    new-array v9, v11, [I

    goto :goto_1

    .line 2094
    .end local v1    # "i":I
    .restart local v2    # "i":I
    .restart local v3    # "j":I
    .restart local v4    # "m":I
    :cond_2
    add-int/lit8 v11, v3, 0x1

    aget v10, p1, v11

    .line 2096
    .local v10, "next":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    shl-int v11, v4, v6

    ushr-int v12, v10, v7

    or-int/2addr v11, v12

    aput v11, v9, v2

    .line 2097
    move v4, v10

    .line 2092
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2
.end method

.method private static shiftRightInPlace(I[II)V
    .locals 11
    .param p0, "start"    # I
    .param p1, "mag"    # [I
    .param p2, "n"    # I

    .prologue
    const/4 v10, 0x1

    .line 2145
    ushr-int/lit8 v8, p2, 0x5

    add-int v6, v8, p0

    .line 2146
    .local v6, "nInts":I
    and-int/lit8 v4, p2, 0x1f

    .line 2147
    .local v4, "nBits":I
    array-length v8, p1

    sub-int v3, v8, v10

    .line 2149
    .local v3, "magEnd":I
    if-eq v6, p0, :cond_0

    .line 2151
    sub-int v0, v6, p0

    .line 2153
    .local v0, "delta":I
    move v1, v3

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 2157
    sub-int v1, v6, v10

    :goto_1
    if-ge v1, p0, :cond_3

    .line 2163
    .end local v0    # "delta":I
    .end local v1    # "i":I
    :cond_0
    if-eqz v4, :cond_1

    .line 2165
    const/16 v8, 0x20

    sub-int v5, v8, v4

    .line 2166
    .local v5, "nBits2":I
    aget v2, p1, v3

    .line 2168
    .local v2, "m":I
    move v1, v3

    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v8, v6, 0x1

    if-ge v1, v8, :cond_4

    .line 2176
    aget v8, p1, v6

    ushr-int/2addr v8, v4

    aput v8, p1, v6

    .line 2178
    .end local v1    # "i":I
    .end local v2    # "m":I
    .end local v5    # "nBits2":I
    :cond_1
    return-void

    .line 2155
    .restart local v0    # "delta":I
    .restart local v1    # "i":I
    :cond_2
    sub-int v8, v1, v0

    aget v8, p1, v8

    aput v8, p1, v1

    .line 2153
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2159
    :cond_3
    const/4 v8, 0x0

    aput v8, p1, v1

    .line 2157
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2170
    .end local v0    # "delta":I
    .restart local v2    # "m":I
    .restart local v5    # "nBits2":I
    :cond_4
    sub-int v8, v1, v10

    aget v7, p1, v8

    .line 2172
    .local v7, "next":I
    ushr-int v8, v2, v4

    shl-int v9, v7, v5

    or-int/2addr v8, v9

    aput v8, p1, v1

    .line 2173
    move v2, v7

    .line 2168
    add-int/lit8 v1, v1, -0x1

    goto :goto_2
.end method

.method private static shiftRightOneInPlace(I[I)V
    .locals 7
    .param p0, "start"    # I
    .param p1, "mag"    # [I

    .prologue
    const/4 v6, 0x1

    .line 2185
    array-length v4, p1

    sub-int v2, v4, v6

    .line 2187
    .local v2, "magEnd":I
    aget v1, p1, v2

    .line 2189
    .local v1, "m":I
    move v0, v2

    .local v0, "i":I
    :goto_0
    if-gt v0, p0, :cond_0

    .line 2197
    aget v4, p1, p0

    ushr-int/lit8 v4, v4, 0x1

    aput v4, p1, p0

    .line 2198
    return-void

    .line 2191
    :cond_0
    sub-int v4, v0, v6

    aget v3, p1, v4

    .line 2193
    .local v3, "next":I
    ushr-int/lit8 v4, v1, 0x1

    shl-int/lit8 v5, v3, 0x1f

    or-int/2addr v4, v5

    aput v4, p1, v0

    .line 2194
    move v1, v3

    .line 2189
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private square([I[I)[I
    .locals 16
    .param p1, "w"    # [I
    .param p2, "x"    # [I

    .prologue
    .line 1568
    move-object/from16 v0, p1

    array-length v0, v0

    move v12, v0

    const/4 v13, 0x1

    sub-int v11, v12, v13

    .line 1570
    .local v11, "wBase":I
    move-object/from16 v0, p2

    array-length v0, v0

    move v12, v0

    const/4 v13, 0x1

    sub-int v3, v12, v13

    .local v3, "i":I
    :goto_0
    if-nez v3, :cond_1

    .line 1604
    const/4 v12, 0x0

    aget v12, p2, v12

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long v5, v12, v14

    .line 1605
    .local v5, "u1":J
    mul-long/2addr v5, v5

    .line 1606
    const/16 v12, 0x20

    ushr-long v7, v5, v12

    .line 1607
    .local v7, "u2":J
    const-wide v12, 0xffffffffL

    and-long/2addr v5, v12

    .line 1609
    aget v12, p1, v11

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v5, v12

    .line 1611
    long-to-int v12, v5

    aput v12, p1, v11

    .line 1612
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_0

    .line 1614
    const/16 v12, 0x20

    shr-long v12, v5, v12

    add-long/2addr v12, v7

    aget v14, p1, v11

    int-to-long v14, v14

    add-long/2addr v12, v14

    long-to-int v12, v12

    aput v12, p1, v11

    .line 1617
    :cond_0
    return-object p1

    .line 1572
    .end local v5    # "u1":J
    .end local v7    # "u2":J
    :cond_1
    aget v12, p2, v3

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long v9, v12, v14

    .line 1574
    .local v9, "v":J
    mul-long v5, v9, v9

    .line 1575
    .restart local v5    # "u1":J
    const/16 v12, 0x20

    ushr-long v7, v5, v12

    .line 1576
    .restart local v7    # "u2":J
    const-wide v12, 0xffffffffL

    and-long/2addr v5, v12

    .line 1578
    aget v12, p1, v11

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v5, v12

    .line 1580
    long-to-int v12, v5

    aput v12, p1, v11

    .line 1581
    const/16 v12, 0x20

    shr-long v12, v5, v12

    add-long v1, v7, v12

    .line 1583
    .local v1, "c":J
    const/4 v12, 0x1

    sub-int v4, v3, v12

    .local v4, "j":I
    :goto_1
    if-gez v4, :cond_3

    .line 1594
    add-int/lit8 v11, v11, -0x1

    aget v12, p1, v11

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v1, v12

    .line 1595
    long-to-int v12, v1

    aput v12, p1, v11

    .line 1597
    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_2

    .line 1599
    const/16 v12, 0x20

    shr-long v12, v1, v12

    long-to-int v12, v12

    aput v12, p1, v11

    .line 1601
    :cond_2
    add-int/2addr v11, v3

    .line 1570
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 1585
    :cond_3
    add-int/lit8 v11, v11, -0x1

    .line 1586
    aget v12, p2, v4

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    mul-long v5, v12, v9

    .line 1587
    const/16 v12, 0x1f

    ushr-long v7, v5, v12

    .line 1588
    const-wide/32 v12, 0x7fffffff

    and-long/2addr v12, v5

    const/4 v14, 0x1

    shl-long v5, v12, v14

    .line 1589
    aget v12, p1, v11

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    add-long/2addr v12, v1

    add-long/2addr v5, v12

    .line 1591
    long-to-int v12, v5

    aput v12, p1, v11

    .line 1592
    const/16 v12, 0x20

    ushr-long v12, v5, v12

    add-long v1, v7, v12

    .line 1583
    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method private subtract(I[II[I)[I
    .locals 11
    .param p1, "xStart"    # I
    .param p2, "x"    # [I
    .param p3, "yStart"    # I
    .param p4, "y"    # [I

    .prologue
    const-wide v9, 0xffffffffL

    .line 2236
    array-length v1, p2

    .line 2237
    .local v1, "iT":I
    array-length v2, p4

    .line 2239
    .local v2, "iV":I
    const/4 v0, 0x0

    .line 2243
    .local v0, "borrow":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget v5, p2, v1

    int-to-long v5, v5

    and-long/2addr v5, v9

    add-int/lit8 v2, v2, -0x1

    aget v7, p4, v2

    int-to-long v7, v7

    and-long/2addr v7, v9

    sub-long/2addr v5, v7

    int-to-long v7, v0

    add-long v3, v5, v7

    .line 2244
    .local v3, "m":J
    long-to-int v5, v3

    aput v5, p2, v1

    .line 2247
    const/16 v5, 0x3f

    shr-long v5, v3, v5

    long-to-int v0, v5

    .line 2249
    if-gt v2, p3, :cond_0

    .line 2251
    if-eqz v0, :cond_2

    .line 2253
    :cond_1
    add-int/lit8 v1, v1, -0x1

    aget v5, p2, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aput v5, p2, v1

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 2258
    :cond_2
    return-object p2
.end method

.method public static valueOf(J)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 7
    .param p0, "val"    # J

    .prologue
    const-wide/16 v5, 0x0

    const/16 v4, 0x8

    .line 2669
    cmp-long v2, p0, v5

    if-nez v2, :cond_0

    .line 2671
    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 2692
    :goto_0
    return-object v2

    .line 2674
    :cond_0
    cmp-long v2, p0, v5

    if-gez v2, :cond_2

    .line 2676
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    .line 2678
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p0

    invoke-static {v2, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->valueOf(J)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/verizon/vcast/apps/VzwBigInt;->not()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    goto :goto_0

    .line 2681
    :cond_1
    neg-long v2, p0

    invoke-static {v2, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->valueOf(J)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/verizon/vcast/apps/VzwBigInt;->negate()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    goto :goto_0

    .line 2685
    :cond_2
    new-array v0, v4, [B

    .line 2686
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_3

    .line 2692
    new-instance v2, Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-direct {v2, v0}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>([B)V

    goto :goto_0

    .line 2688
    :cond_3
    const/4 v2, 0x7

    sub-int/2addr v2, v1

    long-to-int v3, p0

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 2689
    shr-long/2addr p0, v4

    .line 2686
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private zero([I)V
    .locals 2
    .param p1, "x"    # [I

    .prologue
    .line 1375
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ne v0, v1, :cond_0

    .line 1379
    return-void

    .line 1377
    :cond_0
    const/4 v1, 0x0

    aput v1, p1, v0

    .line 1375
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abs()Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 1

    .prologue
    .line 545
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-ltz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->negate()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    goto :goto_0
.end method

.method public add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 1
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 598
    iget v0, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, p0

    .line 614
    :goto_0
    return-object v0

    .line 600
    :cond_1
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v0, v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, p1

    .line 601
    goto :goto_0

    .line 603
    :cond_3
    iget v0, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v0, :cond_4

    .line 605
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v0, :cond_5

    .line 606
    invoke-virtual {p1}, Lcom/verizon/vcast/apps/VzwBigInt;->negate()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    goto :goto_0

    .line 610
    :cond_4
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v0, :cond_5

    .line 611
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->negate()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    goto :goto_0

    .line 614
    :cond_5
    iget-object v0, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->addToMagnitude([I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    goto :goto_0
.end method

.method public and(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 13
    .param p1, "value"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 650
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-eqz v11, :cond_0

    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v11, :cond_1

    .line 652
    :cond_0
    sget-object v11, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 701
    :goto_0
    return-object v11

    .line 655
    :cond_1
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v11, :cond_3

    .line 656
    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v0, v11

    .line 659
    .local v0, "aMag":[I
    :goto_1
    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v11, :cond_4

    .line 660
    iget-object v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v3, v11

    .line 663
    .local v3, "bMag":[I
    :goto_2
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_5

    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_5

    const/4 v11, 0x1

    move v10, v11

    .line 664
    .local v10, "resultNeg":Z
    :goto_3
    array-length v11, v0

    array-length v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 665
    .local v8, "resultLength":I
    new-array v9, v8, [I

    .line 667
    .local v9, "resultMag":[I
    array-length v11, v9

    array-length v12, v0

    sub-int v1, v11, v12

    .line 668
    .local v1, "aStart":I
    array-length v11, v9

    array-length v12, v3

    sub-int v4, v11, v12

    .line 670
    .local v4, "bStart":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v11, v9

    if-lt v6, v11, :cond_6

    .line 693
    new-instance v7, Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v11, 0x1

    invoke-direct {v7, v11, v9}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    .line 696
    .local v7, "result":Lcom/verizon/vcast/apps/VzwBigInt;
    if-eqz v10, :cond_2

    .line 698
    invoke-virtual {v7}, Lcom/verizon/vcast/apps/VzwBigInt;->not()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v7

    :cond_2
    move-object v11, v7

    .line 701
    goto :goto_0

    .line 657
    .end local v0    # "aMag":[I
    .end local v1    # "aStart":I
    .end local v3    # "bMag":[I
    .end local v4    # "bStart":I
    .end local v6    # "i":I
    .end local v7    # "result":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v8    # "resultLength":I
    .end local v9    # "resultMag":[I
    .end local v10    # "resultNeg":Z
    :cond_3
    sget-object v11, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {p0, v11}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v11

    iget-object v11, v11, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v0, v11

    goto :goto_1

    .line 661
    .restart local v0    # "aMag":[I
    :cond_4
    sget-object v11, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {p1, v11}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v11

    iget-object v11, v11, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v3, v11

    goto :goto_2

    .line 663
    .restart local v3    # "bMag":[I
    :cond_5
    const/4 v11, 0x0

    move v10, v11

    goto :goto_3

    .line 672
    .restart local v1    # "aStart":I
    .restart local v4    # "bStart":I
    .restart local v6    # "i":I
    .restart local v8    # "resultLength":I
    .restart local v9    # "resultMag":[I
    .restart local v10    # "resultNeg":Z
    :cond_6
    if-lt v6, v1, :cond_a

    sub-int v11, v6, v1

    aget v11, v0, v11

    move v2, v11

    .line 673
    .local v2, "aWord":I
    :goto_5
    if-lt v6, v4, :cond_b

    sub-int v11, v6, v4

    aget v11, v3, v11

    move v5, v11

    .line 675
    .local v5, "bWord":I
    :goto_6
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_7

    .line 677
    xor-int/lit8 v2, v2, -0x1

    .line 680
    :cond_7
    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_8

    .line 682
    xor-int/lit8 v5, v5, -0x1

    .line 685
    :cond_8
    and-int v11, v2, v5

    aput v11, v9, v6

    .line 687
    if-eqz v10, :cond_9

    .line 689
    aget v11, v9, v6

    xor-int/lit8 v11, v11, -0x1

    aput v11, v9, v6

    .line 670
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 672
    .end local v2    # "aWord":I
    .end local v5    # "bWord":I
    :cond_a
    const/4 v11, 0x0

    move v2, v11

    goto :goto_5

    .line 673
    .restart local v2    # "aWord":I
    :cond_b
    const/4 v11, 0x0

    move v5, v11

    goto :goto_6
.end method

.method public andNot(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 1
    .param p1, "value"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 706
    invoke-virtual {p1}, Lcom/verizon/vcast/apps/VzwBigInt;->not()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->and(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    return-object v0
.end method

.method public bitCount()I
    .locals 4

    .prologue
    .line 711
    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 713
    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v2, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->not()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/verizon/vcast/apps/VzwBigInt;->bitCount()I

    move-result v2

    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 732
    :cond_0
    :goto_0
    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    return v2

    .line 720
    :cond_1
    const/4 v1, 0x0

    .line 721
    .local v1, "sum":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 728
    iput v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    goto :goto_0

    .line 723
    :cond_2
    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->bitCounts:[B

    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    .line 724
    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->bitCounts:[B

    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v3, v3, v0

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    .line 725
    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->bitCounts:[B

    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v3, v3, v0

    shr-int/lit8 v3, v3, 0x10

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    .line 726
    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->bitCounts:[B

    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v3, v3, v0

    shr-int/lit8 v3, v3, 0x18

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    .line 721
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public bitLength()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 794
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 796
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v0, :cond_1

    .line 798
    iput v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    .line 806
    :cond_0
    :goto_0
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    return v0

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v2, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength(I[I)I

    move-result v0

    iput v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    goto :goto_0
.end method

.method public byteValue()B
    .locals 1

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->intValue()I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public clearBit(I)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 2524
    if-gez p1, :cond_0

    .line 2526
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Bit address less than zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, p0

    .line 2540
    :goto_0
    return-object v0

    .line 2535
    :cond_1
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 2537
    invoke-direct {p0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->flipExistingBit(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    goto :goto_0

    .line 2540
    :cond_2
    sget-object v0, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {v0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftLeft(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->andNot(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    goto :goto_0
.end method

.method public compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I
    .locals 4
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    const/4 v3, 0x0

    .line 886
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iget v1, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-ge v0, v1, :cond_0

    .line 887
    const/4 v0, -0x1

    .line 893
    :goto_0
    return v0

    .line 888
    :cond_0
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iget v1, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-le v0, v1, :cond_1

    .line 889
    const/4 v0, 0x1

    goto :goto_0

    .line 890
    :cond_1
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v0, :cond_2

    move v0, v3

    .line 891
    goto :goto_0

    .line 893
    :cond_2
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v2, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v3, v1, v3, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(I[II[I)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 837
    check-cast p1, Lcom/verizon/vcast/apps/VzwBigInt;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I

    move-result v0

    return v0
.end method

.method public divide(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 4
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1018
    iget v1, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v1, :cond_0

    .line 1020
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "Divide by zero"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1023
    :cond_0
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v1, :cond_1

    .line 1025
    sget-object v1, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 1036
    :goto_0
    return-object v1

    .line 1028
    :cond_1
    sget-object v1, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {p1, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I

    move-result v1

    if-nez v1, :cond_2

    move-object v1, p0

    .line 1030
    goto :goto_0

    .line 1033
    :cond_2
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 1034
    .local v0, "mag":[I
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1036
    new-instance v1, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iget v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    mul-int/2addr v2, v3

    iget-object v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v0, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->divide([I[I)[I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    goto :goto_0
.end method

.method public divideAndRemainder(Lcom/verizon/vcast/apps/VzwBigInt;)[Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 8
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1041
    iget v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v3, :cond_0

    .line 1043
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "Divide by zero"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1046
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [Lcom/verizon/vcast/apps/VzwBigInt;

    .line 1048
    .local v0, "biggies":[Lcom/verizon/vcast/apps/VzwBigInt;
    iget v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v3, :cond_1

    .line 1050
    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    aput-object v3, v0, v7

    aput-object v3, v0, v6

    .line 1071
    :goto_0
    return-object v0

    .line 1055
    :cond_1
    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {p1, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I

    move-result v3

    if-nez v3, :cond_2

    .line 1057
    aput-object p0, v0, v6

    .line 1058
    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    aput-object v3, v0, v7

    goto :goto_0

    .line 1063
    :cond_2
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    new-array v2, v3, [I

    .line 1064
    .local v2, "remainder":[I
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v4, v2

    invoke-static {v3, v6, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1066
    iget-object v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v2, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->divide([I[I)[I

    move-result-object v1

    .line 1068
    .local v1, "quotient":[I
    new-instance v3, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iget v5, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    mul-int/2addr v4, v5

    invoke-direct {v3, v4, v1}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    aput-object v3, v0, v6

    .line 1069
    new-instance v3, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    invoke-direct {v3, v4, v2}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    aput-object v3, v0, v7

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "val"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1076
    if-ne p1, p0, :cond_0

    move v3, v6

    .line 1092
    :goto_0
    return v3

    .line 1079
    :cond_0
    instance-of v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;

    if-nez v3, :cond_1

    move v3, v5

    .line 1080
    goto :goto_0

    .line 1081
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/verizon/vcast/apps/VzwBigInt;

    move-object v1, v0

    .line 1083
    .local v1, "biggie":Lcom/verizon/vcast/apps/VzwBigInt;
    iget v3, v1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iget v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v4, v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v3, v5

    .line 1084
    goto :goto_0

    .line 1086
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    if-lt v2, v3, :cond_4

    move v3, v6

    .line 1092
    goto :goto_0

    .line 1088
    :cond_4
    iget-object v3, v1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v4, v4, v2

    if-eq v3, v4, :cond_5

    move v3, v5

    .line 1089
    goto :goto_0

    .line 1086
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public flipBit(I)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 2546
    if-gez p1, :cond_0

    .line 2548
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Bit address less than zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2552
    :cond_0
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_1

    .line 2554
    invoke-direct {p0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->flipExistingBit(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    .line 2557
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {v0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftLeft(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->xor(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    goto :goto_0
.end method

.method public gcd(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 4
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 1097
    iget v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v3, :cond_0

    .line 1098
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->abs()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v3

    .line 1113
    :goto_0
    return-object v3

    .line 1099
    :cond_0
    iget v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v3, :cond_1

    .line 1100
    invoke-virtual {p1}, Lcom/verizon/vcast/apps/VzwBigInt;->abs()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v3

    goto :goto_0

    .line 1103
    :cond_1
    move-object v1, p0

    .line 1104
    .local v1, "u":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object v2, p1

    .line 1106
    .local v2, "v":Lcom/verizon/vcast/apps/VzwBigInt;
    :goto_1
    iget v3, v2, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v3, :cond_2

    move-object v3, v1

    .line 1113
    goto :goto_0

    .line 1108
    :cond_2
    invoke-virtual {v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->mod(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    .line 1109
    .local v0, "r":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object v1, v2

    .line 1110
    move-object v2, v0

    goto :goto_1
.end method

.method public getLowestSetBit()I
    .locals 5

    .prologue
    .line 2697
    iget v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v3, :cond_0

    .line 2699
    const/4 v3, -0x1

    .line 2732
    :goto_0
    return v3

    .line 2702
    :cond_0
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v3

    .line 2704
    .local v1, "w":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_3

    .line 2712
    :goto_1
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v2, v3, v1

    .line 2714
    .local v2, "word":I
    const v3, 0xffff

    and-int/2addr v3, v2

    if-nez v3, :cond_5

    .line 2715
    const/high16 v3, 0xff0000

    and-int/2addr v3, v2

    if-nez v3, :cond_4

    .line 2716
    const/4 v3, 0x7

    move v0, v3

    .line 2722
    .local v0, "b":I
    :goto_2
    if-gtz v0, :cond_7

    .line 2732
    :cond_2
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x20

    add-int/lit8 v4, v0, 0x1

    sub-int/2addr v3, v4

    goto :goto_0

    .line 2706
    .end local v0    # "b":I
    .end local v2    # "word":I
    :cond_3
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v3, v3, v1

    if-eqz v3, :cond_1

    goto :goto_1

    .line 2717
    .restart local v2    # "word":I
    :cond_4
    const/16 v3, 0xf

    move v0, v3

    goto :goto_2

    .line 2718
    :cond_5
    and-int/lit16 v3, v2, 0xff

    if-nez v3, :cond_6

    .line 2719
    const/16 v3, 0x17

    move v0, v3

    goto :goto_2

    .line 2720
    :cond_6
    const/16 v3, 0x1f

    move v0, v3

    goto :goto_2

    .line 2724
    .restart local v0    # "b":I
    :cond_7
    shl-int v3, v2, v0

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_2

    .line 2729
    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1118
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v0, v1

    .line 1120
    .local v0, "hc":I
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    if-lez v1, :cond_0

    .line 1122
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    xor-int/2addr v0, v1

    .line 1124
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    if-le v1, v3, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v2, v2

    sub-int/2addr v2, v3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    .line 1130
    :cond_0
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v1, :cond_1

    xor-int/lit8 v1, v0, -0x1

    :goto_0
    return v1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public intValue()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1135
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1137
    const/4 v0, 0x0

    .line 1146
    :goto_0
    return v0

    .line 1140
    :cond_0
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v0, :cond_1

    .line 1142
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    neg-int v0, v0

    goto :goto_0

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public isProbablePrime(I)Z
    .locals 19
    .param p1, "certainty"    # I

    .prologue
    .line 1163
    if-gtz p1, :cond_0

    .line 1164
    const/16 v17, 0x1

    .line 1240
    :goto_0
    return v17

    .line 1166
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 1167
    const/16 v17, 0x0

    goto :goto_0

    .line 1169
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/verizon/vcast/apps/VzwBigInt;->abs()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v6

    .line 1171
    .local v6, "n":Lcom/verizon/vcast/apps/VzwBigInt;
    const/16 v17, 0x0

    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->testBit(I)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1172
    sget-object v17, Lcom/verizon/vcast/apps/VzwBigInt;->TWO:Lcom/verizon/vcast/apps/VzwBigInt;

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->equals(Ljava/lang/Object;)Z

    move-result v17

    goto :goto_0

    .line 1174
    :cond_2
    sget-object v17, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 1175
    const/16 v17, 0x0

    goto :goto_0

    .line 1178
    :cond_3
    invoke-virtual {v6}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v17

    const/16 v18, 0x1

    sub-int v17, v17, v18

    sget-object v18, Lcom/verizon/vcast/apps/VzwBigInt;->primeLists:[[I

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1180
    .local v8, "numLists":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-lt v4, v8, :cond_7

    .line 1200
    sget-object v17, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v7

    .line 1201
    .local v7, "nMinusOne":Lcom/verizon/vcast/apps/VzwBigInt;
    invoke-virtual {v7}, Lcom/verizon/vcast/apps/VzwBigInt;->getLowestSetBit()I

    move-result v14

    .line 1202
    .local v14, "s":I
    invoke-virtual {v7, v14}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftRight(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v12

    .line 1204
    .local v12, "r":Lcom/verizon/vcast/apps/VzwBigInt;
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    .line 1211
    .local v13, "random":Ljava/util/Random;
    :cond_4
    new-instance v3, Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {v6}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v17

    move-object v0, v3

    move/from16 v1, v17

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(ILjava/util/Random;)V

    .line 1213
    .local v3, "a":Lcom/verizon/vcast/apps/VzwBigInt;
    sget-object v17, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I

    move-result v17

    if-lez v17, :cond_4

    invoke-virtual {v3, v7}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I

    move-result v17

    if-gez v17, :cond_4

    .line 1215
    invoke-virtual {v3, v12, v6}, Lcom/verizon/vcast/apps/VzwBigInt;->modPow(Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v16

    .line 1217
    .local v16, "y":Lcom/verizon/vcast/apps/VzwBigInt;
    sget-object v17, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual/range {v16 .. v17}, Lcom/verizon/vcast/apps/VzwBigInt;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 1219
    const/4 v5, 0x0

    .line 1220
    .local v5, "j":I
    :cond_5
    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 1236
    .end local v5    # "j":I
    :cond_6
    add-int/lit8 p1, p1, -0x2

    .line 1238
    if-gtz p1, :cond_4

    .line 1240
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v3    # "a":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v7    # "nMinusOne":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v12    # "r":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v13    # "random":Ljava/util/Random;
    .end local v14    # "s":I
    .end local v16    # "y":Lcom/verizon/vcast/apps/VzwBigInt;
    :cond_7
    sget-object v17, Lcom/verizon/vcast/apps/VzwBigInt;->primeProducts:[I

    aget v17, v17, v4

    move-object v0, v6

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->remainder(I)I

    move-result v15

    .line 1184
    .local v15, "test":I
    sget-object v17, Lcom/verizon/vcast/apps/VzwBigInt;->primeLists:[[I

    aget-object v10, v17, v4

    .line 1185
    .local v10, "primeList":[I
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_2
    move-object v0, v10

    array-length v0, v0

    move/from16 v17, v0

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_8

    .line 1180
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1187
    :cond_8
    aget v9, v10, v5

    .line 1188
    .local v9, "prime":I
    rem-int v11, v15, v9

    .line 1189
    .local v11, "qRem":I
    if-nez v11, :cond_a

    .line 1192
    invoke-virtual {v6}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    invoke-virtual {v6}, Lcom/verizon/vcast/apps/VzwBigInt;->intValue()I

    move-result v17

    move/from16 v0, v17

    move v1, v9

    if-ne v0, v1, :cond_9

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_9
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1185
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1222
    .end local v9    # "prime":I
    .end local v10    # "primeList":[I
    .end local v11    # "qRem":I
    .end local v15    # "test":I
    .restart local v3    # "a":Lcom/verizon/vcast/apps/VzwBigInt;
    .restart local v7    # "nMinusOne":Lcom/verizon/vcast/apps/VzwBigInt;
    .restart local v12    # "r":Lcom/verizon/vcast/apps/VzwBigInt;
    .restart local v13    # "random":Ljava/util/Random;
    .restart local v14    # "s":I
    .restart local v16    # "y":Lcom/verizon/vcast/apps/VzwBigInt;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    if-ne v5, v14, :cond_c

    .line 1224
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1227
    :cond_c
    sget-object v17, Lcom/verizon/vcast/apps/VzwBigInt;->TWO:Lcom/verizon/vcast/apps/VzwBigInt;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->modPow(Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v16

    .line 1229
    sget-object v17, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual/range {v16 .. v17}, Lcom/verizon/vcast/apps/VzwBigInt;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1231
    const/16 v17, 0x0

    goto/16 :goto_0
.end method

.method public longValue()J
    .locals 9

    .prologue
    const-wide v7, 0xffffffffL

    const/4 v6, 0x1

    .line 1245
    const-wide/16 v0, 0x0

    .line 1247
    .local v0, "val":J
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v2, v2

    if-nez v2, :cond_0

    .line 1249
    const-wide/16 v2, 0x0

    .line 1268
    :goto_0
    return-wide v2

    .line 1252
    :cond_0
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v2, v2

    if-le v2, v6, :cond_1

    .line 1254
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    aget v2, v2, v3

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 1255
    iget-object v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v5, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v5, v5

    sub-int/2addr v5, v6

    aget v4, v4, v5

    int-to-long v4, v4

    and-long/2addr v4, v7

    .line 1254
    or-long v0, v2, v4

    .line 1262
    :goto_1
    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v2, :cond_2

    .line 1264
    neg-long v2, v0

    goto :goto_0

    .line 1259
    :cond_1
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    sub-int/2addr v3, v6

    aget v2, v2, v3

    int-to-long v2, v2

    and-long v0, v2, v7

    goto :goto_1

    :cond_2
    move-wide v2, v0

    .line 1268
    goto :goto_0
.end method

.method public max(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 1
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 1274
    invoke-virtual {p0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I

    move-result v0

    if-lez v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public min(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 1
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 1279
    invoke-virtual {p0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I

    move-result v0

    if-gez v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public mod(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 3
    .param p1, "m"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 1284
    iget v1, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gtz v1, :cond_0

    .line 1286
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "BigInteger: modulus is not positive"

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1289
    :cond_0
    invoke-virtual {p0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->remainder(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    .line 1291
    .local v0, "biggie":Lcom/verizon/vcast/apps/VzwBigInt;
    iget v1, v0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-ltz v1, :cond_1

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    goto :goto_0
.end method

.method public modInverse(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 4
    .param p1, "m"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 1296
    iget v2, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1298
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Modulus must be positive"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1301
    :cond_0
    new-instance v1, Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-direct {v1}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>()V

    .line 1302
    .local v1, "x":Lcom/verizon/vcast/apps/VzwBigInt;
    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->extEuclid(Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    .line 1304
    .local v0, "gcd":Lcom/verizon/vcast/apps/VzwBigInt;
    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {v0, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1306
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Numbers not relatively prime."

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1309
    :cond_1
    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(Lcom/verizon/vcast/apps/VzwBigInt;)I

    move-result v2

    if-gez v2, :cond_2

    .line 1311
    invoke-virtual {v1, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    .line 1314
    :cond_2
    return-object v1
.end method

.method public modPow(Lcom/verizon/vcast/apps/VzwBigInt;Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 20
    .param p1, "exponent"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .param p2, "m"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 1383
    move-object/from16 v0, p2

    iget v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    move v5, v0

    const/4 v6, 0x1

    if-ge v5, v6, :cond_0

    .line 1385
    new-instance v5, Ljava/lang/ArithmeticException;

    const-string v6, "Modulus must be positive"

    invoke-direct {v5, v6}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1388
    :cond_0
    sget-object v5, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1390
    sget-object v5, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 1550
    :goto_0
    return-object v5

    .line 1394
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    move v5, v0

    if-nez v5, :cond_2

    .line 1396
    sget-object v5, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    goto :goto_0

    .line 1399
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    move v5, v0

    if-nez v5, :cond_3

    .line 1400
    sget-object v5, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    goto :goto_0

    .line 1402
    :cond_3
    const/16 v19, 0x0

    check-cast v19, [I

    .line 1403
    .local v19, "zVal":[I
    const/4 v6, 0x0

    check-cast v6, [I

    .line 1408
    .local v6, "yAccum":[I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget v5, v5, v7

    and-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_7

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 1409
    .local v17, "useMonty":Z
    :goto_1
    const-wide/16 v10, 0x0

    .line 1410
    .local v10, "mQ":J
    if-eqz v17, :cond_4

    .line 1412
    invoke-direct/range {p2 .. p2}, Lcom/verizon/vcast/apps/VzwBigInt;->getMQuote()J

    move-result-wide v10

    .line 1415
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x20

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftLeft(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->mod(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v16

    .line 1416
    .local v16, "tmp":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object/from16 v19, v0

    .line 1418
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v7, v0

    array-length v7, v7

    if-gt v5, v7, :cond_8

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 1420
    :goto_2
    if-eqz v17, :cond_4

    .line 1422
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    new-array v6, v5, [I

    .line 1423
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v7, v0

    array-length v7, v7

    if-ge v5, v7, :cond_4

    .line 1425
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    array-length v5, v5

    new-array v14, v5, [I

    .line 1426
    .local v14, "longZ":[I
    const/4 v5, 0x0

    array-length v7, v14

    move-object/from16 v0, v19

    array-length v0, v0

    move v8, v0

    sub-int/2addr v7, v8

    move-object/from16 v0, v19

    array-length v0, v0

    move v8, v0

    move-object/from16 v0, v19

    move v1, v5

    move-object v2, v14

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1427
    move-object/from16 v19, v14

    .line 1432
    .end local v14    # "longZ":[I
    .end local v16    # "tmp":Lcom/verizon/vcast/apps/VzwBigInt;
    :cond_4
    if-nez v17, :cond_5

    .line 1434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    array-length v5, v5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v6, v0

    .end local v6    # "yAccum":[I
    array-length v6, v6

    if-gt v5, v6, :cond_9

    .line 1437
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    array-length v5, v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v8, v0

    array-length v8, v8

    sub-int/2addr v7, v8

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v8, v0

    array-length v8, v8

    .line 1439
    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1456
    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v6, v5, [I

    .line 1459
    .restart local v6    # "yAccum":[I
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    array-length v5, v5

    new-array v7, v5, [I

    .line 1464
    .local v7, "yVal":[I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    array-length v5, v5

    if-lt v13, v5, :cond_a

    .line 1540
    if-eqz v17, :cond_6

    .line 1543
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->zero([I)V

    .line 1544
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    const/4 v8, 0x1

    aput v8, v19, v5

    .line 1545
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v9, v0

    move-object/from16 v5, p0

    move-object/from16 v8, v19

    invoke-direct/range {v5 .. v11}, Lcom/verizon/vcast/apps/VzwBigInt;->multiplyMonty([I[I[I[IJ)V

    .line 1548
    :cond_6
    new-instance v15, Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v5, 0x1

    invoke-direct {v15, v5, v7}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    .line 1550
    .local v15, "result":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    move v5, v0

    if-lez v5, :cond_13

    move-object v5, v15

    .line 1551
    goto/16 :goto_0

    .line 1408
    .end local v7    # "yVal":[I
    .end local v10    # "mQ":J
    .end local v13    # "i":I
    .end local v15    # "result":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v17    # "useMonty":Z
    :cond_7
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_1

    .line 1418
    .restart local v10    # "mQ":J
    .restart local v16    # "tmp":Lcom/verizon/vcast/apps/VzwBigInt;
    .restart local v17    # "useMonty":Z
    :cond_8
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_2

    .line 1447
    .end local v6    # "yAccum":[I
    .end local v16    # "tmp":Lcom/verizon/vcast/apps/VzwBigInt;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->remainder(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v16

    .line 1450
    .restart local v16    # "tmp":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    array-length v5, v5

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 1452
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move v7, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v8, v0

    array-length v8, v8

    sub-int/2addr v7, v8

    .line 1453
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v8, v0

    array-length v8, v8

    .line 1452
    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_3

    .line 1466
    .end local v16    # "tmp":Lcom/verizon/vcast/apps/VzwBigInt;
    .restart local v6    # "yAccum":[I
    .restart local v7    # "yVal":[I
    .restart local v13    # "i":I
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    aget v18, v5, v13

    .line 1467
    .local v18, "v":I
    const/4 v12, 0x0

    .line 1469
    .local v12, "bits":I
    if-nez v13, :cond_b

    .line 1471
    :goto_5
    if-gtz v18, :cond_c

    .line 1480
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v19

    array-length v0, v0

    move v9, v0

    move-object/from16 v0, v19

    move v1, v5

    move-object v2, v7

    move v3, v8

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1482
    shl-int/lit8 v18, v18, 0x1

    .line 1483
    add-int/lit8 v12, v12, 0x1

    .line 1486
    :cond_b
    :goto_6
    if-nez v18, :cond_d

    .line 1523
    :goto_7
    const/16 v5, 0x20

    if-lt v12, v5, :cond_11

    .line 1464
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 1473
    :cond_c
    shl-int/lit8 v18, v18, 0x1

    .line 1474
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1488
    :cond_d
    if-eqz v17, :cond_f

    .line 1493
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v9, v0

    move-object/from16 v5, p0

    move-object v8, v7

    invoke-direct/range {v5 .. v11}, Lcom/verizon/vcast/apps/VzwBigInt;->multiplyMonty([I[I[I[IJ)V

    .line 1502
    :goto_8
    add-int/lit8 v12, v12, 0x1

    .line 1504
    if-gez v18, :cond_e

    .line 1506
    if-eqz v17, :cond_10

    .line 1508
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v9, v0

    move-object/from16 v5, p0

    move-object/from16 v8, v19

    invoke-direct/range {v5 .. v11}, Lcom/verizon/vcast/apps/VzwBigInt;->multiplyMonty([I[I[I[IJ)V

    .line 1520
    :cond_e
    :goto_9
    shl-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 1497
    :cond_f
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->square([I[I)[I

    .line 1498
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->remainder([I[I)[I

    .line 1499
    array-length v5, v6

    array-length v8, v7

    sub-int/2addr v5, v8

    const/4 v8, 0x0

    array-length v9, v7

    invoke-static {v6, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1500
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->zero([I)V

    goto :goto_8

    .line 1512
    :cond_10
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->multiply([I[I[I)[I

    .line 1513
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->remainder([I[I)[I

    .line 1514
    array-length v5, v6

    array-length v8, v7

    sub-int/2addr v5, v8

    const/4 v8, 0x0

    .line 1515
    array-length v9, v7

    .line 1514
    invoke-static {v6, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1516
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->zero([I)V

    goto :goto_9

    .line 1525
    :cond_11
    if-eqz v17, :cond_12

    .line 1527
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v9, v0

    move-object/from16 v5, p0

    move-object v8, v7

    invoke-direct/range {v5 .. v11}, Lcom/verizon/vcast/apps/VzwBigInt;->multiplyMonty([I[I[I[IJ)V

    .line 1536
    :goto_a
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 1531
    :cond_12
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->square([I[I)[I

    .line 1532
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->remainder([I[I)[I

    .line 1533
    array-length v5, v6

    array-length v8, v7

    sub-int/2addr v5, v8

    const/4 v8, 0x0

    array-length v9, v7

    invoke-static {v6, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1534
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->zero([I)V

    goto :goto_a

    .line 1552
    .end local v12    # "bits":I
    .end local v18    # "v":I
    .restart local v15    # "result":Lcom/verizon/vcast/apps/VzwBigInt;
    :cond_13
    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->modInverse(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v5

    goto/16 :goto_0
.end method

.method public multiply(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 5
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 1811
    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v2, :cond_1

    .line 1812
    :cond_0
    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 1826
    :goto_0
    return-object v2

    .line 1814
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v2

    invoke-virtual {p1}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x20

    add-int/lit8 v1, v2, 0x1

    .line 1815
    .local v1, "resLength":I
    new-array v0, v1, [I

    .line 1817
    .local v0, "res":[I
    if-ne p1, p0, :cond_2

    .line 1819
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v0, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->square([I[I)[I

    .line 1826
    :goto_1
    new-instance v2, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iget v4, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v3, v0}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    goto :goto_0

    .line 1823
    :cond_2
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v0, v2, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->multiply([I[I[I)[I

    goto :goto_1
.end method

.method public negate()Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 3

    .prologue
    .line 1831
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v0, :cond_0

    move-object v0, p0

    .line 1836
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    goto :goto_0
.end method

.method public not()Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 1

    .prologue
    .line 1841
    sget-object v0, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {p0, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/verizon/vcast/apps/VzwBigInt;->negate()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    return-object v0
.end method

.method public or(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 13
    .param p1, "value"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 2441
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v11, :cond_0

    move-object v11, p1

    .line 2496
    :goto_0
    return-object v11

    .line 2446
    :cond_0
    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v11, :cond_1

    move-object v11, p0

    .line 2448
    goto :goto_0

    .line 2451
    :cond_1
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v11, :cond_3

    .line 2452
    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v0, v11

    .line 2455
    .local v0, "aMag":[I
    :goto_1
    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v11, :cond_4

    .line 2456
    iget-object v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v3, v11

    .line 2459
    .local v3, "bMag":[I
    :goto_2
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-ltz v11, :cond_5

    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-ltz v11, :cond_5

    const/4 v11, 0x0

    move v10, v11

    .line 2460
    .local v10, "resultNeg":Z
    :goto_3
    array-length v11, v0

    array-length v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2461
    .local v8, "resultLength":I
    new-array v9, v8, [I

    .line 2463
    .local v9, "resultMag":[I
    array-length v11, v9

    array-length v12, v0

    sub-int v1, v11, v12

    .line 2464
    .local v1, "aStart":I
    array-length v11, v9

    array-length v12, v3

    sub-int v4, v11, v12

    .line 2466
    .local v4, "bStart":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v11, v9

    if-lt v6, v11, :cond_6

    .line 2489
    new-instance v7, Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v11, 0x1

    invoke-direct {v7, v11, v9}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    .line 2491
    .local v7, "result":Lcom/verizon/vcast/apps/VzwBigInt;
    if-eqz v10, :cond_2

    .line 2493
    invoke-virtual {v7}, Lcom/verizon/vcast/apps/VzwBigInt;->not()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v7

    :cond_2
    move-object v11, v7

    .line 2496
    goto :goto_0

    .line 2453
    .end local v0    # "aMag":[I
    .end local v1    # "aStart":I
    .end local v3    # "bMag":[I
    .end local v4    # "bStart":I
    .end local v6    # "i":I
    .end local v7    # "result":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v8    # "resultLength":I
    .end local v9    # "resultMag":[I
    .end local v10    # "resultNeg":Z
    :cond_3
    sget-object v11, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {p0, v11}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v11

    iget-object v11, v11, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v0, v11

    goto :goto_1

    .line 2457
    .restart local v0    # "aMag":[I
    :cond_4
    sget-object v11, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {p1, v11}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v11

    iget-object v11, v11, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v3, v11

    goto :goto_2

    .line 2459
    .restart local v3    # "bMag":[I
    :cond_5
    const/4 v11, 0x1

    move v10, v11

    goto :goto_3

    .line 2468
    .restart local v1    # "aStart":I
    .restart local v4    # "bStart":I
    .restart local v6    # "i":I
    .restart local v8    # "resultLength":I
    .restart local v9    # "resultMag":[I
    .restart local v10    # "resultNeg":Z
    :cond_6
    if-lt v6, v1, :cond_a

    sub-int v11, v6, v1

    aget v11, v0, v11

    move v2, v11

    .line 2469
    .local v2, "aWord":I
    :goto_5
    if-lt v6, v4, :cond_b

    sub-int v11, v6, v4

    aget v11, v3, v11

    move v5, v11

    .line 2471
    .local v5, "bWord":I
    :goto_6
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_7

    .line 2473
    xor-int/lit8 v2, v2, -0x1

    .line 2476
    :cond_7
    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_8

    .line 2478
    xor-int/lit8 v5, v5, -0x1

    .line 2481
    :cond_8
    or-int v11, v2, v5

    aput v11, v9, v6

    .line 2483
    if-eqz v10, :cond_9

    .line 2485
    aget v11, v9, v6

    xor-int/lit8 v11, v11, -0x1

    aput v11, v9, v6

    .line 2466
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2468
    .end local v2    # "aWord":I
    .end local v5    # "bWord":I
    :cond_a
    const/4 v11, 0x0

    move v2, v11

    goto :goto_5

    .line 2469
    .restart local v2    # "aWord":I
    :cond_b
    const/4 v11, 0x0

    move v5, v11

    goto :goto_6
.end method

.method public pow(I)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 4
    .param p1, "exp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 1846
    if-gez p1, :cond_0

    .line 1847
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Negative exponent"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1848
    :cond_0
    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v2, :cond_2

    .line 1849
    if-nez p1, :cond_1

    sget-object v2, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 1869
    :goto_0
    return-object v2

    :cond_1
    move-object v2, p0

    .line 1849
    goto :goto_0

    .line 1853
    :cond_2
    sget-object v0, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 1854
    .local v0, "y":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object v1, p0

    .line 1856
    .local v1, "z":Lcom/verizon/vcast/apps/VzwBigInt;
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    move-object v2, v0

    .line 1869
    goto :goto_0

    .line 1858
    :cond_4
    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1860
    invoke-virtual {v0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->multiply(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    .line 1862
    :cond_5
    shr-int/lit8 p1, p1, 0x1

    .line 1863
    if-eqz p1, :cond_3

    .line 1865
    invoke-virtual {v1, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->multiply(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    goto :goto_1
.end method

.method public remainder(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 7
    .param p1, "n"    # Lcom/verizon/vcast/apps/VzwBigInt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1990
    iget v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v3, :cond_0

    .line 1992
    new-instance v3, Ljava/lang/ArithmeticException;

    const-string v4, "BigInteger: Divide by zero"

    invoke-direct {v3, v4}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1995
    :cond_0
    iget v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v3, :cond_1

    .line 1997
    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 2034
    :goto_0
    return-object v3

    .line 2001
    :cond_1
    iget-object v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    if-ne v3, v5, :cond_4

    .line 2003
    iget-object v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v2, v3, v6

    .line 2005
    .local v2, "val":I
    if-lez v2, :cond_4

    .line 2007
    if-ne v2, v5, :cond_2

    .line 2008
    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    goto :goto_0

    .line 2010
    :cond_2
    invoke-direct {p0, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->remainder(I)I

    move-result v0

    .line 2012
    .local v0, "rem":I
    if-nez v0, :cond_3

    .line 2013
    sget-object v3, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    goto :goto_0

    .line 2014
    :cond_3
    new-instance v3, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    new-array v5, v5, [I

    aput v0, v5, v6

    invoke-direct {v3, v4, v5}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    goto :goto_0

    .line 2018
    .end local v0    # "rem":I
    .end local v2    # "val":I
    :cond_4
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v4, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v6, v3, v6, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(I[II[I)I

    move-result v3

    if-gez v3, :cond_5

    move-object v3, p0

    .line 2019
    goto :goto_0

    .line 2022
    :cond_5
    invoke-direct {p1}, Lcom/verizon/vcast/apps/VzwBigInt;->quickPow2Check()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2025
    invoke-virtual {p1}, Lcom/verizon/vcast/apps/VzwBigInt;->abs()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-direct {p0, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->lastNBits(I)[I

    move-result-object v1

    .line 2034
    .local v1, "res":[I
    :goto_1
    new-instance v3, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    invoke-direct {v3, v4, v1}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    goto :goto_0

    .line 2029
    .end local v1    # "res":[I
    :cond_6
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    new-array v1, v3, [I

    .line 2030
    .restart local v1    # "res":[I
    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v4, v1

    invoke-static {v3, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2031
    iget-object v3, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v1, v3}, Lcom/verizon/vcast/apps/VzwBigInt;->remainder([I[I)[I

    move-result-object v1

    goto :goto_1
.end method

.method public setBit(I)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    .line 2502
    if-gez p1, :cond_0

    .line 2504
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Bit address less than zero"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2507
    :cond_0
    invoke-virtual {p0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 2518
    :goto_0
    return-object v0

    .line 2513
    :cond_1
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_2

    .line 2515
    invoke-direct {p0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->flipExistingBit(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    goto :goto_0

    .line 2518
    :cond_2
    sget-object v0, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {v0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftLeft(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->or(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v0

    goto :goto_0
.end method

.method public shiftLeft(I)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 4
    .param p1, "n"    # I

    .prologue
    const/4 v3, -0x1

    .line 2108
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    if-nez v1, :cond_1

    .line 2110
    :cond_0
    sget-object v1, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    .line 2137
    :goto_0
    return-object v1

    .line 2113
    :cond_1
    if-nez p1, :cond_2

    move-object v1, p0

    .line 2115
    goto :goto_0

    .line 2118
    :cond_2
    if-gez p1, :cond_3

    .line 2120
    neg-int v1, p1

    invoke-virtual {p0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftRight(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    goto :goto_0

    .line 2123
    :cond_3
    new-instance v0, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v2, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftLeft([II)[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    .line 2125
    .local v0, "result":Lcom/verizon/vcast/apps/VzwBigInt;
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    if-eq v1, v3, :cond_4

    .line 2127
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v1, :cond_6

    .line 2128
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 2127
    :goto_1
    iput v1, v0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    .line 2132
    :cond_4
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    if-eq v1, v3, :cond_5

    .line 2134
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/verizon/vcast/apps/VzwBigInt;->nBitLength:I

    :cond_5
    move-object v1, v0

    .line 2137
    goto :goto_0

    .line 2129
    :cond_6
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->nBits:I

    add-int/2addr v1, p1

    goto :goto_1
.end method

.method public shiftRight(I)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 4
    .param p1, "n"    # I

    .prologue
    const/4 v3, 0x0

    .line 2202
    if-nez p1, :cond_0

    move-object v1, p0

    .line 2221
    :goto_0
    return-object v1

    .line 2207
    :cond_0
    if-gez p1, :cond_1

    .line 2209
    neg-int v1, p1

    invoke-virtual {p0, v1}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftLeft(I)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    goto :goto_0

    .line 2212
    :cond_1
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v1

    if-lt p1, v1, :cond_3

    .line 2214
    iget v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v1, :cond_2

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->valueOf(J)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    goto :goto_0

    .line 2217
    :cond_3
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v1, v1

    new-array v0, v1, [I

    .line 2218
    .local v0, "res":[I
    iget-object v1, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2219
    invoke-static {v3, v0, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->shiftRightInPlace(I[II)V

    .line 2221
    new-instance v1, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    invoke-direct {v1, v2, v0}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    goto :goto_0
.end method

.method public signum()I
    .locals 1

    .prologue
    .line 2228
    iget v0, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    return v0
.end method

.method public subtract(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 8
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    const/4 v7, 0x0

    .line 2263
    iget v4, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v4, v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, p0

    .line 2298
    :goto_0
    return-object v4

    .line 2267
    :cond_1
    iget v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v4, v4

    if-nez v4, :cond_3

    .line 2269
    :cond_2
    invoke-virtual {p1}, Lcom/verizon/vcast/apps/VzwBigInt;->negate()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v4

    goto :goto_0

    .line 2271
    :cond_3
    iget v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    iget v5, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-eq v4, v5, :cond_4

    .line 2273
    invoke-virtual {p1}, Lcom/verizon/vcast/apps/VzwBigInt;->negate()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v4

    goto :goto_0

    .line 2276
    :cond_4
    iget-object v4, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v5, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v7, v4, v7, v5}, Lcom/verizon/vcast/apps/VzwBigInt;->compareTo(I[II[I)I

    move-result v1

    .line 2277
    .local v1, "compare":I
    if-nez v1, :cond_5

    .line 2279
    sget-object v4, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    goto :goto_0

    .line 2283
    :cond_5
    if-gez v1, :cond_6

    .line 2285
    move-object v0, p1

    .line 2286
    .local v0, "bigun":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object v2, p0

    .line 2294
    .local v2, "littlun":Lcom/verizon/vcast/apps/VzwBigInt;
    :goto_1
    iget-object v4, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v4, v4

    new-array v3, v4, [I

    .line 2296
    .local v3, "res":[I
    iget-object v4, v0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v5, v3

    invoke-static {v4, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2298
    new-instance v4, Lcom/verizon/vcast/apps/VzwBigInt;

    iget v5, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    mul-int/2addr v5, v1

    iget-object v6, v2, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    invoke-direct {p0, v7, v3, v7, v6}, Lcom/verizon/vcast/apps/VzwBigInt;->subtract(I[II[I)[I

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    goto :goto_0

    .line 2290
    .end local v0    # "bigun":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v2    # "littlun":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v3    # "res":[I
    :cond_6
    move-object v0, p0

    .line 2291
    .restart local v0    # "bigun":Lcom/verizon/vcast/apps/VzwBigInt;
    move-object v2, p1

    .restart local v2    # "littlun":Lcom/verizon/vcast/apps/VzwBigInt;
    goto :goto_1
.end method

.method public testBit(I)Z
    .locals 6
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ArithmeticException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2737
    if-gez p1, :cond_0

    .line 2739
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "Bit position must not be negative"

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2742
    :cond_0
    iget v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v2, :cond_2

    .line 2744
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->not()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/verizon/vcast/apps/VzwBigInt;->testBit(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 2752
    :goto_0
    return v2

    :cond_1
    move v2, v5

    .line 2744
    goto :goto_0

    .line 2747
    :cond_2
    div-int/lit8 v1, p1, 0x20

    .line 2748
    .local v1, "wordNum":I
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v2, v2

    if-lt v1, v2, :cond_3

    move v2, v4

    .line 2749
    goto :goto_0

    .line 2751
    :cond_3
    iget-object v2, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    iget-object v3, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v3, v3

    sub-int/2addr v3, v5

    sub-int/2addr v3, v1

    aget v0, v2, v3

    .line 2752
    .local v0, "word":I
    rem-int/lit8 v2, p1, 0x20

    shr-int v2, v0, v2

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2303
    iget v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v7, :cond_0

    .line 2305
    new-array v7, v8, [B

    .line 2375
    :goto_0
    return-object v7

    .line 2308
    :cond_0
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v0

    .line 2309
    .local v0, "bitLength":I
    div-int/lit8 v7, v0, 0x8

    add-int/lit8 v7, v7, 0x1

    new-array v1, v7, [B

    .line 2311
    .local v1, "bytes":[B
    iget-object v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v6, v7

    .line 2312
    .local v6, "magIndex":I
    array-length v2, v1

    .line 2314
    .local v2, "bytesIndex":I
    iget v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v7, :cond_4

    .line 2316
    :goto_1
    if-gt v6, v8, :cond_2

    .line 2325
    iget-object v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v4, v7, v9

    .line 2326
    .local v4, "lastMag":I
    :goto_2
    and-int/lit16 v7, v4, -0x100

    if-nez v7, :cond_3

    .line 2332
    add-int/lit8 v2, v2, -0x1

    int-to-byte v7, v4

    aput-byte v7, v1, v2

    :cond_1
    :goto_3
    move-object v7, v1

    .line 2375
    goto :goto_0

    .line 2318
    .end local v4    # "lastMag":I
    :cond_2
    iget-object v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    add-int/lit8 v6, v6, -0x1

    aget v5, v7, v6

    .line 2319
    .local v5, "mag":I
    add-int/lit8 v2, v2, -0x1

    int-to-byte v7, v5

    aput-byte v7, v1, v2

    .line 2320
    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 2321
    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 2322
    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    goto :goto_1

    .line 2328
    .end local v5    # "mag":I
    .restart local v4    # "lastMag":I
    :cond_3
    add-int/lit8 v2, v2, -0x1

    int-to-byte v7, v4

    aput-byte v7, v1, v2

    .line 2329
    ushr-int/lit8 v4, v4, 0x8

    goto :goto_2

    .line 2336
    .end local v4    # "lastMag":I
    :cond_4
    const/4 v3, 0x1

    .line 2338
    .local v3, "carry":Z
    :goto_4
    if-gt v6, v8, :cond_6

    .line 2353
    iget-object v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v4, v7, v9

    .line 2355
    .restart local v4    # "lastMag":I
    if-eqz v3, :cond_5

    .line 2358
    add-int/lit8 v4, v4, -0x1

    .line 2361
    :cond_5
    :goto_5
    and-int/lit16 v7, v4, -0x100

    if-nez v7, :cond_9

    .line 2367
    add-int/lit8 v2, v2, -0x1

    xor-int/lit8 v7, v4, -0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 2369
    if-lez v2, :cond_1

    .line 2371
    add-int/lit8 v2, v2, -0x1

    const/4 v7, -0x1

    aput-byte v7, v1, v2

    goto :goto_3

    .line 2340
    .end local v4    # "lastMag":I
    :cond_6
    iget-object v7, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    add-int/lit8 v6, v6, -0x1

    aget v7, v7, v6

    xor-int/lit8 v5, v7, -0x1

    .line 2342
    .restart local v5    # "mag":I
    if-eqz v3, :cond_7

    .line 2344
    add-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_8

    move v3, v8

    .line 2347
    :cond_7
    :goto_6
    add-int/lit8 v2, v2, -0x1

    int-to-byte v7, v5

    aput-byte v7, v1, v2

    .line 2348
    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 2349
    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v7, v5, 0x10

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 2350
    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v7, v5, 0x18

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    goto :goto_4

    :cond_8
    move v3, v9

    .line 2344
    goto :goto_6

    .line 2363
    .end local v5    # "mag":I
    .restart local v4    # "lastMag":I
    :cond_9
    add-int/lit8 v2, v2, -0x1

    xor-int/lit8 v7, v4, -0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v2

    .line 2364
    ushr-int/lit8 v4, v4, 0x8

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2587
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/verizon/vcast/apps/VzwBigInt;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 14
    .param p1, "rdx"    # I

    .prologue
    const/16 v13, 0x31

    const/16 v12, 0x30

    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2592
    iget-object v8, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    if-nez v8, :cond_0

    .line 2594
    const-string v8, "null"

    .line 2664
    :goto_0
    return-object v8

    .line 2596
    :cond_0
    iget v8, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v8, :cond_1

    .line 2598
    const-string v8, "0"

    goto :goto_0

    .line 2601
    :cond_1
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 2604
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/16 v8, 0x10

    if-ne p1, v8, :cond_6

    .line 2606
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    array-length v8, v8

    if-lt v4, v8, :cond_5

    .line 2653
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2656
    .local v5, "s":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v11, :cond_3

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v8, v12, :cond_b

    .line 2659
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_c

    .line 2660
    const-string v5, "0"

    :cond_4
    :goto_3
    move-object v8, v5

    .line 2664
    goto :goto_0

    .line 2608
    .end local v5    # "s":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "0000000"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v9, v9, v4

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2609
    .local v3, "h":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x8

    sub-int/2addr v8, v9

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 2610
    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2606
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2613
    .end local v3    # "h":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_6
    if-ne p1, v9, :cond_8

    .line 2615
    invoke-virtual {v6, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2617
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->bitLength()I

    move-result v8

    sub-int v4, v8, v9

    .restart local v4    # "i":I
    :goto_4
    if-ltz v4, :cond_2

    .line 2619
    invoke-virtual {p0, v4}, Lcom/verizon/vcast/apps/VzwBigInt;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v13

    :goto_5
    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2617
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_7
    move v8, v12

    .line 2619
    goto :goto_5

    .line 2625
    .end local v4    # "i":I
    :cond_8
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    .line 2626
    .local v0, "S":Ljava/util/Stack;
    new-instance v2, Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-static {p1, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8, p1}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(Ljava/lang/String;I)V

    .line 2633
    .local v2, "base":Lcom/verizon/vcast/apps/VzwBigInt;
    invoke-virtual {p0}, Lcom/verizon/vcast/apps/VzwBigInt;->abs()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v7

    .line 2637
    .local v7, "u":Lcom/verizon/vcast/apps/VzwBigInt;
    :goto_6
    sget-object v8, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {v7, v8}, Lcom/verizon/vcast/apps/VzwBigInt;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2647
    :goto_7
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2649
    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 2639
    :cond_9
    invoke-virtual {v7, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->mod(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v1

    .line 2640
    .local v1, "b":Lcom/verizon/vcast/apps/VzwBigInt;
    sget-object v8, Lcom/verizon/vcast/apps/VzwBigInt;->ZERO:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {v1, v8}, Lcom/verizon/vcast/apps/VzwBigInt;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 2641
    const-string v8, "0"

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2644
    :goto_8
    invoke-virtual {v7, v2}, Lcom/verizon/vcast/apps/VzwBigInt;->divide(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v7

    goto :goto_6

    .line 2643
    :cond_a
    iget-object v8, v1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    aget v8, v8, v10

    invoke-static {v8, p1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 2657
    .end local v0    # "S":Ljava/util/Stack;
    .end local v1    # "b":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v2    # "base":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v7    # "u":Lcom/verizon/vcast/apps/VzwBigInt;
    .restart local v5    # "s":Ljava/lang/String;
    :cond_b
    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 2661
    :cond_c
    iget v8, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 2662
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3
.end method

.method public xor(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;
    .locals 13
    .param p1, "val"    # Lcom/verizon/vcast/apps/VzwBigInt;

    .prologue
    .line 2380
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v11, :cond_0

    move-object v11, p1

    .line 2435
    :goto_0
    return-object v11

    .line 2385
    :cond_0
    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-nez v11, :cond_1

    move-object v11, p0

    .line 2387
    goto :goto_0

    .line 2390
    :cond_1
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v11, :cond_5

    .line 2391
    iget-object v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v0, v11

    .line 2394
    .local v0, "aMag":[I
    :goto_1
    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-lez v11, :cond_6

    .line 2395
    iget-object v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v3, v11

    .line 2398
    .local v3, "bMag":[I
    :goto_2
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_2

    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_7

    :cond_2
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-ltz v11, :cond_3

    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-ltz v11, :cond_7

    :cond_3
    const/4 v11, 0x0

    move v10, v11

    .line 2399
    .local v10, "resultNeg":Z
    :goto_3
    array-length v11, v0

    array-length v12, v3

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2400
    .local v8, "resultLength":I
    new-array v9, v8, [I

    .line 2402
    .local v9, "resultMag":[I
    array-length v11, v9

    array-length v12, v0

    sub-int v1, v11, v12

    .line 2403
    .local v1, "aStart":I
    array-length v11, v9

    array-length v12, v3

    sub-int v4, v11, v12

    .line 2405
    .local v4, "bStart":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    array-length v11, v9

    if-lt v6, v11, :cond_8

    .line 2428
    new-instance v7, Lcom/verizon/vcast/apps/VzwBigInt;

    const/4 v11, 0x1

    invoke-direct {v7, v11, v9}, Lcom/verizon/vcast/apps/VzwBigInt;-><init>(I[I)V

    .line 2430
    .local v7, "result":Lcom/verizon/vcast/apps/VzwBigInt;
    if-eqz v10, :cond_4

    .line 2432
    invoke-virtual {v7}, Lcom/verizon/vcast/apps/VzwBigInt;->not()Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v7

    :cond_4
    move-object v11, v7

    .line 2435
    goto :goto_0

    .line 2392
    .end local v0    # "aMag":[I
    .end local v1    # "aStart":I
    .end local v3    # "bMag":[I
    .end local v4    # "bStart":I
    .end local v6    # "i":I
    .end local v7    # "result":Lcom/verizon/vcast/apps/VzwBigInt;
    .end local v8    # "resultLength":I
    .end local v9    # "resultMag":[I
    .end local v10    # "resultNeg":Z
    :cond_5
    sget-object v11, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {p0, v11}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v11

    iget-object v11, v11, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v0, v11

    goto :goto_1

    .line 2396
    .restart local v0    # "aMag":[I
    :cond_6
    sget-object v11, Lcom/verizon/vcast/apps/VzwBigInt;->ONE:Lcom/verizon/vcast/apps/VzwBigInt;

    invoke-virtual {p1, v11}, Lcom/verizon/vcast/apps/VzwBigInt;->add(Lcom/verizon/vcast/apps/VzwBigInt;)Lcom/verizon/vcast/apps/VzwBigInt;

    move-result-object v11

    iget-object v11, v11, Lcom/verizon/vcast/apps/VzwBigInt;->magnitude:[I

    move-object v3, v11

    goto :goto_2

    .line 2398
    .restart local v3    # "bMag":[I
    :cond_7
    const/4 v11, 0x1

    move v10, v11

    goto :goto_3

    .line 2407
    .restart local v1    # "aStart":I
    .restart local v4    # "bStart":I
    .restart local v6    # "i":I
    .restart local v8    # "resultLength":I
    .restart local v9    # "resultMag":[I
    .restart local v10    # "resultNeg":Z
    :cond_8
    if-lt v6, v1, :cond_c

    sub-int v11, v6, v1

    aget v11, v0, v11

    move v2, v11

    .line 2408
    .local v2, "aWord":I
    :goto_5
    if-lt v6, v4, :cond_d

    sub-int v11, v6, v4

    aget v11, v3, v11

    move v5, v11

    .line 2410
    .local v5, "bWord":I
    :goto_6
    iget v11, p0, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_9

    .line 2412
    xor-int/lit8 v2, v2, -0x1

    .line 2415
    :cond_9
    iget v11, p1, Lcom/verizon/vcast/apps/VzwBigInt;->sign:I

    if-gez v11, :cond_a

    .line 2417
    xor-int/lit8 v5, v5, -0x1

    .line 2420
    :cond_a
    xor-int v11, v2, v5

    aput v11, v9, v6

    .line 2422
    if-eqz v10, :cond_b

    .line 2424
    aget v11, v9, v6

    xor-int/lit8 v11, v11, -0x1

    aput v11, v9, v6

    .line 2405
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2407
    .end local v2    # "aWord":I
    .end local v5    # "bWord":I
    :cond_c
    const/4 v11, 0x0

    move v2, v11

    goto :goto_5

    .line 2408
    .restart local v2    # "aWord":I
    :cond_d
    const/4 v11, 0x0

    move v5, v11

    goto :goto_6
.end method
