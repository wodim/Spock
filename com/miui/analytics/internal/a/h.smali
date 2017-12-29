.class public final Lcom/miui/analytics/internal/a/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/a/h$e;,
        Lcom/miui/analytics/internal/a/h$d;,
        Lcom/miui/analytics/internal/a/h$b;,
        Lcom/miui/analytics/internal/a/h$c;,
        Lcom/miui/analytics/internal/a/h$a;
    }
.end annotation


# static fields
.field public static a:Z = false

.field private static final b:Ljava/lang/String; = "UsageStatsHelper"

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/analytics/internal/a/h;->a:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/analytics/internal/a/h$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_10

    .line 54
    new-instance v0, Lcom/miui/analytics/internal/a/h$d;

    invoke-direct {v0}, Lcom/miui/analytics/internal/a/h$d;-><init>()V

    .line 60
    :goto_b
    invoke-interface {v0, p0}, Lcom/miui/analytics/internal/a/h$b;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 56
    :cond_10
    new-instance v0, Lcom/miui/analytics/internal/a/h$e;

    invoke-direct {v0}, Lcom/miui/analytics/internal/a/h$e;-><init>()V

    goto :goto_b
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_22

    .line 65
    const-string v0, "UsageStatsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UsageEventSequence not available for SDK "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    :goto_21
    return-object v0

    :cond_22
    invoke-static {p0}, Lcom/miui/analytics/internal/a/h$e;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    goto :goto_21
.end method

.method static synthetic c(Landroid/content/Context;)V
    .registers 1

    .prologue
    .line 30
    invoke-static {p0}, Lcom/miui/analytics/internal/a/h;->e(Landroid/content/Context;)V

    return-void
.end method

.method private static d(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 557
    sget-boolean v0, Lcom/miui/analytics/internal/a/h;->c:Z

    if-nez v0, :cond_20

    .line 558
    const-string v0, "UsageStatsHelper"

    const-string v1, "register USAGE_TEST broadcast"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 561
    const-string v1, "USAGE_TEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    new-instance v1, Lcom/miui/analytics/internal/a/h$1;

    invoke-direct {v1}, Lcom/miui/analytics/internal/a/h$1;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 569
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miui/analytics/internal/a/h;->c:Z

    .line 571
    :cond_20
    invoke-static {p0}, Lcom/miui/analytics/internal/a/h;->e(Landroid/content/Context;)V

    .line 572
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 576
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_20

    .line 577
    const-string v0, "UsageStatsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "print today usage, API:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-static {p0}, Lcom/miui/analytics/internal/a/h$d;->b(Landroid/content/Context;)V

    .line 583
    :goto_1f
    return-void

    .line 580
    :cond_20
    const-string v0, "UsageStatsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "print yesterday usage, API:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-static {p0}, Lcom/miui/analytics/internal/a/h$e;->c(Landroid/content/Context;)V

    goto :goto_1f
.end method
