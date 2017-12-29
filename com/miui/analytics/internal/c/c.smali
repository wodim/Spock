.class public Lcom/miui/analytics/internal/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ReporterService"

.field private static final b:Z = false

.field private static volatile c:Lcom/miui/analytics/internal/c/c; = null

.field private static final d:Ljava/lang/String; = "event"

.field private static final e:Ljava/lang/String; = "reportUploadStatus"

.field private static final f:Ljava/lang/String; = "eid"

.field private static final g:Ljava/lang/String; = "counter"

.field private static final h:Ljava/lang/String; = "http://api.ad.xiaomi.com/video/uploadLog?appKey=PHONE_VIDEO"

.field private static final i:Ljava/lang/String; = "success"

.field private static final j:Ljava/lang/String; = "failure"

.field private static final n:D = 3.1415926535898

.field private static final o:J = 0x613841L


# instance fields
.field private k:Landroid/content/Context;

.field private l:Lcom/miui/analytics/internal/b/c;

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 57
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/c/c;->k:Landroid/content/Context;

    .line 58
    invoke-static {p1}, Lcom/miui/analytics/internal/b/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/c/c;->l:Lcom/miui/analytics/internal/b/c;

    .line 1063
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/c/c$1;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/c/c$1;-><init>(Lcom/miui/analytics/internal/c/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 60
    return-void
.end method

.method private static a(D)D
    .registers 6

    .prologue
    .line 2021
    const-wide v0, 0x400921fb54442d28L    # 3.1415926535898

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lcom/miui/analytics/internal/c/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/analytics/internal/c/c;->k:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/c/c;
    .registers 3

    .prologue
    .line 50
    const-class v1, Lcom/miui/analytics/internal/c/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/c/c;->c:Lcom/miui/analytics/internal/c/c;

    if-nez v0, :cond_e

    .line 51
    new-instance v0, Lcom/miui/analytics/internal/c/c;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/c/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/c/c;->c:Lcom/miui/analytics/internal/c/c;

    .line 53
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/c/c;->c:Lcom/miui/analytics/internal/c/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/miui/analytics/internal/c/c;Ljava/util/Date;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 29
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/Date;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 108
    if-nez p0, :cond_b

    .line 109
    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 111
    :cond_b
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 3

    .prologue
    .line 63
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/c/c$1;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/c/c$1;-><init>(Lcom/miui/analytics/internal/c/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .registers 13

    .prologue
    const-wide/16 v8, 0x1

    .line 184
    :try_start_2
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/miui/analytics/internal/c/c;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/miui/analytics/internal/c/c;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 186
    iget-object v1, p0, Lcom/miui/analytics/internal/c/c;->l:Lcom/miui/analytics/internal/b/c;

    invoke-virtual {v1, p1}, Lcom/miui/analytics/internal/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 187
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 188
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 189
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_79

    .line 190
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 196
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_79

    .line 202
    :goto_44
    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    if-eqz p2, :cond_61

    .line 204
    const-string v1, "success"

    const-string v2, "success"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 208
    :goto_57
    iget-object v0, p0, Lcom/miui/analytics/internal/c/c;->l:Lcom/miui/analytics/internal/b/c;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/miui/analytics/internal/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_60
    return-void

    .line 206
    :cond_61
    const-string v1, "failure"

    const-string v2, "failure"

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v2, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    add-long/2addr v2, v8

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6f} :catch_70

    goto :goto_57

    .line 209
    :catch_70
    move-exception v0

    .line 210
    const-string v1, "ReporterService"

    const-string v2, "handleSentEvent"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_60

    :cond_79
    move-object v0, v1

    goto :goto_44
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "http://api.ad.xiaomi.com/video/uploadLog?appKey=PHONE_VIDEO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 127
    :cond_e
    const/4 v0, 0x0

    .line 129
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method static synthetic b(Lcom/miui/analytics/internal/c/c;)Lcom/miui/analytics/internal/b/c;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/analytics/internal/c/c;->l:Lcom/miui/analytics/internal/b/c;

    return-object v0
.end method

.method private static b()V
    .registers 0

    .prologue
    .line 216
    return-void
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 142
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/miui/analytics/internal/c/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 143
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/c/c;->e(Ljava/lang/String;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 149
    :cond_16
    monitor-exit p0

    return-void

    .line 142
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 159
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 160
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/c/c;->a(Ljava/lang/String;Z)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 164
    :cond_f
    monitor-exit p0

    return-void

    .line 159
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static c(Lcom/miui/analytics/internal/h;)Z
    .registers 3

    .prologue
    .line 117
    if-eqz p0, :cond_e

    const-string v0, "spock_bugreport"

    invoke-virtual {p0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 119
    :cond_e
    const/4 v0, 0x0

    .line 121
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method private declared-synchronized d(Lcom/miui/analytics/internal/h;)V
    .registers 3

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->c(Lcom/miui/analytics/internal/h;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 134
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->e(Lcom/miui/analytics/internal/h;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/c/c;->e(Ljava/lang/String;)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 139
    :cond_e
    monitor-exit p0

    return-void

    .line 133
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 175
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/miui/analytics/internal/c/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 176
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/c/c;->a(Ljava/lang/String;Z)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 180
    :cond_17
    monitor-exit p0

    return-void

    .line 175
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static e(Lcom/miui/analytics/internal/h;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 239
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    :try_start_5
    const-string v1, "ck"

    invoke-virtual {p0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    invoke-virtual {p0}, Lcom/miui/analytics/internal/h;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 243
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/miui/analytics/internal/h;->e()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 244
    const-string v2, "_action_"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 246
    const-string v3, "action"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    :cond_33
    const-string v2, "_category_"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_45

    .line 250
    const-string v3, "category"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    :cond_45
    const-string v2, "_event_id_"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 254
    const-string v2, "event_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_57} :catch_5c

    .line 259
    :cond_57
    :goto_57
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_5c
    move-exception v1

    goto :goto_57
.end method

.method private e(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 231
    iget-object v0, p0, Lcom/miui/analytics/internal/c/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->c(Landroid/content/Context;)Lcom/miui/analytics/internal/f/n;

    move-result-object v0

    .line 232
    if-eqz v0, :cond_14

    sget-object v1, Lcom/miui/analytics/internal/f/n;->e:Lcom/miui/analytics/internal/f/n;

    if-eq v0, v1, :cond_14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 233
    const/4 v0, 0x1

    .line 235
    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 263
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 265
    :try_start_5
    const-string v1, "http://api.ad.xiaomi.com/video/uploadLog?appKey=PHONE_VIDEO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 266
    const/4 v1, 0x0

    const/16 v2, 0x3b

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 268
    :cond_14
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_19} :catch_1e

    .line 271
    :goto_19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_1e
    move-exception v1

    goto :goto_19
.end method


# virtual methods
.method public a(DDDD)D
    .registers 28

    .prologue
    .line 2013
    invoke-static/range {p1 .. p2}, Lcom/miui/analytics/internal/c/c;->a(D)D

    move-result-wide v0

    .line 2014
    invoke-static/range {p3 .. p4}, Lcom/miui/analytics/internal/c/c;->a(D)D

    move-result-wide v2

    .line 2015
    invoke-static/range {p5 .. p6}, Lcom/miui/analytics/internal/c/c;->a(D)D

    move-result-wide v4

    .line 2016
    invoke-static/range {p7 .. p8}, Lcom/miui/analytics/internal/c/c;->a(D)D

    move-result-wide v6

    .line 2017
    const-wide v8, 0x41584e1040000000L    # 6371393.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v14

    sub-double v2, v12, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    return-wide v0
.end method

.method public final declared-synchronized a(Lcom/miui/analytics/internal/h;)V
    .registers 4

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->c(Lcom/miui/analytics/internal/h;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 153
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->e(Lcom/miui/analytics/internal/h;)Ljava/lang/String;

    move-result-object v0

    .line 154
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/c/c;->a(Ljava/lang/String;Z)V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 156
    :cond_f
    monitor-exit p0

    return-void

    .line 152
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/miui/analytics/internal/h;)V
    .registers 4

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->c(Lcom/miui/analytics/internal/h;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/miui/analytics/internal/c/c;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 168
    invoke-static {p1}, Lcom/miui/analytics/internal/c/c;->e(Lcom/miui/analytics/internal/h;)Ljava/lang/String;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/c/c;->a(Ljava/lang/String;Z)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 172
    :cond_17
    monitor-exit p0

    return-void

    .line 167
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method
