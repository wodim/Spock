.class public final Lcom/miui/analytics/internal/d/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D


# direct methods
.method public constructor <init>(D)V
    .registers 4

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/miui/analytics/internal/i;->j:D

    .line 11
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .prologue
    .line 14
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 15
    float-to-double v0, v0

    iget-wide v2, p0, Lcom/miui/analytics/internal/i;->j:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_16

    .line 16
    const/4 v0, 0x1

    .line 18
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
