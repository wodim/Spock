.class final Lcom/miui/analytics/internal/d/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/d/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/d/a/e;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/d/a/e;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/analytics/internal/d/a/e$1;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$1;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->a(Lcom/miui/analytics/internal/d/a/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 52
    iget-object v3, p0, Lcom/miui/analytics/internal/d/a/e$1;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v3}, Lcom/miui/analytics/internal/d/a/e;->b(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/analytics/internal/d/j;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/i;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/miui/analytics/internal/i;->a()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 54
    const-string v3, "PollingSender"

    const-string v4, "sample rate match."

    invoke-static {v3, v4}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 58
    :cond_3a
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$1;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->c(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/b/g;->a(Ljava/util/List;)V

    .line 60
    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 61
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e$1;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/e;->d(Lcom/miui/analytics/internal/d/a/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 65
    :goto_5e
    return-void

    .line 63
    :cond_5f
    const-string v0, "PollingSender"

    const-string v1, "mUploadTask is already running..."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e
.end method
