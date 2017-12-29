.class public final Lcom/miui/analytics/internal/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PowerKeeper"

.field private static final b:Ljava/lang/String; = "miui.intent.action.POWER_SAVE_MODE_CHANGED"

.field private static final c:Ljava/lang/String; = "POWER_SAVE_MODE_OPEN"

.field private static final d:I = 0x1

.field private static final e:I = 0x3

.field private static volatile f:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput v0, Lcom/miui/analytics/internal/l;->f:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()I
    .registers 1

    .prologue
    .line 16
    sget v0, Lcom/miui/analytics/internal/l;->f:I

    return v0
.end method

.method public static a(I)I
    .registers 4

    .prologue
    .line 63
    sget v0, Lcom/miui/analytics/internal/l;->f:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    .line 64
    const-string v0, "PowerKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "using interval multi factor : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/miui/analytics/internal/l;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_1b
    sget v0, Lcom/miui/analytics/internal/l;->f:I

    mul-int/2addr v0, p0

    return v0
.end method

.method static synthetic b(I)I
    .registers 1

    .prologue
    .line 16
    sput p0, Lcom/miui/analytics/internal/l;->f:I

    return p0
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 56
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "POWER_SAVE_MODE_OPEN"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_10

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    .line 59
    :cond_f
    :goto_f
    return v0

    :catch_10
    move-exception v1

    goto :goto_f
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 25
    invoke-static {p1}, Lcom/miui/analytics/internal/l;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    const/4 v0, 0x3

    sput v0, Lcom/miui/analytics/internal/l;->f:I

    .line 28
    :cond_9
    const-string v0, "PowerKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "interval multi factor : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/miui/analytics/internal/l;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :try_start_1f
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    const-string v1, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    new-instance v1, Lcom/miui/analytics/internal/l$1;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/l$1;-><init>(Lcom/miui/analytics/internal/l;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_31} :catch_32

    .line 52
    :goto_31
    return-void

    .line 49
    :catch_32
    move-exception v0

    .line 50
    const-string v1, "PowerKeeper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "init exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method
