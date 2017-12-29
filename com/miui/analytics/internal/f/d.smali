.class public final Lcom/miui/analytics/internal/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "UTF-8"

.field private static final b:I = 0xffff

.field private static final c:I = 0x2

.field private static final d:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/miui/analytics/internal/f/d;->d:[B

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    nop

    :array_a
    .array-data 1
        0x21t
        0x4dt
        0x49t
        0x41t
        0x53t
        0x21t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 132
    .line 134
    :try_start_1
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_93
    .catchall {:try_start_1 .. :try_end_8} :catchall_90

    .line 135
    :try_start_8
    invoke-static {v2}, Lcom/miui/analytics/internal/f/d;->a(Ljava/io/RandomAccessFile;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 136
    const-string v0, ""
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_6e
    .catchall {:try_start_8 .. :try_end_10} :catchall_7f

    .line 168
    :try_start_10
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_14

    .line 174
    :goto_13
    return-object v0

    .line 169
    :catch_14
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 138
    :cond_19
    :try_start_19
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 139
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 140
    const-wide/16 v6, 0x6

    sub-long/2addr v4, v6

    .line 142
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 143
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 145
    invoke-static {v0}, Lcom/miui/analytics/internal/f/d;->a([B)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 146
    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    .line 147
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 2067
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 2068
    invoke-interface {v2, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 2069
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2070
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    .line 150
    if-lez v0, :cond_66

    .line 151
    int-to-long v6, v0

    sub-long/2addr v4, v6

    .line 152
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 154
    new-array v3, v0, [B

    .line 155
    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 156
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v0, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_5d} :catch_6e
    .catchall {:try_start_19 .. :try_end_5d} :catchall_7f

    .line 168
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_13

    .line 169
    :catch_61
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13

    .line 158
    :cond_66
    :try_start_66
    new-instance v0, Ljava/io/IOException;

    const-string v3, "zip comment content not found"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6e} :catch_6e
    .catchall {:try_start_66 .. :try_end_6e} :catchall_7f

    :catch_6e
    move-exception v0

    move-object v0, v2

    .line 166
    :goto_70
    if-eqz v0, :cond_75

    .line 168
    :try_start_72
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_86

    :cond_75
    :goto_75
    move-object v0, v1

    .line 174
    goto :goto_13

    .line 161
    :cond_77
    :try_start_77
    new-instance v0, Ljava/io/IOException;

    const-string v3, "zip comment magic bytes not found"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_7f} :catch_6e
    .catchall {:try_start_77 .. :try_end_7f} :catchall_7f

    .line 166
    :catchall_7f
    move-exception v0

    :goto_80
    if-eqz v2, :cond_85

    .line 168
    :try_start_82
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_85} :catch_8b

    .line 171
    :cond_85
    :goto_85
    throw v0

    .line 169
    :catch_86
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75

    .line 169
    :catch_8b
    move-exception v1

    .line 170
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_85

    .line 166
    :catchall_90
    move-exception v0

    move-object v2, v1

    goto :goto_80

    :catch_93
    move-exception v0

    move-object v0, v1

    goto :goto_70
.end method

.method private static a(Ljava/io/DataInput;)S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 68
    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    .line 69
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 70
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method private static a(ILjava/io/DataOutput;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    int-to-short v1, p0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 64
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p0}, Lcom/miui/analytics/internal/f/d;->b(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "zip comment already exists, ignore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_e
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 79
    array-length v1, v0

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x6

    .line 80
    const v2, 0xffff

    if-le v2, v1, :cond_26

    .line 81
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "comment too long, ignore."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_26
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x2

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 87
    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/d;->a(ILjava/io/DataOutput;)V

    .line 1057
    invoke-interface {v2, v0}, Ljava/io/DataOutput;->write([B)V

    .line 91
    array-length v0, v0

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/d;->a(ILjava/io/DataOutput;)V

    .line 93
    sget-object v0, Lcom/miui/analytics/internal/f/d;->d:[B

    .line 2057
    invoke-interface {v2, v0}, Ljava/io/DataOutput;->write([B)V

    .line 94
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 95
    return-void
.end method

.method private static a([BLjava/io/DataOutput;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-interface {p1, p0}, Ljava/io/DataOutput;->write([B)V

    .line 58
    return-void
.end method

.method private static a(Ljava/io/RandomAccessFile;)Z
    .registers 7

    .prologue
    .line 118
    :try_start_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    .line 119
    const/4 v2, 0x6

    new-array v2, v2, [B

    .line 120
    const-wide/16 v4, 0x6

    sub-long/2addr v0, v4

    .line 122
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 123
    invoke-virtual {p0, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 125
    invoke-static {v2}, Lcom/miui/analytics/internal/f/d;->a([B)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result v0

    .line 127
    :goto_14
    return v0

    :catch_15
    move-exception v0

    const/4 v0, 0x0

    goto :goto_14
.end method

.method private static a([B)Z
    .registers 6

    .prologue
    const/4 v4, 0x6

    const/4 v0, 0x0

    .line 45
    array-length v1, p0

    if-eq v1, v4, :cond_6

    .line 53
    :cond_5
    :goto_5
    return v0

    :cond_6
    move v1, v0

    .line 48
    :goto_7
    if-ge v1, v4, :cond_14

    .line 49
    aget-byte v2, p0, v1

    sget-object v3, Lcom/miui/analytics/internal/f/d;->d:[B

    aget-byte v3, v3, v1

    if-ne v2, v3, :cond_5

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 53
    :cond_14
    const/4 v0, 0x1

    goto :goto_5
.end method

.method private static b(Ljava/io/File;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v2, 0x0

    .line 100
    :try_start_1
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_20

    .line 101
    :try_start_8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    .line 102
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 103
    const-wide/16 v4, 0x6

    sub-long/2addr v2, v4

    .line 105
    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 106
    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 108
    invoke-static {v0}, Lcom/miui/analytics/internal/f/d;->a([B)Z
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_28

    move-result v0

    .line 111
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 108
    return v0

    .line 110
    :catchall_20
    move-exception v0

    move-object v1, v2

    :goto_22
    if-eqz v1, :cond_27

    .line 111
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    :cond_27
    throw v0

    .line 110
    :catchall_28
    move-exception v0

    goto :goto_22
.end method

.method private static c(Ljava/io/File;)Ljava/lang/String;
    .registers 9

    .prologue
    const-wide/16 v4, 0x2800

    const/4 v6, 0x0

    .line 179
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 183
    :try_start_7
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v7, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_7a
    .catchall {:try_start_7 .. :try_end_e} :catchall_90

    .line 184
    :try_start_e
    invoke-static {v7}, Lcom/miui/analytics/internal/f/d;->a(Ljava/io/RandomAccessFile;)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_ab
    .catchall {:try_start_e .. :try_end_11} :catchall_a3

    move-result v0

    if-nez v0, :cond_1e

    .line 218
    :try_start_14
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_17} :catch_19

    :goto_17
    move-object v0, v6

    .line 224
    :goto_18
    return-object v0

    .line 219
    :catch_19
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17

    .line 187
    :cond_1e
    :try_start_1e
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2800

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_2a} :catch_ab
    .catchall {:try_start_1e .. :try_end_2a} :catchall_a3

    move-result-object v1

    .line 188
    :try_start_2b
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 190
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 193
    const/16 v2, 0x27fa

    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 194
    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 196
    invoke-static {v0}, Lcom/miui/analytics/internal/f/d;->a([B)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 198
    const/16 v0, 0x27f8

    invoke-virtual {v1, v0}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 200
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->getShort()S

    move-result v0

    .line 201
    if-lez v0, :cond_6b

    .line 202
    rsub-int v2, v0, 0x27f8

    .line 203
    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 205
    new-array v2, v0, [B

    .line 206
    invoke-virtual {v1, v2}, Ljava/nio/MappedByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 207
    new-instance v0, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5d} :catch_af
    .catchall {:try_start_2b .. :try_end_5d} :catchall_a6

    .line 213
    if-eqz v1, :cond_62

    .line 214
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    .line 218
    :cond_62
    :try_start_62
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_18

    .line 219
    :catch_66
    move-exception v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18

    .line 213
    :cond_6b
    if-eqz v1, :cond_70

    .line 214
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    .line 218
    :cond_70
    :try_start_70
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_75

    :cond_73
    :goto_73
    move-object v0, v6

    .line 224
    goto :goto_18

    .line 219
    :catch_75
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_73

    .line 210
    :catch_7a
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    .line 211
    :goto_7d
    :try_start_7d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_a8

    .line 213
    if-eqz v1, :cond_85

    .line 214
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    .line 216
    :cond_85
    if-eqz v2, :cond_73

    .line 218
    :try_start_87
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_73

    .line 219
    :catch_8b
    move-exception v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_73

    .line 213
    :catchall_90
    move-exception v0

    move-object v1, v6

    move-object v7, v6

    :goto_93
    if-eqz v1, :cond_98

    .line 214
    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->clear()Ljava/nio/Buffer;

    .line 216
    :cond_98
    if-eqz v7, :cond_9d

    .line 218
    :try_start_9a
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 221
    :cond_9d
    :goto_9d
    throw v0

    .line 219
    :catch_9e
    move-exception v1

    .line 220
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9d

    .line 213
    :catchall_a3
    move-exception v0

    move-object v1, v6

    goto :goto_93

    :catchall_a6
    move-exception v0

    goto :goto_93

    :catchall_a8
    move-exception v0

    move-object v7, v2

    goto :goto_93

    .line 210
    :catch_ab
    move-exception v0

    move-object v1, v6

    move-object v2, v7

    goto :goto_7d

    :catch_af
    move-exception v0

    move-object v2, v7

    goto :goto_7d
.end method
