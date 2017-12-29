.class public final Lcom/miui/analytics/internal/e/b;
.super Lcom/miui/analytics/internal/e/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/analytics/internal/e/l",
        "<",
        "Lcom/miui/analytics/internal/d/i;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "ConfigServer"

.field private static c:Ljava/lang/String; = "success"

.field private static d:Ljava/lang/String; = "detail"

.field private static e:Ljava/lang/String; = "https://sdkconfig.ad.intl.xiaomi.com/api/detail/"


# instance fields
.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    const-string v0, "https://sdkconfig.ad.intl.xiaomi.com/api/detail/"

    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/e/l;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/e/b;->f:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/analytics/internal/e/e;
    .registers 10

    .prologue
    .line 37
    new-instance v0, Lcom/miui/analytics/internal/e/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/miui/analytics/internal/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/analytics/internal/e/b;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/analytics/internal/e/e;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/miui/analytics/internal/e/b;->c()J

    move-result-wide v2

    .line 39
    invoke-static {}, Lcom/miui/analytics/internal/e/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v4, "ts"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/miui/analytics/internal/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v4, "nonce"

    invoke-virtual {v0, v4, v1}, Lcom/miui/analytics/internal/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v4, 0x3

    new-array v4, v4, [Lorg/apache/http/NameValuePair;

    const/4 v5, 0x0

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "packageNameMd5"

    iget-object v8, p0, Lcom/miui/analytics/internal/e/b;->f:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ts"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v6, v4, v5

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nonce"

    invoke-direct {v3, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v3, v4, v2

    invoke-virtual {p0, v4}, Lcom/miui/analytics/internal/e/b;->a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v1

    .line 45
    const-string v2, "sign"

    invoke-virtual {v0, v2, v1}, Lcom/miui/analytics/internal/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip, deflate"

    invoke-virtual {v0, v1, v2}, Lcom/miui/analytics/internal/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "ConfigServer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public final a(Lcom/miui/analytics/internal/e/f;)Lcom/miui/analytics/internal/e/i;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/analytics/internal/e/f;",
            ")",
            "Lcom/miui/analytics/internal/e/i",
            "<",
            "Lcom/miui/analytics/internal/d/i;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {p1}, Lcom/miui/analytics/internal/e/b;->b(Lcom/miui/analytics/internal/e/f;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 55
    const-string v0, "ConfigServer"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "HttpResponse is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_15
    :goto_15
    new-instance v0, Lcom/miui/analytics/internal/e/a;

    invoke-direct {v0}, Lcom/miui/analytics/internal/e/a;-><init>()V

    invoke-static {v0}, Lcom/miui/analytics/internal/e/i;->a(Lcom/miui/analytics/internal/e/a;)Lcom/miui/analytics/internal/e/i;

    move-result-object v0

    :goto_1e
    return-object v0

    .line 58
    :cond_1f
    :try_start_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v2, "success"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 60
    const-string v2, "detail"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_15

    .line 62
    new-instance v2, Lcom/miui/analytics/internal/d/i;

    invoke-direct {v2, v0}, Lcom/miui/analytics/internal/d/i;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v2}, Lcom/miui/analytics/internal/e/i;->a(Ljava/lang/Object;)Lcom/miui/analytics/internal/e/i;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3c} :catch_3e

    move-result-object v0

    goto :goto_1e

    .line 65
    :catch_3e
    move-exception v0

    .line 66
    const-string v2, "ConfigServer"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http response:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v1, "ConfigServer"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fail to parseHttpResponse: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method
