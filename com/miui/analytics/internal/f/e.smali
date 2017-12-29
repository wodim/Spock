.class public final Lcom/miui/analytics/internal/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:I = 0x493e0

.field private static final B:I = 0x36ee80

.field private static final C:I = 0x3

.field private static final D:I = 0x3c

.field private static final E:I = 0x3

.field private static final F:Z = true

.field private static final G:Z = true

.field private static final H:Z = true

.field private static final I:Z = false

.field private static final J:Z = false

.field private static final K:J = 0x493e0L

.field private static L:J = 0x1b7740L

.field private static M:J = 0x493e0L

.field private static N:Z = false

.field private static final O:J = 0x493e0L

.field private static final P:J = 0xea60L

.field private static final Q:Ljava/lang/String; = "enableCollectUpload"

.field private static final R:Z = false

.field private static S:Lcom/miui/analytics/internal/f/e; = null

.field private static final a:Ljava/lang/String; = "ConfigProvider"

.field private static final b:Ljava/lang/String; = "enableDeviceId"

.field private static final c:Ljava/lang/String; = "interval_sec"

.field private static final d:Ljava/lang/String; = "mds_enable"

.field private static final e:Ljava/lang/String; = "gps_location_enable"

.field private static final f:Ljava/lang/String; = "min_record_mds_interval_sec"

.field private static final g:Ljava/lang/String; = "enable_global_mds"

.field private static final h:Ljava/lang/String; = "max_mds_conditions_per_day"

.field private static final i:Ljava/lang/String; = "max_retry_count"

.field private static final j:Ljava/lang/String; = "mds_match_interval_sec"

.field private static final k:Ljava/lang/String; = "max_mds_loc_count_in_mobile_network"

.field private static final l:Ljava/lang/String; = "scene"

.field private static final m:Ljava/lang/String; = "scene_interval"

.field private static final n:Ljava/lang/String; = "scene_screen_off_time"

.field private static o:Ljava/lang/String; = "upload_time"

.field private static p:Ljava/lang/String; = "drop_day"

.field private static final q:Ljava/lang/String; = "interval"

.field private static final r:Ljava/lang/String; = "nearest_store_days"

.field private static final s:Ljava/lang/String; = "store_counts"

.field private static final t:Ljava/lang/String; = "nearest_store_enable"

.field private static final u:Ljava/lang/String; = "j_initial"

.field private static final v:I = 0x2

.field private static final w:I = 0xa

.field private static final x:I = 0x32

.field private static final y:I = 0x927c0

.field private static final z:I = 0xa4cb80


# instance fields
.field private T:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/analytics/internal/f/e;->S:Lcom/miui/analytics/internal/f/e;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method public static a()I
    .registers 3

    .prologue
    .line 97
    const-string v0, "com.miui.spock"

    const-string v1, "spock_monitor"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/e;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 98
    const-string v1, "max_retry_count"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/f/e;
    .registers 3

    .prologue
    .line 72
    const-class v1, Lcom/miui/analytics/internal/f/e;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/f/e;->S:Lcom/miui/analytics/internal/f/e;

    if-nez v0, :cond_e

    .line 73
    new-instance v0, Lcom/miui/analytics/internal/f/e;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/f/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/f/e;->S:Lcom/miui/analytics/internal/f/e;

    .line 75
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/f/e;->S:Lcom/miui/analytics/internal/f/e;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 150
    :try_start_1
    const-string v1, "com.miui.spock"

    invoke-static {v1, p0}, Lcom/miui/analytics/Analytics;->getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 152
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    const-string v1, "enableCollectUpload"

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1a

    move-result v0

    .line 159
    :cond_19
    :goto_19
    return v0

    .line 156
    :catch_1a
    move-exception v1

    .line 157
    const-string v2, "ConfigProvider"

    const-string v3, "getEnableCollectAndUpload e: "

    invoke-static {v2, v3, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/miui/analytics/internal/f/e;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    const-string v1, "enableDeviceId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 79
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 81
    :try_start_5
    invoke-static {p0, p1}, Lcom/miui/analytics/Analytics;->getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 83
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_14} :catch_15

    .line 88
    :goto_14
    return-object v0

    .line 85
    :catch_15
    move-exception v0

    .line 86
    const-string v2, "ConfigProvider"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getConfigClientExtra exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_21
    move-object v0, v1

    goto :goto_14
.end method

.method public static b()[I
    .registers 4

    .prologue
    .line 103
    :try_start_0
    const-string v0, "com.miui.spock"

    const-string v1, "spock_usagev2"

    invoke-static {v0, v1}, Lcom/miui/analytics/Analytics;->getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 105
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    const-string v0, "upload_time"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 107
    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_43

    .line 108
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [I

    .line 109
    const/4 v1, 0x0

    :goto_28
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 110
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v3

    aput v3, v0, v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_37

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    .line 115
    :catch_37
    move-exception v0

    .line 116
    const-string v1, "ConfigProvider"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getUsageUploadTime exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    :cond_43
    const/4 v0, 0x0

    :cond_44
    return-object v0
.end method

.method public static c()I
    .registers 4

    .prologue
    const/4 v0, 0x3

    .line 123
    :try_start_1
    const-string v1, "com.miui.spock"

    const-string v2, "spock_usagev2"

    invoke-static {v1, v2}, Lcom/miui/analytics/Analytics;->getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 125
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 126
    const-string v1, "drop_day"

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result v0

    .line 131
    :cond_1b
    :goto_1b
    return v0

    .line 128
    :catch_1c
    move-exception v1

    .line 129
    const-string v2, "ConfigProvider"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getDefaultUsageFileDropDays exception:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method public static d()J
    .registers 6

    .prologue
    const-wide/32 v0, 0x493e0

    .line 136
    :try_start_3
    const-string v2, "com.miui.spock"

    const-string v3, "spock_aaid"

    invoke-static {v2, v3}, Lcom/miui/analytics/Analytics;->getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 138
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    const-string v2, "interval"

    const-wide/32 v4, 0x493e0

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_20

    move-result-wide v0

    .line 144
    :cond_1f
    :goto_1f
    return-wide v0

    .line 141
    :catch_20
    move-exception v2

    .line 142
    const-string v3, "ConfigProvider"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getDefaultUploadAaidInterval exception:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method public static e()J
    .registers 6

    .prologue
    const-wide/32 v0, 0xea60

    .line 309
    :try_start_3
    const-string v2, "com.miui.spock"

    const-string v3, "spock_active"

    invoke-static {v2, v3}, Lcom/miui/analytics/Analytics;->getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 310
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 311
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 312
    const-string v2, "j_initial"

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1e} :catch_20

    move-result-wide v0

    .line 317
    :cond_1f
    :goto_1f
    return-wide v0

    .line 314
    :catch_20
    move-exception v2

    .line 315
    const-string v3, "ConfigProvider"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getJobSchedulerInitialBackoffMillis exception:"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method
