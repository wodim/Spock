.class public final Lcom/miui/analytics/internal/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final C:Ljava/lang/Object;

.field public static a:Z = false

.field private static final b:Ljava/lang/String; = "UUV2"

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

.field private static final x:Ljava/lang/String; = "its"

.field private static volatile y:Lcom/miui/analytics/internal/a/g;


# instance fields
.field private A:Lcom/miui/analytics/internal/a/f;

.field private B:Landroid/content/Context;

.field private z:Lcom/miui/analytics/internal/f/u;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/analytics/internal/a/g;->a:Z

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/analytics/internal/a/g;->C:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    :try_start_3
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    .line 103
    new-instance v0, Lcom/miui/analytics/internal/f/u;

    const-string v1, "co"

    invoke-direct {v0, p1, v1}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    .line 104
    invoke-static {p1}, Lcom/miui/analytics/internal/a/f;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_19

    .line 108
    :goto_18
    return-void

    .line 105
    :catch_19
    move-exception v0

    .line 106
    const-string v1, "UUV2"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploadUsageV2 constructor e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/g;
    .registers 3

    .prologue
    .line 111
    const-class v1, Lcom/miui/analytics/internal/a/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/a/g;->y:Lcom/miui/analytics/internal/a/g;

    if-nez v0, :cond_e

    .line 112
    new-instance v0, Lcom/miui/analytics/internal/a/g;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/a/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/a/g;->y:Lcom/miui/analytics/internal/a/g;

    .line 114
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/a/g;->y:Lcom/miui/analytics/internal/a/g;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 111
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)Lorg/json/JSONObject;
    .registers 8

    .prologue
    .line 363
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 364
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 366
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 368
    :try_start_11
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/analytics/internal/d/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    const-string v4, "P"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v4, "n"

    iget-object v5, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 371
    const-string v1, "v"

    iget v4, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 372
    const-string v1, "vn"

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v1, "s"

    invoke-static {v2}, Lcom/miui/analytics/internal/d/a/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 374
    const-string v1, "lut"

    iget-wide v4, p1, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 375
    const-string v1, "fit"

    iget-wide v4, p1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 376
    const-string v2, "b"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/x;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_61

    const/4 v1, 0x1

    :goto_5d
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_60} :catch_63

    .line 381
    :goto_60
    return-object v0

    .line 376
    :cond_61
    const/4 v1, 0x0

    goto :goto_5d

    .line 378
    :catch_63
    move-exception v0

    .line 379
    const-string v1, "UUV2"

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

    .line 381
    const/4 v0, 0x0

    goto :goto_60
.end method

