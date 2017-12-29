.class public final Lcom/miui/analytics/internal/d/a/e;
.super Lcom/miui/analytics/internal/d/g;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "PollingSender"

.field private static d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static e:J


# instance fields
.field private f:Ljava/lang/Runnable;

.field private g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/miui/analytics/internal/d/a/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/analytics/internal/d/a/e;->e:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/analytics/internal/d/g;-><init>(Landroid/content/Context;Lcom/miui/analytics/internal/h;)V

    .line 46
    new-instance v0, Lcom/miui/analytics/internal/d/a/e$1;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/d/a/e$1;-><init>(Lcom/miui/analytics/internal/d/a/e;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->f:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/miui/analytics/internal/d/a/e$2;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/d/a/e$2;-><init>(Lcom/miui/analytics/internal/d/a/e;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->g:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/analytics/internal/h;)V
    .registers 4

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/d/g;-><init>(Landroid/content/Context;Lcom/miui/analytics/internal/h;)V

    .line 46
    new-instance v0, Lcom/miui/analytics/internal/d/a/e$1;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/d/a/e$1;-><init>(Lcom/miui/analytics/internal/d/a/e;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->f:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/miui/analytics/internal/d/a/e$2;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/d/a/e$2;-><init>(Lcom/miui/analytics/internal/d/a/e;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->g:Ljava/lang/Runnable;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/d/g;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 46
    new-instance v0, Lcom/miui/analytics/internal/d/a/e$1;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/d/a/e$1;-><init>(Lcom/miui/analytics/internal/d/a/e;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->f:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/miui/analytics/internal/d/a/e$2;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/d/a/e$2;-><init>(Lcom/miui/analytics/internal/d/a/e;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->g:Ljava/lang/Runnable;

    .line 35
    return-void
.end method

.method static synthetic a(J)J
    .registers 2

    .prologue
    .line 23
    sput-wide p0, Lcom/miui/analytics/internal/d/a/e;->e:J

    return-wide p0
.end method

.method static synthetic a(Lcom/miui/analytics/internal/d/a/e;)Ljava/util/List;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/miui/analytics/internal/d/a/e;Ljava/util/List;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/d/a/e;->a(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 97
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 98
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 99
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 103
    :cond_27
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/b/g;->c(Ljava/util/List;)V

    .line 104
    return-void
.end method

.method static synthetic b(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/miui/analytics/internal/d/a/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic c()J
    .registers 2

    .prologue
    .line 23
    sget-wide v0, Lcom/miui/analytics/internal/d/a/e;->e:J

    return-wide v0
.end method

.method static synthetic c(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/miui/analytics/internal/d/a/e;)Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->g:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .registers 6

    .prologue
    .line 70
    :try_start_0
    const-string v0, "PollingSender"

    const-string v1, "drain all the events"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 92
    :goto_f
    return-void

    .line 72
    :cond_10
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/g;->c()Ljava/util/List;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v1

    .line 74
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iget-object v3, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/analytics/internal/f/o;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 77
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 86
    :cond_30
    new-instance v0, Lcom/miui/analytics/internal/e/c;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/miui/analytics/internal/e/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/c;->a()Ljava/util/List;

    move-result-object v0

    .line 87
    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/b/g;->b(Ljava/util/List;)V

    .line 88
    invoke-direct {p0, v2, v0}, Lcom/miui/analytics/internal/d/a/e;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_f

    .line 89
    :catch_48
    move-exception v0

    .line 90
    const-string v1, "PollingSender"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drainAllEvents exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 80
    :cond_55
    :try_start_55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_59
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 81
    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/d/j;->f(Lcom/miui/analytics/internal/h;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 82
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6e} :catch_48

    goto :goto_59
.end method

.method static synthetic e(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lcom/miui/analytics/internal/d/a/e;)V
    .registers 6

    .prologue
    .line 23
    .line 1070
    :try_start_0
    const-string v0, "PollingSender"

    const-string v1, "drain all the events"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1091
    :goto_f
    return-void

    .line 1072
    :cond_10
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/g;->c()Ljava/util/List;

    move-result-object v0

    .line 1073
    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v1

    .line 1074
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    iget-object v3, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/analytics/internal/f/o;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1077
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1086
    :cond_30
    new-instance v0, Lcom/miui/analytics/internal/e/c;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/miui/analytics/internal/e/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/c;->a()Ljava/util/List;

    move-result-object v0

    .line 1087
    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/b/g;->b(Ljava/util/List;)V

    .line 1088
    invoke-direct {p0, v2, v0}, Lcom/miui/analytics/internal/d/a/e;->a(Ljava/util/List;Ljava/util/List;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_f

    .line 1089
    :catch_48
    move-exception v0

    .line 1090
    const-string v1, "PollingSender"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drainAllEvents exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f

    .line 1080
    :cond_55
    :try_start_55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_59
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 1081
    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/d/j;->f(Lcom/miui/analytics/internal/h;)Z

    move-result v4

    if-nez v4, :cond_59

    .line 1082
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_6e} :catch_48

    goto :goto_59
.end method

.method static synthetic j(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 43
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e;->f:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
