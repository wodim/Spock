.class public final Lcom/miui/analytics/internal/d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/analytics/internal/d/n;


# static fields
.field private static final a:Ljava/lang/String; = "TriggerBySendTime"


# instance fields
.field private b:I

.field private c:J


# direct methods
.method public constructor <init>(I)V
    .registers 4

    .prologue
    const-wide/16 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v0, p0, Lcom/miui/analytics/internal/d/a/i;->c:J

    .line 21
    iput p1, p0, Lcom/miui/analytics/internal/d/a/i;->b:I

    .line 22
    iput-wide v0, p0, Lcom/miui/analytics/internal/d/a/i;->c:J

    .line 23
    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 4

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/miui/analytics/internal/d/a/i;->c:J

    .line 27
    return-void
.end method

.method public final a(Lcom/miui/analytics/internal/b/d;)Z
    .registers 6

    .prologue
    .line 31
    const-string v0, "TriggerBySendTime"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check trigger , mInterval = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/miui/analytics/internal/d/a/i;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms mLastTrigger:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/miui/analytics/internal/d/a/i;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-wide v0, p0, Lcom/miui/analytics/internal/d/a/i;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_37

    .line 33
    iget-wide v0, p0, Lcom/miui/analytics/internal/d/a/i;->c:J

    iget v2, p0, Lcom/miui/analytics/internal/d/a/i;->b:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/aa;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 34
    const/4 v0, 0x1

    .line 37
    :goto_36
    return v0

    :cond_37
    const/4 v0, 0x0

    goto :goto_36
.end method
