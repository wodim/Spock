.class public final Lcom/miui/analytics/internal/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final D:Ljava/lang/Object;

.field private static E:Z = false

.field public static a:Z = false

.field private static final b:Ljava/lang/String; = "UU"

.field private static final c:Ljava/lang/String; = "tz"

.field private static final d:Ljava/lang/String; = "si"

.field private static final e:Ljava/lang/String; = "ts"

.field private static final f:Ljava/lang/String; = "U"

.field private static final g:Ljava/lang/String; = "P"

.field private static final h:Ljava/lang/String; = "T"

.field private static final i:Ljava/lang/String; = "C"

.field private static final j:Ljava/lang/String; = "I"

.field private static final k:Ljava/lang/String; = "n"

.field private static final l:Ljava/lang/String; = "v"

.field private static final m:Ljava/lang/String; = "vn"

.field private static final n:Ljava/lang/String; = "s"

.field private static final o:Ljava/lang/String; = "b"

.field private static final p:Ljava/lang/String; = "lut"

.field private static final q:Ljava/lang/String; = "fit"

.field private static final r:Ljava/lang/String; = "p"

.field private static final s:Ljava/lang/String; = "t"

.field private static final t:Ljava/lang/String; = "e"

.field private static final u:Ljava/lang/String; = "eot"

.field private static final v:Ljava/lang/String; = "pim"

.field private static final w:Ljava/lang/String; = "es"

.field private static final x:Ljava/lang/String; = "il"

.field private static final y:Ljava/lang/String; = "its"

.field private static volatile z:Lcom/miui/analytics/internal/a/e;


# instance fields
.field private A:Lcom/miui/analytics/internal/f/u;

.field private B:Lcom/miui/analytics/internal/f/h;

.field private C:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/analytics/internal/a/e;->a:Z

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/analytics/internal/a/e;->D:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/miui/analytics/internal/f/u;

    const-string v1, "co"

    invoke-direct {v0, p1, v1}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    .line 96
    new-instance v0, Lcom/miui/analytics/internal/f/h;

    const-string v1, "il"

    invoke-direct {v0, p1, v1}, Lcom/miui/analytics/internal/f/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/a/e;->B:Lcom/miui/analytics/internal/f/h;

    .line 97
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/e;
    .registers 3

    .prologue
    .line 100
    const-class v1, Lcom/miui/analytics/internal/a/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/a/e;->z:Lcom/miui/analytics/internal/a/e;

    if-nez v0, :cond_e

    .line 101
    new-instance v0, Lcom/miui/analytics/internal/a/e;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/a/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/a/e;->z:Lcom/miui/analytics/internal/a/e;

    .line 103
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/a/e;->z:Lcom/miui/analytics/internal/a/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 291
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 292
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 296
    :try_start_11
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/analytics/internal/d/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 297
    const-string v4, "P"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    const-string v4, "n"

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string v1, "v"

    iget v4, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 300
    const-string v1, "vn"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 301
    const-string v1, "s"

    invoke-static {v2}, Lcom/miui/analytics/internal/d/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    const-string v1, "lut"

    iget-wide v4, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 303
    const-string v1, "fit"

    iget-wide v4, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 304
    const-string v2, "b"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x1

    :goto_5d
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_60} :catch_63

    .line 309
    :goto_60
    return-object v0

    .line 304
    :cond_61
    const/4 v1, 0x0

    goto :goto_5d

    .line 306
    :catch_63
    move-exception v0

    .line 307
    const-string v1, "UU"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to format package info of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 309
    const/4 v0, 0x0

    goto :goto_60
.end method

