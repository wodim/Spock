.class public final Lcom/miui/analytics/internal/e/n;
.super Lcom/miui/analytics/internal/e/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/miui/analytics/internal/e/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "TrackingServer"

.field private static c:Ljava/lang/String; = "https://tracking.intl.miui.com/track/spock"


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/analytics/internal/h;)V
    .registers 5

    .prologue
    .line 39
    invoke-static {p2}, Lcom/miui/analytics/internal/e/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/e/l;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/e/n;->d:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/analytics/internal/e/n;->f:Z

    .line 40
    iput-object p1, p0, Lcom/miui/analytics/internal/e/n;->e:Landroid/content/Context;

    .line 41
    if-eqz p3, :cond_1a

    .line 42
    iget-object v0, p0, Lcom/miui/analytics/internal/e/n;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_1a
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {p2}, Lcom/miui/analytics/internal/e/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/e/l;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/e/n;->d:Ljava/util/List;

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/analytics/internal/e/n;->f:Z

    .line 48
    iput-object p1, p0, Lcom/miui/analytics/internal/e/n;->e:Landroid/content/Context;

    .line 49
    if-eqz p3, :cond_1a

    .line 50
    iget-object v0, p0, Lcom/miui/analytics/internal/e/n;->d:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 52
    :cond_1a
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    if-eqz p0, :cond_3

    :goto_2
    return-object p0

    :cond_3
    const-string p0, "https://tracking.intl.miui.com/track/spock"

    goto :goto_2
.end method

.method private e()Ljava/lang/String;
    .registers 9

    .prologue
    .line 112
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 114
    :try_start_5
    iget-object v0, p0, Lcom/miui/analytics/internal/e/n;->e:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/analytics/internal/e/n;->f:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/a/f$a;->a(Landroid/content/Context;Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object v3

    .line 115
    const-string v0, "st"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "H"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_33
    iget-object v0, p0, Lcom/miui/analytics/internal/e/n;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_64

    .line 119
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 120
    iget-object v0, p0, Lcom/miui/analytics/internal/e/n;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 121
    invoke-static {v0}, Lcom/miui/analytics/internal/a/f$a;->a(Lcom/miui/analytics/internal/h;)Lorg/json/JSONObject;

    move-result-object v6

    .line 122
    invoke-static {v3, v6}, Lcom/miui/analytics/internal/a/f$a;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 123
    const-string v7, "H"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 124
    const-string v6, "B"

    invoke-static {v0}, Lcom/miui/analytics/internal/a/f$a;->b(Lcom/miui/analytics/internal/h;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_33

    .line 131
    :cond_64
    const-string v0, "B"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_69} :catch_6e

    .line 135
    :goto_69
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 132
    :catch_6e
    move-exception v0

    .line 133
    const-string v1, "TrackingServer"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "buildPayload exception: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69
.end method


# virtual methods
.method public final a()Lcom/miui/analytics/internal/e/e;
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v3, Lcom/miui/analytics/internal/e/e;

    iget-object v0, p0, Lcom/miui/analytics/internal/e/n;->a:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/miui/analytics/internal/e/e;-><init>(Ljava/lang/String;)V

    .line 65
    sget v0, Lcom/miui/analytics/internal/e/e$b;->a:I

    invoke-virtual {v3, v0}, Lcom/miui/analytics/internal/e/e;->a(I)V

    .line 67
    :try_start_e
    invoke-virtual {p0}, Lcom/miui/analytics/internal/e/n;->c()J

    move-result-wide v4

    .line 68
    invoke-static {}, Lcom/miui/analytics/internal/e/n;->d()Ljava/lang/String;

    move-result-object v6

    .line 69
    invoke-direct {p0}, Lcom/miui/analytics/internal/e/n;->e()Ljava/lang/String;

    move-result-object v7

    .line 70
    const-string v0, "TrackingServer"

    const-string v8, "url = %s \npayload = %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/miui/analytics/internal/e/n;->a:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v0, 0x0

    .line 73
    iget-object v8, p0, Lcom/miui/analytics/internal/e/n;->e:Landroid/content/Context;

    invoke-static {v8}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/analytics/internal/d/j;->d()Z

    move-result v8

    if-eqz v8, :cond_fb

    .line 75
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const v9, 0x186a0

    if-le v8, v9, :cond_fb

    .line 76
    invoke-static {v7}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/lang/String;)[B

    move-result-object v8

    .line 77
    if-eqz v8, :cond_fb

    .line 78
    const/16 v0, 0xa

    invoke-static {v8, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_fb

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    .line 82
    const-string v9, "TrackingServer"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "compress = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const v9, 0x3e99999a    # 0.3f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_fb

    .line 91
    :goto_7a
    if-eqz v1, :cond_d7

    .line 93
    const-string v1, "value"

    invoke-virtual {v3, v1, v0}, Lcom/miui/analytics/internal/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "gzip"

    const-string v2, "1"

    invoke-virtual {v3, v1, v2}, Lcom/miui/analytics/internal/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_88
    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/http/NameValuePair;

    const/4 v2, 0x0

    new-instance v7, Lorg/apache/http/message/BasicNameValuePair;

    const-string v8, "value"

    invoke-direct {v7, v8, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v1, v2

    const/4 v0, 0x1

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ts"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    const/4 v0, 0x2

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "nonce"

    invoke-direct {v2, v7, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v1, v0

    invoke-virtual {p0, v1}, Lcom/miui/analytics/internal/e/n;->a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;

    move-result-object v0

    .line 102
    const-string v1, "sign"

    invoke-virtual {v3, v1, v0}, Lcom/miui/analytics/internal/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "ts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/miui/analytics/internal/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "nonce"

    invoke-virtual {v3, v0, v6}, Lcom/miui/analytics/internal/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_d6
    return-object v3

    .line 96
    :cond_d7
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 97
    const-string v1, "value"

    invoke-virtual {v3, v1, v0}, Lcom/miui/analytics/internal/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v1, "gzip"

    const-string v2, "0"

    invoke-virtual {v3, v1, v2}, Lcom/miui/analytics/internal/e/e;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_ed} :catch_ee

    goto :goto_88

    .line 105
    :catch_ee
    move-exception v0

    .line 106
    const-string v1, "TrackingServer"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "buildHttpRequest exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d6

    :cond_fb
    move v1, v2

    goto/16 :goto_7a
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
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {p1}, Lcom/miui/analytics/internal/e/n;->b(Lcom/miui/analytics/internal/e/f;)Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 142
    const-string v0, "TrackingServer"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http response is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_15
    :goto_15
    new-instance v0, Lcom/miui/analytics/internal/e/a;

    invoke-direct {v0}, Lcom/miui/analytics/internal/e/a;-><init>()V

    invoke-static {v0}, Lcom/miui/analytics/internal/e/i;->a(Lcom/miui/analytics/internal/e/a;)Lcom/miui/analytics/internal/e/i;

    move-result-object v0

    :goto_1e
    return-object v0

    .line 145
    :cond_1f
    :try_start_1f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 146
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    .line 147
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/miui/analytics/internal/e/i;->a(Ljava/lang/Object;)Lcom/miui/analytics/internal/e/i;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_1e

    .line 149
    :catch_33
    move-exception v0

    .line 150
    const-string v2, "TrackingServer"

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

    .line 151
    const-string v1, "TrackingServer"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseHttpResponse exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public final a(Z)V
    .registers 2

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/miui/analytics/internal/e/n;->f:Z

    .line 56
    return-void
.end method
