.class public final Lcom/miui/analytics/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field private static final b:Ljava/lang/String; = "Debugger"

.field private static final c:Ljava/lang/String; = "com.xiaomi.analytics.intent.DEBUG_ON"

.field private static final d:Ljava/lang/String; = "com.xiaomi.analytics.intent.DEBUG_OFF"

.field private static final e:Ljava/lang/String; = "com.xiaomi.analytics.intent.STAGING_ON"

.field private static final f:Ljava/lang/String; = "com.xiaomi.analytics.intent.STAGING_OFF"

.field private static final g:Ljava/lang/String; = "com.xiaomi.analytics.intent.EXPIRE_POLICY_CONFIG"

.field private static final h:Ljava/lang/String; = "analytics.usagev2"

.field private static final i:Ljava/lang/String; = "analytics.scene"

.field private static final j:Ljava/lang/String; = "analytics.aaid"

.field private static final k:Ljava/lang/String; = "analytics.net"

.field private static final l:Ljava/lang/String; = "analytics.stores"

.field private static final m:Ljava/lang/String; = "analytics.stores.update"

.field private static n:Lcom/miui/analytics/internal/g;


# instance fields
.field private o:Landroid/content/Context;

.field private volatile p:Z

.field private q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/analytics/internal/g;->a:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/analytics/internal/g;->p:Z

    .line 76
    new-instance v0, Lcom/miui/analytics/internal/g$1;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/g$1;-><init>(Lcom/miui/analytics/internal/g;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/g;->q:Landroid/content/BroadcastReceiver;

    .line 41
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/g;->o:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/miui/analytics/internal/g;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/analytics/internal/g;->o:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/g;
    .registers 3

    .prologue
    .line 45
    const-class v1, Lcom/miui/analytics/internal/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/g;->n:Lcom/miui/analytics/internal/g;

    if-nez v0, :cond_e

    .line 46
    new-instance v0, Lcom/miui/analytics/internal/g;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/g;->n:Lcom/miui/analytics/internal/g;

    .line 48
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/g;->n:Lcom/miui/analytics/internal/g;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Z)V
    .registers 4

    .prologue
    .line 20
    .line 1121
    sput-boolean p0, Lcom/miui/analytics/internal/f/m;->a:Z

    .line 1122
    sput-boolean p0, Lcom/miui/analytics/internal/a/h;->a:Z

    .line 1123
    sput-boolean p0, Lcom/miui/analytics/internal/a/e;->a:Z

    .line 1124
    sput-boolean p0, Lcom/miui/analytics/internal/a/g;->a:Z

    .line 1128
    const-string v0, "Debugger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeDebugStatus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    return-void
.end method

.method private b()V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/miui/analytics/internal/g;->o:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/analytics/internal/g;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/analytics/internal/g;->p:Z

    .line 74
    return-void
.end method

.method private static b(Z)V
    .registers 4

    .prologue
    .line 121
    sput-boolean p0, Lcom/miui/analytics/internal/f/m;->a:Z

    .line 122
    sput-boolean p0, Lcom/miui/analytics/internal/a/h;->a:Z

    .line 123
    sput-boolean p0, Lcom/miui/analytics/internal/a/e;->a:Z

    .line 124
    sput-boolean p0, Lcom/miui/analytics/internal/a/g;->a:Z

    .line 128
    const-string v0, "Debugger"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "changeDebugStatus "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/miui/analytics/internal/g;->p:Z

    if-eqz v0, :cond_5

    .line 69
    :goto_4
    return-void

    .line 55
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/analytics/internal/g;->p:Z

    .line 56
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "com.xiaomi.analytics.intent.EXPIRE_POLICY_CONFIG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v1, "analytics.usagev2"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v1, "analytics.scene"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    const-string v1, "analytics.aaid"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "analytics.net"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "analytics.stores"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "analytics.stores.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/miui/analytics/internal/g;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/analytics/internal/g;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_4
.end method
