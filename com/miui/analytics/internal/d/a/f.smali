.class public final Lcom/miui/analytics/internal/d/a/f;
.super Lcom/miui/analytics/internal/d/g;
.source "SourceFile"


# static fields
.field private static final c:Ljava/lang/String; = "RealtimeSender"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/analytics/internal/h;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/d/g;-><init>(Landroid/content/Context;Lcom/miui/analytics/internal/h;)V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
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
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/d/g;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 29
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 77
    :cond_a
    :goto_a
    return-void

    .line 32
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 33
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v3

    .line 35
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 36
    invoke-virtual {v3, v0}, Lcom/miui/analytics/internal/d/j;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/i;

    move-result-object v5

    .line 37
    invoke-virtual {v5}, Lcom/miui/analytics/internal/i;->a()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 38
    const-string v5, "RealtimeSender"

    const-string v6, "sample rate match."

    invoke-static {v5, v6}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v5, p0, Lcom/miui/analytics/internal/d/a/f;->a:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/analytics/internal/f/o;->a(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 40
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 42
    :cond_4a
    invoke-virtual {v3, v0}, Lcom/miui/analytics/internal/d/j;->f(Lcom/miui/analytics/internal/h;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 43
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 45
    :cond_54
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 50
    :cond_58
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_ad

    .line 51
    const-string v0, "RealtimeSender"

    const-string v3, "%d events to send."

    new-array v4, v8, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/miui/analytics/internal/e/c;

    iget-object v3, p0, Lcom/miui/analytics/internal/d/a/f;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/analytics/internal/d/a/f;->b:Ljava/util/List;

    invoke-direct {v0, v3, v4}, Lcom/miui/analytics/internal/e/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/c;->a()Ljava/util/List;

    move-result-object v0

    .line 54
    const-string v3, "RealtimeSender"

    const-string v4, "%d events had been sent."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 57
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9d

    .line 66
    :cond_ad
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_cf

    .line 67
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_bf
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 68
    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->j()V

    goto :goto_bf

    .line 71
    :cond_cf
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 72
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    .line 73
    const-string v0, "RealtimeSender"

    const-string v1, "%d events had been put into polling queue.."

    new-array v3, v8, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/miui/analytics/internal/d/a/e;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/miui/analytics/internal/d/a/e;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 75
    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/a/e;->a()V

    goto/16 :goto_a
.end method
