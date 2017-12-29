.class public final Lcom/miui/analytics/internal/d/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/analytics/internal/d/c;


# static fields
.field private static final a:Ljava/lang/String; = "IterateDiscard"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/miui/analytics/internal/d/o;)V
    .registers 15

    .prologue
    .line 20
    invoke-static {p1}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v4

    .line 21
    if-eqz p2, :cond_89

    invoke-virtual {p2, v4}, Lcom/miui/analytics/internal/d/o;->a(Lcom/miui/analytics/internal/b/d;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 22
    const-string v0, "IterateDiscard"

    const-string v1, "discard is triggered."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 24
    const-wide/32 v0, 0x48190800

    sub-long v8, v6, v0

    .line 1119
    invoke-virtual {v4}, Lcom/miui/analytics/internal/b/g;->c()Ljava/util/List;

    move-result-object v2

    .line 1120
    const-wide/16 v0, 0x0

    .line 1121
    if-eqz v2, :cond_4b

    .line 1122
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-wide v2, v0

    :cond_29
    :goto_29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 1123
    if-eqz v0, :cond_29

    .line 1126
    const-wide/16 v10, 0x0

    cmp-long v1, v2, v10

    if-eqz v1, :cond_45

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->d()J

    move-result-wide v10

    cmp-long v1, v10, v2

    if-gez v1, :cond_8a

    .line 1127
    :cond_45
    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->d()J

    move-result-wide v0

    :goto_49
    move-wide v2, v0

    .line 1129
    goto :goto_29

    :cond_4b
    move-wide v2, v0

    .line 24
    :cond_4c
    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 26
    :goto_50
    invoke-virtual {p2, v4}, Lcom/miui/analytics/internal/d/o;->a(Lcom/miui/analytics/internal/b/d;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 29
    const-wide/32 v2, 0x240c8400

    sub-long v2, v6, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_67

    .line 30
    invoke-virtual {v4, v0, v1}, Lcom/miui/analytics/internal/b/g;->a(J)V

    .line 31
    const-wide/32 v2, 0x240c8400

    add-long/2addr v0, v2

    goto :goto_50

    .line 32
    :cond_67
    const-wide/32 v2, 0x5265c00

    sub-long v2, v6, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_78

    .line 33
    invoke-virtual {v4, v0, v1}, Lcom/miui/analytics/internal/b/g;->a(J)V

    .line 34
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    goto :goto_50

    .line 35
    :cond_78
    const-wide/32 v2, 0x36ee80

    sub-long v2, v6, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_89

    .line 36
    invoke-virtual {v4, v0, v1}, Lcom/miui/analytics/internal/b/g;->a(J)V

    .line 37
    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    goto :goto_50

    .line 44
    :cond_89
    return-void

    :cond_8a
    move-wide v0, v2

    goto :goto_49
.end method
