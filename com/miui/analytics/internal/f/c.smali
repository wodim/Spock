.class public final Lcom/miui/analytics/internal/f/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:[C

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_14

    sput-object v0, Lcom/miui/analytics/internal/f/c;->a:[C

    .line 15
    const/16 v0, 0x80

    new-array v0, v0, [B

    fill-array-data v0, :array_58

    sput-object v0, Lcom/miui/analytics/internal/f/c;->b:[B

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 10
    nop

    :array_14
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    .line 15
    :array_58
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 9

    .prologue
    .line 24
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    array-length v2, p0

    .line 26
    const/4 v0, 0x0

    .line 28
    :goto_7
    if-ge v0, v2, :cond_2a

    .line 29
    add-int/lit8 v3, v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v4, v0, 0xff

    .line 30
    if-ne v3, v2, :cond_2f

    .line 31
    sget-object v0, Lcom/miui/analytics/internal/f/c;->a:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 32
    sget-object v0, Lcom/miui/analytics/internal/f/c;->a:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 33
    const-string v0, "=="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    :cond_2a
    :goto_2a
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_2f
    add-int/lit8 v5, v3, 0x1

    aget-byte v0, p0, v3

    and-int/lit16 v3, v0, 0xff

    .line 37
    if-ne v5, v2, :cond_61

    .line 38
    sget-object v0, Lcom/miui/analytics/internal/f/c;->a:[C

    ushr-int/lit8 v2, v4, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    sget-object v0, Lcom/miui/analytics/internal/f/c;->a:[C

    and-int/lit8 v2, v4, 0x3

    shl-int/lit8 v2, v2, 0x4

    and-int/lit16 v4, v3, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    or-int/2addr v2, v4

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 40
    sget-object v0, Lcom/miui/analytics/internal/f/c;->a:[C

    and-int/lit8 v2, v3, 0xf

    shl-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 41
    const-string v0, "="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2a

    .line 44
    :cond_61
    add-int/lit8 v0, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    .line 45
    sget-object v6, Lcom/miui/analytics/internal/f/c;->a:[C

    ushr-int/lit8 v7, v4, 0x2

    aget-char v6, v6, v7

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    sget-object v6, Lcom/miui/analytics/internal/f/c;->a:[C

    and-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x4

    and-int/lit16 v7, v3, 0xf0

    ushr-int/lit8 v7, v7, 0x4

    or-int/2addr v4, v7

    aget-char v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    sget-object v4, Lcom/miui/analytics/internal/f/c;->a:[C

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x2

    and-int/lit16 v6, v5, 0xc0

    ushr-int/lit8 v6, v6, 0x6

    or-int/2addr v3, v6

    aget-char v3, v4, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 48
    sget-object v3, Lcom/miui/analytics/internal/f/c;->a:[C

    and-int/lit8 v4, v5, 0x3f

    aget-char v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto/16 :goto_7
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 11

    .prologue
    const/16 v9, 0x3d

    const/4 v2, 0x0

    const/4 v8, -0x1

    .line 55
    .line 1064
    :try_start_4
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 1066
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 1067
    array-length v5, v4

    move v0, v2

    .line 1070
    :goto_11
    if-ge v0, v5, :cond_8b

    :cond_13
    move v1, v0

    .line 1073
    sget-object v6, Lcom/miui/analytics/internal/f/c;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    aget-byte v6, v6, v1

    .line 1074
    if-ge v0, v5, :cond_20

    if-eq v6, v8, :cond_13

    .line 1075
    :cond_20
    if-eq v6, v8, :cond_8b

    :cond_22
    move v1, v0

    .line 1079
    sget-object v7, Lcom/miui/analytics/internal/f/c;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    aget-byte v7, v7, v1

    .line 1080
    if-ge v0, v5, :cond_2f

    if-eq v7, v8, :cond_22

    .line 1081
    :cond_2f
    if-eq v7, v8, :cond_8b

    .line 1083
    shl-int/lit8 v1, v6, 0x2

    and-int/lit8 v6, v7, 0x30

    ushr-int/lit8 v6, v6, 0x4

    or-int/2addr v1, v6

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3c
    move v1, v0

    .line 1086
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v4, v1

    .line 1087
    if-ne v1, v9, :cond_4e

    .line 1088
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 1098
    :goto_4d
    return-object v0

    .line 1089
    :cond_4e
    sget-object v6, Lcom/miui/analytics/internal/f/c;->b:[B

    aget-byte v6, v6, v1

    .line 1090
    if-ge v0, v5, :cond_56

    if-eq v6, v8, :cond_3c

    .line 1091
    :cond_56
    if-eq v6, v8, :cond_8b

    .line 1093
    and-int/lit8 v1, v7, 0xf

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v7, v6, 0x3c

    ushr-int/lit8 v7, v7, 0x2

    or-int/2addr v1, v7

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1096
    :goto_65
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    .line 1097
    if-ne v0, v9, :cond_76

    .line 1098
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_4d

    .line 1099
    :cond_76
    sget-object v7, Lcom/miui/analytics/internal/f/c;->b:[B

    aget-byte v0, v7, v0

    .line 1100
    if-ge v1, v5, :cond_7e

    if-eq v0, v8, :cond_9d

    .line 1101
    :cond_7e
    if-eq v0, v8, :cond_8b

    .line 1103
    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v0, v6

    int-to-char v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v0, v1

    goto :goto_11

    .line 1105
    :cond_8b
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_94
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_94} :catch_96

    move-result-object v0

    goto :goto_4d

    .line 56
    :catch_96
    move-exception v0

    .line 57
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 59
    new-array v0, v2, [B

    goto :goto_4d

    :cond_9d
    move v0, v1

    goto :goto_65
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x3d

    const/4 v7, -0x1

    .line 64
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    const-string v0, "US-ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 67
    array-length v4, v3

    .line 68
    const/4 v0, 0x0

    .line 70
    :goto_10
    if-ge v0, v4, :cond_86

    .line 73
    :goto_12
    sget-object v5, Lcom/miui/analytics/internal/f/c;->b:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    aget-byte v5, v5, v0

    .line 74
    if-ge v1, v4, :cond_1e

    if-eq v5, v7, :cond_97

    .line 75
    :cond_1e
    if-eq v5, v7, :cond_86

    .line 79
    :goto_20
    sget-object v6, Lcom/miui/analytics/internal/f/c;->b:[B

    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    aget-byte v6, v6, v1

    .line 80
    if-ge v0, v4, :cond_2c

    if-eq v6, v7, :cond_95

    .line 81
    :cond_2c
    if-eq v6, v7, :cond_86

    .line 83
    shl-int/lit8 v1, v5, 0x2

    and-int/lit8 v5, v6, 0x30

    ushr-int/lit8 v5, v5, 0x4

    or-int/2addr v1, v5

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 86
    :goto_39
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v3, v0

    .line 87
    if-ne v0, v8, :cond_4a

    .line 88
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 105
    :goto_49
    return-object v0

    .line 89
    :cond_4a
    sget-object v5, Lcom/miui/analytics/internal/f/c;->b:[B

    aget-byte v5, v5, v0

    .line 90
    if-ge v1, v4, :cond_52

    if-eq v5, v7, :cond_93

    .line 91
    :cond_52
    if-eq v5, v7, :cond_86

    .line 93
    and-int/lit8 v0, v6, 0xf

    shl-int/lit8 v0, v0, 0x4

    and-int/lit8 v6, v5, 0x3c

    ushr-int/lit8 v6, v6, 0x2

    or-int/2addr v0, v6

    int-to-char v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 96
    :goto_61
    add-int/lit8 v0, v1, 0x1

    aget-byte v1, v3, v1

    .line 97
    if-ne v1, v8, :cond_72

    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_49

    .line 99
    :cond_72
    sget-object v6, Lcom/miui/analytics/internal/f/c;->b:[B

    aget-byte v1, v6, v1

    .line 100
    if-ge v0, v4, :cond_7a

    if-eq v1, v7, :cond_91

    .line 101
    :cond_7a
    if-eq v1, v7, :cond_86

    .line 103
    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_10

    .line 105
    :cond_86
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "iso8859-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_49

    :cond_91
    move v1, v0

    goto :goto_61

    :cond_93
    move v0, v1

    goto :goto_39

    :cond_95
    move v1, v0

    goto :goto_20

    :cond_97
    move v0, v1

    goto/16 :goto_12
.end method
