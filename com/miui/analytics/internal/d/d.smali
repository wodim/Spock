.class public final Lcom/miui/analytics/internal/d/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DiscardPolicy"


# instance fields
.field private b:Lcom/miui/analytics/internal/d/o;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/analytics/internal/d/o;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/analytics/internal/d/o;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/e;->H:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    .line 20
    if-eqz p2, :cond_13

    .line 21
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->H:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    :cond_13
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->H:Ljava/util/List;

    new-instance v1, Lcom/miui/analytics/internal/d/a/c;

    invoke-direct {v1}, Lcom/miui/analytics/internal/d/a/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    if-nez v0, :cond_5

    .line 41
    :cond_4
    return-void

    .line 30
    :cond_5
    invoke-static {p1}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v1

    .line 31
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/d/o;->a(Lcom/miui/analytics/internal/b/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    const-string v0, "DiscardPolicy"

    const-string v2, "discard is triggered."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/d/c;

    .line 34
    iget-object v3, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    invoke-interface {v0, p1, v3}, Lcom/miui/analytics/internal/d/c;->a(Landroid/content/Context;Lcom/miui/analytics/internal/d/o;)V

    .line 35
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/d/o;->a(Lcom/miui/analytics/internal/b/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1e
.end method
