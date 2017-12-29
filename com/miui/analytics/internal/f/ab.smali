.class public final Lcom/miui/analytics/internal/f/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Trace"

.field private static b:Ljava/lang/String;

.field private static c:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 9
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/miui/analytics/internal/f/ab;->c:J

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 5

    .prologue
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/miui/analytics/internal/f/ab;->c:J

    sub-long/2addr v0, v2

    .line 19
    invoke-static {}, Lcom/miui/analytics/internal/f/ab;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "session end. cost time is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 12
    sput-object p0, Lcom/miui/analytics/internal/f/ab;->b:Ljava/lang/String;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/miui/analytics/internal/f/ab;->c:J

    .line 14
    invoke-static {}, Lcom/miui/analytics/internal/f/ab;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session start "

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method private static b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/miui/analytics/internal/f/ab;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    const-string v0, "Trace"

    .line 26
    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/miui/analytics/internal/f/ab;->b:Ljava/lang/String;

    goto :goto_a
.end method
