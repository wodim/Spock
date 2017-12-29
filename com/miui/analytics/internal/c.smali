.class public Lcom/miui/analytics/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/miui/analytics/internal/c;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/miui/analytics/internal/f/u;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 1021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    .line 1023
    new-instance v0, Lcom/miui/analytics/internal/f/u;

    iget-object v1, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    const-string v2, "co"

    const-string v3, "heartbeat"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/c;->c:Lcom/miui/analytics/internal/f/u;

    .line 1024
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/c;
    .registers 3

    .prologue
    .line 1027
    const-class v1, Lcom/miui/analytics/internal/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/c;->a:Lcom/miui/analytics/internal/c;

    if-nez v0, :cond_e

    .line 1028
    new-instance v0, Lcom/miui/analytics/internal/c;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/c;->a:Lcom/miui/analytics/internal/c;

    .line 1030
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/c;->a:Lcom/miui/analytics/internal/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 1027
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 24
    new-instance v0, Ljava/io/File;

    .line 1015
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1017
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 1019
    :cond_16
    invoke-static {v1}, Lcom/miui/analytics/internal/d/f;->a(Ljava/io/File;)V

    .line 1020
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/analytics/internal/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 28
    :cond_2d
    invoke-static {v0}, Lcom/miui/analytics/internal/d/f;->a(Ljava/io/File;)V

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(J)V
    .registers 6

    .prologue
    .line 1038
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/miui/analytics/internal/c;->c:Lcom/miui/analytics/internal/f/u;

    const-string v1, "time"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 1039
    monitor-exit p0

    return-void

    .line 1038
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()J
    .registers 5

    .prologue
    .line 1034
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

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 15
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "shared"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_14

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 19
    :cond_14
    invoke-static {v0}, Lcom/miui/analytics/internal/d/f;->a(Ljava/io/File;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/d/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()Z
    .registers 7

    .prologue
    .line 2053
    invoke-direct {p0}, Lcom/miui/analytics/internal/c;->b()J

    move-result-wide v0

    .line 2055
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    rem-long/2addr v2, v4

    .line 2056
    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    .line 2057
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 2058
    const/4 v0, 0x0

    .line 2060
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x1

    goto :goto_24
.end method

.method private d()V
    .registers 6

    .prologue
    .line 2064
    new-instance v0, Lcom/miui/analytics/internal/h;

    iget-object v1, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    const-string v2, "com.miui.spock"

    const-string v3, "spock_monitor"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-object v1, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 2066
    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    const-string v1, "Monitor"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1050
    :cond_a
    :goto_a
    return-void

    .line 1053
    :cond_b
    invoke-direct {p0}, Lcom/miui/analytics/internal/c;->b()J

    move-result-wide v0

    .line 1055
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    rem-long/2addr v2, v4

    .line 1056
    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    .line 1057
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    cmp-long v0, v0, v2

    if-gez v0, :cond_4f

    .line 1058
    const/4 v0, 0x0

    .line 1046
    :goto_2f
    if-eqz v0, :cond_a

    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/c;->a(J)V

    .line 1064
    new-instance v0, Lcom/miui/analytics/internal/h;

    iget-object v1, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    const-string v2, "com.miui.spock"

    const-string v3, "spock_monitor"

    const-string v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    iget-object v1, p0, Lcom/miui/analytics/internal/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    goto :goto_a

    .line 1060
    :cond_4f
    const/4 v0, 0x1

    goto :goto_2f
.end method
