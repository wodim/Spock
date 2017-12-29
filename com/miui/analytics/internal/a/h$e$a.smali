.class final Lcom/miui/analytics/internal/a/h$e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/a/h$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/miui/analytics/internal/a/h$e$a;Lcom/miui/analytics/internal/a/h$e$a;)J
    .registers 8

    .prologue
    const-wide/16 v0, 0x0

    .line 178
    iget-wide v2, p0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v4, p0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_12

    iget-wide v2, p1, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v4, p1, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_13

    .line 210
    :cond_12
    :goto_12
    return-wide v0

    .line 182
    :cond_13
    iget-wide v2, p0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, p1, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_12

    iget-wide v2, p1, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, p0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_12

    .line 188
    iget-wide v2, p0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v4, p1, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_41

    iget-wide v2, p0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, p1, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_41

    iget-wide v2, p0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, p1, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_41

    .line 192
    iget-wide v0, p0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v2, p1, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    sub-long/2addr v0, v2

    goto :goto_12

    .line 193
    :cond_41
    iget-wide v2, p1, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v4, p0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5f

    iget-wide v2, p1, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, p0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_5f

    iget-wide v2, p1, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, p0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_5f

    .line 197
    iget-wide v0, p1, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v2, p0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    sub-long/2addr v0, v2

    goto :goto_12

    .line 199
    :cond_5f
    iget-wide v2, p0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v4, p1, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_75

    iget-wide v2, p0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, p1, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_75

    .line 201
    iget-wide v0, p1, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v2, p1, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    sub-long/2addr v0, v2

    goto :goto_12

    .line 202
    :cond_75
    iget-wide v2, p1, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v4, p0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_8b

    iget-wide v2, p1, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, p0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_8b

    .line 204
    iget-wide v0, p0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v2, p0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    sub-long/2addr v0, v2

    goto :goto_12

    .line 206
    :cond_8b
    sget-boolean v2, Lcom/miui/analytics/internal/a/h;->a:Z

    if-eqz v2, :cond_12

    .line 207
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "never run here!!!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/16 :goto_12
.end method
