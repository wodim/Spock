.class public final Lcom/miui/analytics/internal/e/o;
.super Lcom/miui/analytics/internal/e/d;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/miui/analytics/internal/e/d;-><init>()V

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;Lcom/miui/analytics/internal/e/e;)V
    .registers 10

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 62
    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->b()Ljava/util/List;

    move-result-object v4

    .line 63
    if-eqz v4, :cond_9c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9c

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const/4 v0, 0x0

    move v3, v0

    :goto_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_62

    .line 66
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 67
    if-eqz v0, :cond_5e

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5e

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5e

    .line 70
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_5e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_18

    .line 75
    :cond_62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_73

    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, v0

    .line 78
    :cond_73
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7c} :catch_8a
    .catchall {:try_start_2 .. :try_end_7c} :catchall_8f

    .line 79
    :try_start_7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_86} :catch_99
    .catchall {:try_start_7c .. :try_end_86} :catchall_94

    .line 84
    :goto_86
    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 85
    :goto_89
    return-void

    .line 84
    :catch_8a
    move-exception v0

    :goto_8b
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_89

    :catchall_8f
    move-exception v0

    :goto_90
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_94
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_90

    :catch_99
    move-exception v1

    move-object v1, v0

    goto :goto_8b

    :cond_9c
    move-object v0, v1

    goto :goto_86
.end method


# virtual methods
.method public final a(Lcom/miui/analytics/internal/e/e;)Lcom/miui/analytics/internal/e/f;
    .registers 7

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->d()Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 26
    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->c()Ljava/util/List;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_34

    .line 28
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 29
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :catch_31
    move-exception v0

    .line 55
    :goto_32
    const/4 v0, 0x0

    :goto_33
    return-object v0

    .line 32
    :cond_34
    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->a()I

    move-result v1

    sget v2, Lcom/miui/analytics/internal/e/e$b;->b:I

    if-ne v1, v2, :cond_9e

    const-string v1, "GET"

    :goto_3e
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->a()I

    move-result v1

    sget v2, Lcom/miui/analytics/internal/e/e$b;->a:I

    if-ne v1, v2, :cond_4c

    .line 34
    invoke-static {v0, p1}, Lcom/miui/analytics/internal/e/o;->a(Ljava/net/HttpURLConnection;Lcom/miui/analytics/internal/e/e;)V

    .line 37
    :cond_4c
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 38
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 39
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 40
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 41
    packed-switch v3, :pswitch_data_a4

    goto :goto_32

    .line 43
    :pswitch_61
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 44
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a1

    .line 45
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a1

    const-string v4, "gzip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_a1

    .line 47
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v1

    .line 50
    :goto_93
    new-instance v1, Lcom/miui/analytics/internal/e/f;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    invoke-direct {v1, v3, v0, v2}, Lcom/miui/analytics/internal/e/f;-><init>(IILjava/io/InputStream;)V

    move-object v0, v1

    goto :goto_33

    .line 32
    :cond_9e
    const-string v1, "POST"
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a0} :catch_31

    goto :goto_3e

    :cond_a1
    move-object v2, v1

    goto :goto_93

    .line 41
    nop

    :pswitch_data_a4
    .packed-switch 0xc8
        :pswitch_61
    .end packed-switch
.end method