.method static synthetic a(Lcom/miui/analytics/internal/a/g;)V
    .registers 8

    .prologue
    .line 54
    .line 2179
    const-string v0, "spock_usagev2"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2180
    const-string v0, "UUV2"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    :cond_f
    :goto_f
    return-void

    .line 2184
    :cond_10
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->f()Ljava/lang/String;

    move-result-object v0

    .line 2185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 2186
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_64

    .line 2385
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v2, "luutv2"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2187
    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/aa;->b(J)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2188
    const-string v0, "UUV2"

    const-string v1, "android version  > 5.1, already upload usage and install today"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 2191
    :cond_38
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    const-string v3, "com.miui.spock"

    const-string v4, "spock_usagev2"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 2193
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->i()V

    .line 2194
    const-string v1, "UUV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start to upload usage info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 2197
    :cond_64
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    const-string v2, "usage"

    invoke-virtual {v1, v2, v0}, Lcom/miui/analytics/internal/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2198
    const-string v1, "UUV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save daily usage info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    const-string v1, "usage"

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/a/f;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2201
    if-eqz v0, :cond_f

    .line 2202
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8d
    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/f$a;

    .line 2203
    iget-object v2, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 2206
    new-instance v2, Lcom/miui/analytics/internal/h;

    iget-object v3, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    const-string v4, "com.miui.spock"

    const-string v5, "spock_usagev2"

    iget-object v6, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2207
    iget-object v3, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 2208
    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    iget-object v3, v0, Lcom/miui/analytics/internal/a/f$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/analytics/internal/a/f;->c(Ljava/lang/String;)Z

    .line 2209
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->i()V

    .line 2210
    const-string v2, "UUV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start to upload usage info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d
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
    .line 310
    if-eqz p0, :cond_95

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 311
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

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/h$a;

    .line 314
    iget-object v2, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    if-eqz v2, :cond_10

    .line 315
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 316
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 317
    const-string v2, "P"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v1, "T"

    iget-object v2, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-wide v6, v2, Lcom/miui/analytics/internal/a/h$c;->b:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 319
    const-string v1, "C"

    iget-object v2, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-wide v6, v2, Lcom/miui/analytics/internal/a/h$c;->c:J

    invoke-virtual {v4, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 320
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_10

    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    .line 322
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 323
    const/4 v1, 0x0

    move v2, v1

    :goto_5f
    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v2, v1, :cond_10

    .line 324
    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 325
    iget-object v1, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/analytics/internal/a/h$c;

    .line 326
    if-eqz v1, :cond_91

    .line 327
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 328
    const-string v8, "T"

    iget-wide v10, v1, Lcom/miui/analytics/internal/a/h$c;->b:J

    invoke-virtual {v5, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 329
    const-string v8, "C"

    iget-wide v10, v1, Lcom/miui/analytics/internal/a/h$c;->c:J

    invoke-virtual {v5, v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 330
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    :cond_91
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_5f

    .line 337
    :cond_95
    return-void
.end method

.method static synthetic b(Lcom/miui/analytics/internal/a/g;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/miui/analytics/internal/a/g;->C:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/miui/analytics/internal/a/g;)V
    .registers 8

    .prologue
    .line 54
    .line 3220
    const-string v0, "spock_sequencev2"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3221
    const-string v0, "UUV2"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    :cond_f
    :goto_f
    return-void

    .line 3225
    :cond_10
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->n()Ljava/lang/String;

    move-result-object v0

    .line 3226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 3227
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_64

    .line 3393
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v2, "luustv2"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 3228
    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/aa;->b(J)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3229
    const-string v0, "UUV2"

    const-string v1, "android version  > 5.1, already upload sequence today"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 3232
    :cond_38
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    const-string v3, "com.miui.spock"

    const-string v4, "spock_sequencev2"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3233
    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 3234
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->k()V

    .line 3235
    const-string v1, "UUV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start to upload usage sequence info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 3237
    :cond_64
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    const-string v2, "usage_sequence"

    invoke-virtual {v1, v2, v0}, Lcom/miui/analytics/internal/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 3238
    const-string v1, "UUV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save daily usage sequence info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3239
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    const-string v1, "usage_sequence"

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/a/f;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3240
    if-eqz v0, :cond_f

    .line 3241
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8d
    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/f$a;

    .line 3242
    iget-object v2, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 3245
    new-instance v2, Lcom/miui/analytics/internal/h;

    iget-object v3, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    const-string v4, "com.miui.spock"

    const-string v5, "spock_sequencev2"

    iget-object v6, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3246
    iget-object v3, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 3247
    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    iget-object v3, v0, Lcom/miui/analytics/internal/a/f$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/analytics/internal/a/f;->c(Ljava/lang/String;)Z

    .line 3248
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->k()V

    .line 3249
    const-string v2, "UUV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start to upload usage sequence info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d
.end method

.method static synthetic d(Lcom/miui/analytics/internal/a/g;)Lorg/json/JSONArray;
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->g()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .registers 8

    .prologue
    .line 179
    const-string v0, "spock_usagev2"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 180
    const-string v0, "UUV2"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_f
    :goto_f
    return-void

    .line 184
    :cond_10
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->f()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 186
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_64

    .line 1385
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v2, "luutv2"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 187
    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/aa;->b(J)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 188
    const-string v0, "UUV2"

    const-string v1, "android version  > 5.1, already upload usage and install today"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 191
    :cond_38
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    const-string v3, "com.miui.spock"

    const-string v4, "spock_usagev2"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 193
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->i()V

    .line 194
    const-string v1, "UUV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start to upload usage info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 197
    :cond_64
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    const-string v2, "usage"

    invoke-virtual {v1, v2, v0}, Lcom/miui/analytics/internal/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 198
    const-string v1, "UUV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save daily usage info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    const-string v1, "usage"

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/a/f;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_f

    .line 202
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8d
    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/f$a;

    .line 203
    iget-object v2, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 206
    new-instance v2, Lcom/miui/analytics/internal/h;

    iget-object v3, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    const-string v4, "com.miui.spock"

    const-string v5, "spock_usagev2"

    iget-object v6, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v3, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 208
    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    iget-object v3, v0, Lcom/miui/analytics/internal/a/f$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/analytics/internal/a/f;->c(Ljava/lang/String;)Z

    .line 209
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->i()V

    .line 210
    const-string v2, "UUV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start to upload usage info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d
.end method

.method static synthetic e(Lcom/miui/analytics/internal/a/g;)Lcom/miui/analytics/internal/a/f;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    return-object v0
.end method

.method private e()V
    .registers 8

    .prologue
    .line 220
    const-string v0, "spock_sequencev2"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 221
    const-string v0, "UUV2"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_f
    :goto_f
    return-void

    .line 225
    :cond_10
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->n()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 227
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_64

    .line 1393
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v2, "luustv2"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 228
    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/aa;->b(J)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 229
    const-string v0, "UUV2"

    const-string v1, "android version  > 5.1, already upload sequence today"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 232
    :cond_38
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    const-string v3, "com.miui.spock"

    const-string v4, "spock_sequencev2"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 234
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->k()V

    .line 235
    const-string v1, "UUV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start to upload usage sequence info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    .line 237
    :cond_64
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    const-string v2, "usage_sequence"

    invoke-virtual {v1, v2, v0}, Lcom/miui/analytics/internal/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 238
    const-string v1, "UUV2"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save daily usage sequence info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    const-string v1, "usage_sequence"

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/a/f;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_f

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8d
    :goto_8d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/f$a;

    .line 242
    iget-object v2, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8d

    .line 245
    new-instance v2, Lcom/miui/analytics/internal/h;

    iget-object v3, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    const-string v4, "com.miui.spock"

    const-string v5, "spock_sequencev2"

    iget-object v6, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v3, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 247
    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    iget-object v3, v0, Lcom/miui/analytics/internal/a/f$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/miui/analytics/internal/a/f;->c(Ljava/lang/String;)Z

    .line 248
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->k()V

    .line 249
    const-string v2, "UUV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "start to upload usage sequence info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8d
.end method

.method private f()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x17

    .line 263
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/h;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 264
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 266
    :try_start_d
    const-string v2, "si"

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string v2, "tz"

    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v8, :cond_52

    .line 271
    const-string v2, "ts"

    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->d()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 275
    :goto_2a
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 276
    const-string v3, "U"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    invoke-static {v0, v2}, Lcom/miui/analytics/internal/a/g;->a(Ljava/util/Map;Lorg/json/JSONArray;)V

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v8, :cond_6d

    .line 282
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->g()Lorg/json/JSONArray;

    move-result-object v0

    .line 283
    const-string v2, "its"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 293
    :goto_48
    const-string v2, "I"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 295
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    :goto_51
    return-object v0

    .line 273
    :cond_52
    const-string v2, "ts"

    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->d()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_5f} :catch_60

    goto :goto_2a

    .line 296
    :catch_60
    move-exception v0

    .line 297
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    const-string v2, "UUV2"

    const-string v3, "getContent get usage info exception"

    invoke-static {v1, v2, v3, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    const-string v0, ""

    goto :goto_51

    .line 285
    :cond_6d
    :try_start_6d
    new-instance v0, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/g;->A:Lcom/miui/analytics/internal/a/f;

    invoke-virtual {v2}, Lcom/miui/analytics/internal/a/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_8e

    .line 287
    const-string v2, "its"

    .line 1402
    iget-object v3, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v4, "lriltv2"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v4

    .line 287
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    goto :goto_48

    .line 289
    :cond_8e
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/g;->g()Lorg/json/JSONArray;

    move-result-object v0

    .line 290
    const-string v2, "its"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_9b} :catch_60

    goto :goto_48
.end method

.method static synthetic f(Lcom/miui/analytics/internal/a/g;)V
    .registers 5

    .prologue
    .line 54
    .line 3406
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v1, "lriltv2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 54
    return-void
.end method

.method private g()Lorg/json/JSONArray;
    .registers 6

    .prologue
    .line 345
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 346
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 347
    if-eqz v1, :cond_65

    .line 348
    const-string v0, "UUV2"

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

    .line 349
    const/4 v0, 0x0

    .line 350
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

    .line 351
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v4}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 352
    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/a/g;->a(Landroid/content/pm/PackageInfo;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_31

    .line 354
    :cond_4d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 356
    goto :goto_31

    .line 357
    :cond_51
    const-string v0, "UUV2"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "installed system apps cnt="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_65
    return-object v2
.end method

.method private h()J
    .registers 5

    .prologue
    .line 385
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luutv2"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private i()V
    .registers 5

    .prologue
    .line 389
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luutv2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 390
    return-void
.end method

.method private j()J
    .registers 5

    .prologue
    .line 393
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luustv2"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private k()V
    .registers 5

    .prologue
    .line 397
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luustv2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 398
    return-void
.end method

.method private l()J
    .registers 5

    .prologue
    .line 402
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v1, "lriltv2"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private m()V
    .registers 5

    .prologue
    .line 406
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->z:Lcom/miui/analytics/internal/f/u;

    const-string v1, "lriltv2"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 407
    return-void
.end method

.method private n()Ljava/lang/String;
    .registers 15

    .prologue
    .line 418
    const-string v0, "UUV2"

    const-string v1, "enter getUsageSequenceContent..."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 421
    :try_start_c
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g;->B:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/h;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 422
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 423
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 424
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8}, Lorg/json/JSONArray;-><init>()V

    .line 425
    const/4 v4, 0x0

    .line 426
    const-wide/16 v2, 0x0

    .line 427
    if-eqz v0, :cond_91

    .line 429
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 430
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 431
    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4a

    .line 432
    add-int/lit8 v1, v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v10, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v1

    .line 434
    :cond_4a
    const-wide/16 v12, 0x0

    cmp-long v1, v2, v12

    if-nez v1, :cond_57

    .line 435
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v2

    const-wide/16 v12, 0x3e8

    div-long/2addr v2, v12

    .line 437
    :cond_57
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 438
    const-string v12, "p"

    invoke-interface {v6, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 439
    const-string v1, "e"

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v10

    invoke-virtual {v11, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 440
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    const-wide/16 v12, 0x3e8

    div-long/2addr v0, v12

    sub-long/2addr v0, v2

    .line 441
    const-string v10, "t"

    invoke-virtual {v11, v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 442
    invoke-virtual {v7, v11}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_84} :catch_85

    goto :goto_2a

    .line 454
    :catch_85
    move-exception v0

    .line 455
    const-string v1, "UUV2"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getUsageSequenceContent exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 457
    :cond_91
    :goto_91
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    sget-boolean v1, Lcom/miui/analytics/internal/a/g;->a:Z

    if-eqz v1, :cond_c0

    .line 459
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 460
    const-string v2, "UUV2"

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

    .line 462
    :cond_c0
    return-object v0

    .line 445
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

    .line 446
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 448
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_c9

    .line 450
    :cond_f1
    const-string v0, "es"

    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 451
    const-string v0, "pim"

    invoke-virtual {v5, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 452
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
    .line 123
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/a/g$1;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/a/g$1;-><init>(Lcom/miui/analytics/internal/a/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 158
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/a/g$2;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/a/g$2;-><init>(Lcom/miui/analytics/internal/a/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method
