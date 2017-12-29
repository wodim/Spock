.class public Lcom/miui/analytics/internal/d/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/analytics/internal/d/n;


# static fields
.field private static final a:Ljava/lang/String; = "TriggerBySize"


# instance fields
.field private b:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/miui/analytics/internal/d/a/j;->b:J

    .line 15
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 1006
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/miui/analytics/internal/b/d;)Z
    .registers 6

    .prologue
    .line 19
    const-string v0, "TriggerBySize"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check trigger , mThreshold = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/miui/analytics/internal/d/a/j;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    if-eqz p1, :cond_22

    invoke-interface {p1}, Lcom/miui/analytics/internal/b/d;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/analytics/internal/d/a/j;->b:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 21
    :cond_22
    const/4 v0, 0x1

    .line 23
    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x0

    goto :goto_23
.end method
