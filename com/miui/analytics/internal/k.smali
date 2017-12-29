.class public Lcom/miui/analytics/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Logger"

.field private static volatile b:Lcom/miui/analytics/internal/k;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/k;->c:Landroid/content/Context;

    .line 31
    return-void
.end method

.method static synthetic a(Lcom/miui/analytics/internal/k;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/analytics/internal/k;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;
    .registers 3

    .prologue
    .line 21
    const-class v1, Lcom/miui/analytics/internal/k;

    monitor-enter v1

    .line 22
    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/k;->b:Lcom/miui/analytics/internal/k;

    if-nez v0, :cond_e

    .line 23
    new-instance v0, Lcom/miui/analytics/internal/k;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/k;->b:Lcom/miui/analytics/internal/k;

    .line 25
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/k;->b:Lcom/miui/analytics/internal/k;

    monitor-exit v1

    return-object v0

    .line 26
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private declared-synchronized a()V
    .registers 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    const-class v1, Lcom/miui/analytics/internal/k;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    .line 133
    const/4 v0, 0x0

    :try_start_5
    sput-object v0, Lcom/miui/analytics/internal/k;->b:Lcom/miui/analytics/internal/k;

    .line 134
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    :try_start_c
    throw v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_d

    .line 132
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/miui/analytics/internal/h;)V
    .registers 5

    .prologue
    .line 41
    if-eqz p1, :cond_c

    .line 42
    :try_start_2
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/k$1;

    invoke-direct {v1, p0, p1}, Lcom/miui/analytics/internal/k$1;-><init>(Lcom/miui/analytics/internal/k;Lcom/miui/analytics/internal/h;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_d

    .line 64
    :cond_c
    :goto_c
    return-void

    .line 61
    :catch_d
    move-exception v0

    .line 62
    const-string v1, "Logger"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "log event exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/k;->c:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/analytics/internal/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/analytics/internal/h;

    move-result-object v0

    .line 74
    if-nez v0, :cond_9

    .line 81
    :goto_8
    return-void

    .line 77
    :cond_9
    invoke-virtual {p0, v0}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_8

    .line 78
    :catch_d
    move-exception v0

    .line 79
    const-string v1, "Logger"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "log eventJson exception\uff1a"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public final a([Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 91
    if-eqz p1, :cond_f

    :try_start_2
    array-length v0, p1

    if-lez v0, :cond_f

    .line 92
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/k$2;

    invoke-direct {v1, p0, p1}, Lcom/miui/analytics/internal/k$2;-><init>(Lcom/miui/analytics/internal/k;[Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_10

    .line 129
    :cond_f
    :goto_f
    return-void

    .line 126
    :catch_10
    move-exception v0

    .line 127
    const-string v1, "Logger"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "log events exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
