.class public final Lcom/miui/analytics/internal/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/miui/analytics/internal/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/miui/analytics/internal/f/u;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/miui/analytics/internal/f/u;

    iget-object v1, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    const-string v2, "co"

    const-string v3, "heartbeat"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/c;->c:Lcom/miui/analytics/internal/f/u;

    .line 24
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/c;
    .registers 3

    .prologue
    .line 27
    const-class v1, Lcom/miui/analytics/internal/c/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/c;->a:Lcom/miui/analytics/internal/c;

    if-nez v0, :cond_e

    .line 28
    new-instance v0, Lcom/miui/analytics/internal/c;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/c;->a:Lcom/miui/analytics/internal/c;

    .line 30
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/c;->a:Lcom/miui/analytics/internal/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(J)V
    .registers 6

    .prologue
    .line 38
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/analytics/internal/c;->c:Lcom/miui/analytics/internal/f/u;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()J
    .registers 5

    .prologue
    .line 34
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/analytics/internal/c;->c:Lcom/miui/analytics/internal/f/u;

    const-string v1, "time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()Z
    .registers 7

    .prologue
    .line 53
    invoke-super {p0}, Lcom/miui/analytics/internal/c;->b()J

    move-result-wide v0

    .line 55
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    rem-long/2addr v2, v4

    .line 56
    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 58
    const/4 v0, 0x0

    .line 60
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x1

    goto :goto_24
.end method

.method private d()V
    .registers 6

    .prologue
    .line 64
    new-instance v0, Lcom/miui/analytics/internal/h;

    iget-object v1, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    const-string v2, "com.miui.spock"

    const-string v3, "spock_monitor"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    const-string v1, "Monitor"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 50
    :cond_a
    :goto_a
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 46
    :cond_b
    invoke-super {p0}, Lcom/miui/analytics/internal/c;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lcom/miui/analytics/internal/c;->a(J)V

    .line 48
    invoke-super {p0}, Lcom/miui/analytics/internal/c;->d()V

    goto :goto_a
.end method
