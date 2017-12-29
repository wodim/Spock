.class public final Lcom/miui/analytics/internal/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/a/c$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "UA"

.field private static volatile c:Lcom/miui/analytics/internal/a/c;

.field private static final e:Ljava/lang/Object;


# instance fields
.field a:Lcom/miui/analytics/internal/a/c$a;

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/analytics/internal/a/c;->e:Ljava/lang/Object;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/c;->d:Landroid/content/Context;

    .line 39
    new-instance v0, Lcom/miui/analytics/internal/a/c$a;

    iget-object v1, p0, Lcom/miui/analytics/internal/a/c;->d:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/miui/analytics/internal/a/c$a;-><init>(Lcom/miui/analytics/internal/a/c;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/a/c;->a:Lcom/miui/analytics/internal/a/c$a;

    .line 40
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/c;
    .registers 3

    .prologue
    .line 43
    const-class v1, Lcom/miui/analytics/internal/a/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/a/c;->c:Lcom/miui/analytics/internal/a/c;

    if-nez v0, :cond_e

    .line 44
    new-instance v0, Lcom/miui/analytics/internal/a/c;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/a/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/a/c;->c:Lcom/miui/analytics/internal/a/c;

    .line 46
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/a/c;->c:Lcom/miui/analytics/internal/a/c;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/miui/analytics/internal/a/c;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/c;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/miui/analytics/internal/a/c;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/Object;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/analytics/internal/a/c;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 5

    .prologue
    .line 58
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 60
    :try_start_5
    const-string v0, "t"

    const-string v2, "miui_active_user"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/a/c$a;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_11} :catch_16

    .line 66
    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 62
    :catch_16
    move-exception v0

    .line 63
    const-string v2, "UA"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getContent e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 51
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c;->a:Lcom/miui/analytics/internal/a/c$a;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/c$a;->b()V

    .line 55
    :goto_d
    return-void

    .line 53
    :cond_e
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c;->a:Lcom/miui/analytics/internal/a/c$a;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/c$a;->c()V

    goto :goto_d
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 75
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/a/c$1;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/a/c$1;-><init>(Lcom/miui/analytics/internal/a/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method
