.class public Lcom/miui/analytics/internal/d/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/analytics/internal/d/c;


# static fields
.field private static final a:Ljava/lang/String; = "BasicDiscardJob"


# instance fields
.field private b:D

.field private c:J

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JDI)V
    .registers 7

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p3, p0, Lcom/miui/analytics/internal/d/a/a;->b:D

    .line 26
    iput-wide p1, p0, Lcom/miui/analytics/internal/d/a/a;->c:J

    .line 27
    iput p5, p0, Lcom/miui/analytics/internal/d/a/a;->d:I

    .line 28
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 3082
    if-nez p0, :cond_5

    .line 3083
    const-string v0, ""

    .line 3093
    :goto_4
    return-object v0

    .line 3085
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3086
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_35

    aget-byte v0, p0, v1

    .line 3087
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 3088
    :goto_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2e

    .line 3089
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 3091
    :cond_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3086
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 3093
    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 3097
    if-eqz p0, :cond_9

    instance-of v0, p0, Ljava/io/Closeable;

    if-eqz v0, :cond_9

    .line 3099
    :try_start_6
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_a

    .line 3104
    :cond_9
    :goto_9
    return-void

    .line 3100
    :catch_a
    move-exception v0

    .line 3101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method private a()Z
    .registers 5

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/miui/analytics/internal/d/a/a;->b:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_16

    iget-wide v0, p0, Lcom/miui/analytics/internal/d/a/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_16

    iget v0, p0, Lcom/miui/analytics/internal/d/a/a;->d:I

    if-gtz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 5

    .prologue
    const/16 v0, 0x2000

    .line 3046
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3048
    new-array v0, v0, [B

    .line 3051
    :goto_9
    const/4 v2, 0x0

    const/16 v3, 0x2000

    :try_start_c
    invoke-virtual {p0, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_23

    .line 3052
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_16} :catch_17
    .catchall {:try_start_c .. :try_end_16} :catchall_2e

    goto :goto_9

    .line 3055
    :catch_17
    move-exception v0

    .line 3056
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_2e

    .line 3059
    invoke-static {p0}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 3060
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 3057
    const/4 v0, 0x0

    :goto_22
    return-object v0

    .line 3054
    :cond_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_17
    .catchall {:try_start_23 .. :try_end_26} :catchall_2e

    move-result-object v0

    .line 3059
    invoke-static {p0}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 3060
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_22

    .line 3059
    :catchall_2e
    move-exception v0

    invoke-static {p0}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 3060
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
    .line 3020
    if-nez p0, :cond_4

    .line 3021
    const/4 v0, 0x0

    .line 3042
    :goto_3
    return-object v0

    .line 3026
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3029
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 3034
    :goto_d
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 3035
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d

    .line 3038
    :cond_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 3039
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 3042
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3065
    if-eqz p0, :cond_1b

    .line 3066
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3069
    :try_start_8
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_1c
    .catchall {:try_start_8 .. :try_end_d} :catchall_27

    .line 3070
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_31
    .catchall {:try_start_d .. :try_end_14} :catchall_2f

    .line 3074
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 3076
    :goto_17
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 3078
    :cond_1b
    return-object v0

    .line 3071
    :catch_1c
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    .line 3072
    :goto_20
    :try_start_20
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_2f

    .line 3074
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

    .line 3071
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
    .line 2015
    .line 2020
    if-nez p0, :cond_4

    .line 2021
    const/4 v0, 0x0

    :goto_3
    return-object v0

    .line 2026
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2029
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 2034
    :goto_d
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_19

    .line 2035
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_d

    .line 2038
    :cond_19
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 2039
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 2042
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/miui/analytics/internal/d/o;)V
    .registers 15

    .prologue
    .line 32
    const-string v0, "BasicDiscardJob"

    const-string v1, "run discard job"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Lcom/miui/analytics/internal/b/g;->c()Ljava/util/List;

    move-result-object v3

    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 37
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1d
    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 38
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 41
    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4b

    .line 42
    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_4b
    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 45
    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 47
    :cond_67
    invoke-static {p1}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v6

    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6f
    :goto_6f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ea

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 49
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 52
    iget-wide v8, p0, Lcom/miui/analytics/internal/d/a/a;->c:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_9e

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->d()J

    move-result-wide v10

    sub-long/2addr v8, v10

    iget-wide v10, p0, Lcom/miui/analytics/internal/d/a/a;->c:J

    cmp-long v1, v8, v10

    if-ltz v1, :cond_6f

    .line 57
    :cond_9e
    iget v1, p0, Lcom/miui/analytics/internal/d/a/a;->d:I

    if-lez v1, :cond_aa

    .line 58
    iget v1, p0, Lcom/miui/analytics/internal/d/a/a;->d:I

    invoke-virtual {v6, v0}, Lcom/miui/analytics/internal/d/j;->h(Lcom/miui/analytics/internal/h;)I

    move-result v8

    if-lt v1, v8, :cond_6f

    .line 62
    :cond_aa
    iget-wide v8, p0, Lcom/miui/analytics/internal/d/a/a;->b:D

    const-wide/16 v10, 0x0

    cmpl-double v1, v8, v10

    if-lez v1, :cond_cd

    .line 63
    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 64
    int-to-double v8, v1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v10, v1

    div-double/2addr v8, v10

    iget-wide v10, p0, Lcom/miui/analytics/internal/d/a/a;->b:D

    cmpg-double v1, v8, v10

    if-ltz v1, :cond_6f

    .line 1078
    :cond_cd
    iget-wide v8, p0, Lcom/miui/analytics/internal/d/a/a;->b:D

    const-wide/16 v10, 0x0

    cmpg-double v1, v8, v10

    if-gtz v1, :cond_e8

    iget-wide v8, p0, Lcom/miui/analytics/internal/d/a/a;->c:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gtz v1, :cond_e8

    iget v1, p0, Lcom/miui/analytics/internal/d/a/a;->d:I

    if-gtz v1, :cond_e8

    const/4 v1, 0x1

    .line 68
    :goto_e2
    if-nez v1, :cond_6f

    .line 69
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 1078
    :cond_e8
    const/4 v1, 0x0

    goto :goto_e2

    .line 72
    :cond_ea
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f3

    .line 73
    invoke-virtual {v2, v4}, Lcom/miui/analytics/internal/b/g;->b(Ljava/util/List;)V

    .line 75
    :cond_f3
    return-void
.end method
