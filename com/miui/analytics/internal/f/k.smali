.class public final Lcom/miui/analytics/internal/f/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 82
    if-nez p0, :cond_5

    .line 83
    const-string v0, ""

    .line 93
    :goto_4
    return-object v0

    .line 85
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_35

    aget-byte v0, p0, v1

    .line 87
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    :goto_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2e

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 91
    :cond_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 93
    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 97
    if-eqz p0, :cond_9

    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_9

    .line 99
    :try_start_6
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 104
    :cond_9
    :goto_9
    return-void

    .line 100
    :catch_a
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 5

    .prologue
    const/16 v0, 0x2000

    .line 46
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 48
    new-array v0, v0, [B

    .line 51
    :goto_9
    const/4 v2, 0x0

    const/16 v3, 0x2000

    :try_start_c
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_23

    .line 52
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17
    .catchall {:try_start_c .. :try_end_16} :catchall_2e

    goto :goto_9

    .line 55
    :catch_17
    move-exception v0

    .line 56
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2e

    .line 59
    invoke-static {p0}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 60
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 57
    const/4 v0, 0x0

    :goto_22
    return-object v0

    .line 54
    :cond_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_17
    .catchall {:try_start_23 .. :try_end_26} :catchall_2e

    move-result-object v0

    .line 59
    invoke-static {p0}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 60
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_22

    .line 59
    :catchall_2e
    move-exception v0

    invoke-static {p0}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 60
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static a(Ljava/io/InputStream;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    if-nez p0, :cond_4

    .line 21
    const/4 v0, 0x0

    .line 42
    :goto_3
    return-object v0

    .line 26
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 34
    :goto_d
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 35
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d

    .line 38
    :cond_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 39
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 42
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 65
    if-eqz p0, :cond_1b

    .line 66
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    :try_start_8
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1c
    .catchall {:try_start_8 .. :try_end_d} :catchall_27

    .line 70
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_31
    .catchall {:try_start_d .. :try_end_14} :catchall_2f

    .line 74
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 76
    :goto_17
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 78
    :cond_1b
    return-object v0

    .line 71
    :catch_1c
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 72
    :goto_20
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2f

    .line 74
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_17

    :catchall_27
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2b
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2f
    move-exception v0

    goto :goto_2b

    .line 71
    :catch_31
    move-exception v0

    goto :goto_20
.end method

.method private static b(Ljava/io/InputStream;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    .line 1020
    if-nez p0, :cond_4

    .line 1021
    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 1026
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1029
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 1034
    :goto_d
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 1035
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d

    .line 1038
    :cond_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1039
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 1042
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method