.method static synthetic a(Lcom/miui/analytics/internal/a/e;)V
    .registers 7

    .prologue
    .line 44
    .line 2164
    const-string v0, "spock_usage"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2165
    const-string v0, "UU"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2175
    :goto_f
    return-void

    .line 2169
    :cond_10
    sget-boolean v0, Lcom/miui/analytics/internal/a/e;->a:Z

    if-nez v0, :cond_24

    .line 2313
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luut"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2169
    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/aa;->a(J)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 2170
    :cond_24
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 2171
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    const-string v3, "com.miui.spock"

    const-string v4, "spock_usage"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    iget-object v2, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 2317
    iget-object v1, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v2, "luut"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 2174
    const-string v1, "UU"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start to upload usage info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 2176
    :cond_5c
    const-string v0, "UU"

    const-string v1, "usage uploaded today"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method private static a(Ljava/util/Map;Lorg/json/JSONArray;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/analytics/internal/a/h$a;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 243
    if-eqz p0, :cond_95

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 244
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 246
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/h$a;

    .line 247
    iget-object v2, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    if-eqz v2, :cond_10

    .line 248
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 249
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 250
    const-string v2, "P"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v1, "T"

    iget-object v2, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-wide v6, v2, Lcom/miui/analytics/internal/a/h$c;->b:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 252
    const-string v1, "C"

    iget-object v2, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-wide v6, v2, Lcom/miui/analytics/internal/a/h$c;->c:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 253
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_10

    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    .line 255
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 256
    const/4 v1, 0x0

    move v2, v1

    :goto_5f
    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_10

    .line 257
    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 258
    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/analytics/internal/a/h$c;

    .line 259
    if-eqz v1, :cond_91

    .line 260
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 261
    const-string v8, "T"

    iget-wide v10, v1, Lcom/miui/analytics/internal/a/h$c;->b:J

    invoke-virtual {v5, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 262
    const-string v8, "C"

    iget-wide v10, v1, Lcom/miui/analytics/internal/a/h$c;->c:J

    invoke-virtual {v5, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 263
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_91
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5f

    .line 270
    :cond_95
    return-void
.end method

.method static synthetic b(Lcom/miui/analytics/internal/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 390
    sget-boolean v0, Lcom/miui/analytics/internal/a/e;->E:Z

    if-nez v0, :cond_19

    .line 393
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 394
    const-string v1, "SEQUENCE_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    new-instance v1, Lcom/miui/analytics/internal/a/e$3;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/a/e$3;-><init>(Lcom/miui/analytics/internal/a/e;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/analytics/internal/a/e;->E:Z

    .line 405
    :cond_19
    const-string v0, "UU"

    const-string v1, "register broadcast SEQUENCE_TEST"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method static synthetic c()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/miui/analytics/internal/a/e;->D:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/analytics/internal/a/e;)V
    .registers 6

    .prologue
    .line 44
    .line 3181
    const-string v0, "spock_sequence"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3182
    const-string v0, "UU"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3192
    :goto_f
    return-void

    .line 3186
    :cond_10
    sget-boolean v0, Lcom/miui/analytics/internal/a/e;->a:Z

    if-nez v0, :cond_24

    .line 3321
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luust"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 3186
    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/aa;->a(J)Z

    move-result v0

    if-nez v0, :cond_65

    .line 3187
    :cond_24
    const-string v0, "UU"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start to upload usage sequence, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3188
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->n()Ljava/lang/String;

    move-result-object v0

    .line 3189
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    const-string v3, "com.miui.spock"

    const-string v4, "spock_sequence"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3190
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 3325
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luust"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    goto :goto_f

    .line 3193
    :cond_65
    const-string v0, "UU"

    const-string v1, "usage sequence uploaded today"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method static synthetic d(Lcom/miui/analytics/internal/a/e;)J
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method private d()V
    .registers 7

    .prologue
    .line 164
    const-string v0, "spock_usage"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 165
    const-string v0, "UU"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_f
    return-void

    .line 169
    :cond_10
    sget-boolean v0, Lcom/miui/analytics/internal/a/e;->a:Z

    if-nez v0, :cond_24

    .line 1313
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luut"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 169
    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/aa;->a(J)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 170
    :cond_24
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->f()Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    const-string v3, "com.miui.spock"

    const-string v4, "spock_usage"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v2, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 1317
    iget-object v1, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v2, "luut"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 174
    const-string v1, "UU"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start to upload usage info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 176
    :cond_5c
    const-string v0, "UU"

    const-string v1, "usage uploaded today"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method static synthetic e(Lcom/miui/analytics/internal/a/e;)Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->g()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .registers 6

    .prologue
    .line 181
    const-string v0, "spock_sequence"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 182
    const-string v0, "UU"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_f
    return-void

    .line 186
    :cond_10
    sget-boolean v0, Lcom/miui/analytics/internal/a/e;->a:Z

    if-nez v0, :cond_24

    .line 1321
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luust"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    .line 186
    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/aa;->a(J)Z

    move-result v0

    if-nez v0, :cond_65

    .line 187
    :cond_24
    const-string v0, "UU"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start to upload usage sequence, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->n()Ljava/lang/String;

    move-result-object v0

    .line 189
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    const-string v3, "com.miui.spock"

    const-string v4, "spock_sequence"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 1325
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luust"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    goto :goto_f

    .line 193
    :cond_65
    const-string v0, "UU"

    const-string v1, "usage sequence uploaded today"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method static synthetic f(Lcom/miui/analytics/internal/a/e;)Lcom/miui/analytics/internal/f/h;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->B:Lcom/miui/analytics/internal/f/h;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x17

    .line 198
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/h;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 199
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 201
    :try_start_d
    const-string v1, "si"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    const-string v1, "tz"

    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v8, :cond_52

    .line 206
    const-string v1, "ts"

    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->d()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 210
    :goto_2a
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 211
    const-string v3, "U"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    invoke-static {v0, v1}, Lcom/miui/analytics/internal/a/e;->a(Ljava/util/Map;Lorg/json/JSONArray;)V

    .line 216
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_6d

    .line 217
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->g()Lorg/json/JSONArray;

    move-result-object v0

    .line 218
    const-string v1, "its"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 233
    :goto_48
    const-string v1, "I"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    :goto_51
    return-object v0

    .line 208
    :cond_52
    const-string v1, "ts"

    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->d()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5f} :catch_60

    goto :goto_2a

    .line 236
    :catch_60
    move-exception v0

    .line 237
    iget-object v1, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    const-string v2, "UU"

    const-string v3, "get usage info exception"

    invoke-static {v1, v2, v3, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    const-string v0, ""

    goto :goto_51

    .line 220
    :cond_6d
    :try_start_6d
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->B:Lcom/miui/analytics/internal/f/h;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/f/h;->a()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 222
    const-string v0, "[]"

    move-object v1, v0

    .line 225
    :goto_7c
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_91

    .line 227
    const-string v1, "its"

    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->l()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_48

    .line 229
    :cond_91
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->g()Lorg/json/JSONArray;

    move-result-object v0

    .line 230
    const-string v1, "its"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_9e} :catch_60

    goto :goto_48

    :cond_9f
    move-object v1, v0

    goto :goto_7c
.end method

.method private g()Lorg/json/JSONArray;
    .registers 6

    .prologue
    .line 273
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 274
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_65

    .line 276
    const-string v0, "UU"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "installed packages cnt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    .line 278
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 279
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 280
    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/a/e;->a(Landroid/content/pm/PackageInfo;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_31

    .line 282
    :cond_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 284
    goto :goto_31

    .line 285
    :cond_51
    const-string v0, "UU"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "installed system apps cnt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_65
    return-object v2
.end method

.method static synthetic g(Lcom/miui/analytics/internal/a/e;)V
    .registers 5

    .prologue
    .line 44
    .line 3333
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "lrilt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 44
    return-void
.end method

.method private h()J
    .registers 5

    .prologue
    .line 313
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luut"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic h(Lcom/miui/analytics/internal/a/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Lcom/miui/analytics/internal/a/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/e;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 317
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luut"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 318
    return-void
.end method

.method private j()J
    .registers 5

    .prologue
    .line 321
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luust"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private k()V
    .registers 5

    .prologue
    .line 325
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luust"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 326
    return-void
.end method

.method private l()J
    .registers 5

    .prologue
    .line 329
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "lrilt"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private m()V
    .registers 5

    .prologue
    .line 333
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->A:Lcom/miui/analytics/internal/f/u;

    const-string v1, "lrilt"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 334
    return-void
.end method

.method private n()Ljava/lang/String;
    .registers 15

    .prologue
    .line 337
    const-string v0, "UU"

    const-string v1, "enter getUsageSequenceContent..."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 340
    :try_start_c
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/h;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 341
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 342
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 343
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 344
    const/4 v4, 0x0

    .line 345
    const-wide/16 v2, 0x0

    .line 346
    if-eqz v0, :cond_91

    .line 348
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 349
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 350
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4a

    .line 351
    add-int/lit8 v1, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v1

    .line 353
    :cond_4a
    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-nez v1, :cond_57

    .line 354
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v2, v12

    .line 356
    :cond_57
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 357
    const-string v12, "p"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 358
    const-string v1, "e"

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v10

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 359
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    const-wide/16 v12, 0x3e8

    div-long/2addr v0, v12

    sub-long/2addr v0, v2

    .line 360
    const-string v10, "t"

    invoke-virtual {v11, v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 361
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_84} :catch_85

    goto :goto_2a

    .line 373
    :catch_85
    move-exception v0

    .line 374
    const-string v1, "UU"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getUsageSequenceContent exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    :cond_91
    :goto_91
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    sget-boolean v1, Lcom/miui/analytics/internal/a/e;->a:Z

    if-eqz v1, :cond_c0

    .line 378
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 379
    const-string v2, "UU"

    const-string v3, "Usage Sequence size: %dKB(%dB), content:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, v1

    div-int/lit16 v6, v6, 0x400

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_c0
    return-object v0

    .line 364
    :cond_c1
    :try_start_c1
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 365
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 366
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c9

    .line 369
    :cond_f1
    const-string v0, "es"

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v0, "pim"

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v0, "eot"

    invoke-virtual {v5, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_100} :catch_85

    goto :goto_91
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e;->C:Landroid/content/Context;

    const-string v1, "UU"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 134
    :goto_a
    return-void

    .line 111
    :cond_b
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/a/e$1;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/a/e$1;-><init>(Lcom/miui/analytics/internal/a/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 142
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/a/e$2;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/a/e$2;-><init>(Lcom/miui/analytics/internal/a/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 161
    return-void
.end method
