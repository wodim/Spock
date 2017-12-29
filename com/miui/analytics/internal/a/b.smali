.class public final Lcom/miui/analytics/internal/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "aaid"

.field private static final b:Ljava/lang/String; = "curr_aaid"

.field private static final c:Ljava/lang/String; = "d"

.field private static final d:Ljava/lang/String; = "i"

.field private static final e:Ljava/lang/String; = "m"

.field private static final f:Ljava/lang/String; = "f"

.field private static final g:I = 0x1

.field private static final h:I = 0x0

.field private static final i:Ljava/lang/String; = "1.36.0"

.field private static volatile j:Lcom/miui/analytics/internal/a/b;

.field private static final m:Ljava/lang/Object;


# instance fields
.field private k:Landroid/content/Context;

.field private l:Lcom/miui/analytics/internal/f/u;

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/analytics/internal/a/b;->m:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/miui/analytics/internal/a/b$1;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/a/b$1;-><init>(Lcom/miui/analytics/internal/a/b;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/a/b;->n:Ljava/lang/Runnable;

    .line 52
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/b;->k:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/miui/analytics/internal/f/u;

    iget-object v1, p0, Lcom/miui/analytics/internal/a/b;->k:Landroid/content/Context;

    const-string v2, "co"

    const-string v3, "aaid"

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/a/b;->l:Lcom/miui/analytics/internal/f/u;

    .line 54
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/b;
    .registers 3

    .prologue
    .line 57
    const-class v1, Lcom/miui/analytics/internal/a/b;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/a/b;->j:Lcom/miui/analytics/internal/a/b;

    if-nez v0, :cond_e

    .line 58
    new-instance v0, Lcom/miui/analytics/internal/a/b;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/a/b;->j:Lcom/miui/analytics/internal/a/b;

    .line 60
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/a/b;->j:Lcom/miui/analytics/internal/a/b;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/miui/analytics/internal/a/b;)Lcom/miui/analytics/internal/f/u;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b;->l:Lcom/miui/analytics/internal/f/u;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/analytics/internal/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 16

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 30
    .line 1069
    invoke-static {}, Lcom/miui/analytics/internal/f/l;->a()Z

    invoke-static {}, Lcom/miui/analytics/Analytics;->getVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.36.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1072
    iget-object v2, p0, Lcom/miui/analytics/internal/a/b;->l:Lcom/miui/analytics/internal/f/u;

    const-string v3, "force_upload_completed_flag"

    invoke-virtual {v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/miui/analytics/internal/a/b;->l:Lcom/miui/analytics/internal/f/u;

    const-string v3, "force_upload_completed_flag"

    invoke-virtual {v2, v3, v1}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_26

    .line 1087
    :cond_25
    :goto_25
    return v0

    .line 1081
    :cond_26
    invoke-static {}, Lcom/miui/analytics/internal/f/e;->d()J

    move-result-wide v2

    invoke-static {p9, p10, v2, v3}, Lcom/miui/analytics/internal/f/aa;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/miui/analytics/internal/a/b;->k:Landroid/content/Context;

    .line 1082
    invoke-static {v2}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 1083
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1084
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1085
    invoke-static {p5, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 1086
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-static {p7, p8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_56
    move v0, v1

    .line 30
    goto :goto_25
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 16

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 69
    invoke-static {}, Lcom/miui/analytics/internal/f/l;->a()Z

    invoke-static {}, Lcom/miui/analytics/Analytics;->getVersionName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1.36.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 72
    iget-object v2, p0, Lcom/miui/analytics/internal/a/b;->l:Lcom/miui/analytics/internal/f/u;

    const-string v3, "force_upload_completed_flag"

    invoke-virtual {v2, v3}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    iget-object v2, p0, Lcom/miui/analytics/internal/a/b;->l:Lcom/miui/analytics/internal/f/u;

    const-string v3, "force_upload_completed_flag"

    invoke-virtual {v2, v3, v1}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_26

    .line 89
    :cond_25
    :goto_25
    return v0

    .line 81
    :cond_26
    invoke-static {}, Lcom/miui/analytics/internal/f/e;->d()J

    move-result-wide v2

    invoke-static {p9, p10, v2, v3}, Lcom/miui/analytics/internal/f/aa;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/miui/analytics/internal/a/b;->k:Landroid/content/Context;

    .line 82
    invoke-static {v2}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 83
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 84
    invoke-static {p3, p4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 85
    invoke-static {p5, p6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 86
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    invoke-static {p7, p8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_56
    move v0, v1

    .line 89
    goto :goto_25
.end method

.method static synthetic b(Lcom/miui/analytics/internal/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/miui/analytics/internal/a/b;->m:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 64
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/miui/analytics/internal/a/b;->n:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
