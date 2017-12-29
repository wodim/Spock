.class public final Lcom/miui/analytics/internal/e/g;
.super Lcom/miui/analytics/internal/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/e/g$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "HttpsClient"

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    new-instance v0, Lcom/miui/analytics/internal/e/g$1;

    invoke-direct {v0}, Lcom/miui/analytics/internal/e/g$1;-><init>()V

    sput-object v0, Lcom/miui/analytics/internal/e/g;->b:Ljava/util/ArrayList;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/analytics/internal/e/d;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/miui/analytics/internal/e/g;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static a(Ljavax/net/ssl/HttpsURLConnection;Lcom/miui/analytics/internal/e/e;)V
    .registers 10

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 162
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setDoOutput(Z)V

    .line 163
    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->b()Ljava/util/List;

    move-result-object v4

    .line 164
    if-eqz v4, :cond_a5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a5

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    const/4 v0, 0x0

    move v3, v0

    :goto_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_62

    .line 167
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 168
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

    .line 171
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v5, "UTF8"

    invoke-static {v0, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v0, "&"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    :cond_5e
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_18

    .line 176
    :cond_62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_73

    .line 177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v2, v0

    .line 179
    :cond_73
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7c} :catch_8a
    .catchall {:try_start_2 .. :try_end_7c} :catchall_96

    .line 180
    :try_start_7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_86} :catch_a0
    .catchall {:try_start_7c .. :try_end_86} :catchall_9b

    .line 186
    :goto_86
    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 187
    :goto_89
    return-void

    .line 183
    :catch_8a
    move-exception v0

    .line 184
    :goto_8b
    :try_start_8b
    const-string v2, "HttpsClient"

    const-string v3, "Exception in post: "

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_92
    .catchall {:try_start_8b .. :try_end_92} :catchall_96

    .line 186
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_89

    :catchall_96
    move-exception v0

    :goto_97
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_9b
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_97

    .line 183
    :catch_a0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_8b

    :cond_a5
    move-object v0, v1

    goto :goto_86
.end method


# virtual methods
.method public final a(Lcom/miui/analytics/internal/e/e;)Lcom/miui/analytics/internal/e/f;
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 114
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v3, "https"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 116
    const-string v1, "HttpsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "is not a https request!"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 156
    :goto_39
    return-object v0

    .line 120
    :cond_3a
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 122
    new-instance v1, Lcom/miui/analytics/internal/e/g$a;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/miui/analytics/internal/e/g$a;-><init>(B)V

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 124
    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->c()Ljava/util/List;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_75

    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_53
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/NameValuePair;

    .line 127
    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6a} :catch_6b

    goto :goto_53

    .line 153
    :catch_6b
    move-exception v0

    .line 154
    const-string v1, "HttpsClient"

    const-string v3, "Exception in performRequest: "

    invoke-static {v1, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_73
    move-object v0, v2

    .line 156
    goto :goto_39

    .line 131
    :cond_75
    :try_start_75
    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->a()I

    move-result v1

    sget v3, Lcom/miui/analytics/internal/e/e$b;->b:I

    if-ne v1, v3, :cond_e7

    const-string v1, "GET"

    :goto_7f
    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Lcom/miui/analytics/internal/e/e;->a()I

    move-result v1

    sget v3, Lcom/miui/analytics/internal/e/e$b;->a:I

    if-ne v1, v3, :cond_94

    .line 133
    const-string v1, "HttpsClient"

    const-string v3, "The https request is POST"

    invoke-static {v1, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v0, p1}, Lcom/miui/analytics/internal/e/g;->a(Ljavax/net/ssl/HttpsURLConnection;Lcom/miui/analytics/internal/e/e;)V

    .line 137
    :cond_94
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 138
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 139
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 140
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v4

    .line 141
    packed-switch v4, :pswitch_data_ec

    goto :goto_73

    .line 143
    :pswitch_a9
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 144
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_ea

    .line 145
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_ea

    const-string v5, "gzip"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_ea

    .line 147
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v1

    .line 150
    :goto_db
    new-instance v1, Lcom/miui/analytics/internal/e/f;

    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getContentLength()I

    move-result v0

    invoke-direct {v1, v4, v0, v3}, Lcom/miui/analytics/internal/e/f;-><init>(IILjava/io/InputStream;)V

    move-object v0, v1

    goto/16 :goto_39

    .line 131
    :cond_e7
    const-string v1, "POST"
    :try_end_e9
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_e9} :catch_6b

    goto :goto_7f

    :cond_ea
    move-object v3, v1

    goto :goto_db

    .line 141
    :pswitch_data_ec
    .packed-switch 0xc8
        :pswitch_a9
    .end packed-switch
.end method
