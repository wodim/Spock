.class final Lcom/miui/analytics/internal/d/a/e$2;
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
    .line 106
    iput-object p1, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 110
    :try_start_2
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->e(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->f(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->g(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v2

    .line 113
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->h(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/d/j;->b(Ljava/lang/String;)Lcom/miui/analytics/internal/d;

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->c()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_48

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d;->h()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 116
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->i(Lcom/miui/analytics/internal/d/a/e;)V

    .line 119
    :cond_48
    invoke-virtual {v1}, Lcom/miui/analytics/internal/d/j;->e()I

    move-result v3

    .line 120
    const-string v0, "PollingSender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "trigger polling task, poling interval is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 122
    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->c()J

    move-result-wide v6

    sub-long v6, v4, v6

    int-to-long v8, v3

    cmp-long v0, v6, v8

    if-gez v0, :cond_94

    .line 123
    int-to-long v6, v3

    sub-long v4, v6, v4

    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->c()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 124
    const-string v0, "PollingSender"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sleep "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms till next upload opportunity"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {v4, v5}, Lcom/miui/analytics/internal/f/x;->a(J)V

    .line 127
    :cond_94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/miui/analytics/internal/d/a/e;->a(J)J

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 132
    :goto_a5
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->j(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/g;->f()V

    .line 133
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->k(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/g;->c()Ljava/util/List;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_269

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_269

    .line 137
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 138
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 140
    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/d/j;->g(Lcom/miui/analytics/internal/h;)Z

    move-result v7

    if-eqz v7, :cond_12f

    .line 141
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e7} :catch_e8
    .catchall {:try_start_2 .. :try_end_e7} :catchall_133

    goto :goto_d2

    .line 179
    :catch_e8
    move-exception v0

    .line 180
    :try_start_e9
    const-string v1, "PollingSender"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mUploadTask run exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 181
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f7
    .catchall {:try_start_e9 .. :try_end_f7} :catchall_133

    .line 183
    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    const-string v0, "PollingSender"

    const-string v1, "polling thread is done."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->s(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/g;->c()Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12e

    .line 188
    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 189
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/e;->d(Lcom/miui/analytics/internal/d/a/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 192
    :cond_12e
    :goto_12e
    return-void

    .line 143
    :cond_12f
    :try_start_12f
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_12f .. :try_end_132} :catch_e8
    .catchall {:try_start_12f .. :try_end_132} :catchall_133

    goto :goto_d2

    .line 183
    :catchall_133
    move-exception v0

    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    const-string v1, "PollingSender"

    const-string v2, "polling thread is done."

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/e;->s(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/analytics/internal/b/g;->c()Ljava/util/List;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_16b

    .line 188
    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_16b

    .line 189
    sget-object v1, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v2}, Lcom/miui/analytics/internal/d/a/e;->d(Lcom/miui/analytics/internal/d/a/e;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 192
    :cond_16b
    throw v0

    .line 148
    :cond_16c
    :try_start_16c
    new-instance v0, Lcom/miui/analytics/internal/e/c;

    iget-object v6, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v6}, Lcom/miui/analytics/internal/d/a/e;->l(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/miui/analytics/internal/e/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/c;->a()Ljava/util/List;

    move-result-object v0

    .line 149
    iget-object v6, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v6}, Lcom/miui/analytics/internal/d/a/e;->m(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/miui/analytics/internal/b/g;->b(Ljava/util/List;)V

    .line 150
    iget-object v6, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v6, v4, v0}, Lcom/miui/analytics/internal/d/a/e;->a(Lcom/miui/analytics/internal/d/a/e;Ljava/util/List;Ljava/util/List;)V

    .line 151
    const-string v6, "PollingSender"

    const-string v7, "realtime events(%d) success sent %d events"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 155
    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->c()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lcom/miui/analytics/internal/d/j;->a(J)Lcom/miui/analytics/internal/d/o;

    move-result-object v0

    .line 156
    const-string v6, "PollingSender"

    const-string v7, "check polling send trigger."

    invoke-static {v6, v7}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v2}, Lcom/miui/analytics/internal/d/o;->a(Lcom/miui/analytics/internal/b/d;)Z

    move-result v0

    if-eqz v0, :cond_224

    .line 159
    const-string v0, "PollingSender"

    const-string v6, "send policy is triggered."

    invoke-static {v0, v6}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->n(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/f/o;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_24f

    .line 161
    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_1df
    new-instance v0, Lcom/miui/analytics/internal/e/c;

    iget-object v6, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v6}, Lcom/miui/analytics/internal/d/a/e;->o(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6, v4}, Lcom/miui/analytics/internal/e/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/c;->a()Ljava/util/List;

    move-result-object v0

    .line 170
    const-string v6, "PollingSender"

    const-string v7, "triggered send polling events(%d), success sent %d events"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v6, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v6}, Lcom/miui/analytics/internal/d/a/e;->p(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/miui/analytics/internal/b/g;->b(Ljava/util/List;)V

    .line 172
    iget-object v6, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v6, v4, v0}, Lcom/miui/analytics/internal/d/a/e;->a(Lcom/miui/analytics/internal/d/a/e;Ljava/util/List;Ljava/util/List;)V

    .line 175
    :cond_224
    const-string v0, "PollingSender"

    const-string v6, "check discard policy "

    invoke-static {v0, v6}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->r(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/j;->c()Lcom/miui/analytics/internal/e;

    move-result-object v0

    iget-object v6, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v6}, Lcom/miui/analytics/internal/d/a/e;->q(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/miui/analytics/internal/e;->a(Landroid/content/Context;)V

    .line 177
    const v0, 0xea60

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Lcom/miui/analytics/internal/f/x;->a(J)V

    goto/16 :goto_a5

    .line 163
    :cond_24f
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_253
    :goto_253
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1df

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 164
    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/d/j;->f(Lcom/miui/analytics/internal/h;)Z

    move-result v7

    if-nez v7, :cond_253

    .line 165
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_268
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_268} :catch_e8
    .catchall {:try_start_16c .. :try_end_268} :catchall_133

    goto :goto_253

    .line 183
    :cond_269
    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 184
    const-string v0, "PollingSender"

    const-string v1, "polling thread is done."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/e;->s(Lcom/miui/analytics/internal/d/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/g;->c()Ljava/util/List;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_12e

    .line 188
    invoke-static {}, Lcom/miui/analytics/internal/d/a/e;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 189
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/a/e$2;->a:Lcom/miui/analytics/internal/d/a/e;

    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/e;->d(Lcom/miui/analytics/internal/d/a/e;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_12e
.end method
