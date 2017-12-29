.class public final Lcom/miui/analytics/internal/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/analytics/internal/b/d;


# static fields
.field private static final a:Ljava/lang/String; = "TrackerStore"

.field private static c:Lcom/miui/analytics/internal/b/g;


# instance fields
.field private b:Lcom/miui/analytics/internal/b/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/miui/analytics/internal/b/a;

    invoke-direct {v0, p1}, Lcom/miui/analytics/internal/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    .line 39
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;
    .registers 4

    .prologue
    .line 27
    const-class v1, Lcom/miui/analytics/internal/b/g;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/b/g;->c:Lcom/miui/analytics/internal/b/g;

    if-nez v0, :cond_12

    .line 28
    invoke-static {p0}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 29
    new-instance v2, Lcom/miui/analytics/internal/b/g;

    invoke-direct {v2, v0}, Lcom/miui/analytics/internal/b/g;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/miui/analytics/internal/b/g;->c:Lcom/miui/analytics/internal/b/g;

    .line 31
    :cond_12
    sget-object v0, Lcom/miui/analytics/internal/b/g;->c:Lcom/miui/analytics/internal/b/g;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()J
    .registers 4

    .prologue
    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/a;->d()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7
    .catchall {:try_start_0 .. :try_end_5} :catchall_16

    move-result-wide v0

    .line 161
    :goto_6
    return-wide v0

    .line 157
    :catch_7
    move-exception v0

    .line 158
    :try_start_8
    const-string v1, "TrackerStore"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getStoreCount e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_16

    .line 161
    const-wide/16 v0, 0x0

    goto :goto_6

    .line 159
    :catchall_16
    move-exception v0

    throw v0
.end method

.method public final a(J)V
    .registers 6

    .prologue
    .line 135
    const-string v0, "TrackerStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "popEventsByTime  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    invoke-virtual {v0, p1, p2}, Lcom/miui/analytics/internal/b/a;->a(J)Z

    .line 140
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 106
    :goto_6
    return-void

    .line 102
    :cond_7
    const-string v0, "TrackerStore"

    const-string v1, "pushEvent %d events into db. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    invoke-virtual {v0, p1}, Lcom/miui/analytics/internal/b/a;->b(Ljava/util/List;)Z

    goto :goto_6
.end method

.method public final b()J
    .registers 6

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    .line 1368
    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1369
    if-eqz v0, :cond_30

    .line 1370
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 167
    :goto_c
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 168
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 170
    const-string v2, "TrackerStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "db size is  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :goto_2f
    return-wide v0

    .line 1372
    :cond_30
    const/4 v0, 0x0

    goto :goto_c

    .line 173
    :cond_32
    const-wide/16 v0, 0x0

    goto :goto_2f
.end method

.method public final b(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 151
    :cond_8
    :goto_8
    return-void

    .line 146
    :cond_9
    const-string v0, "TrackerStore"

    const-string v1, "popEvents %d events from db. "

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    invoke-virtual {v0, p1}, Lcom/miui/analytics/internal/b/a;->c(Ljava/util/List;)Z

    goto :goto_8
.end method

.method public final c()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    :try_start_5
    iget-object v1, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    invoke-virtual {v1}, Lcom/miui/analytics/internal/b/a;->c()Ljava/util/List;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_e
    .catchall {:try_start_5 .. :try_end_a} :catchall_c

    move-result-object v0

    .line 115
    :goto_b
    return-object v0

    .line 113
    :catchall_c
    move-exception v0

    throw v0

    .line 114
    :catch_e
    move-exception v1

    goto :goto_b
.end method

.method public final c(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    invoke-virtual {v0, p1}, Lcom/miui/analytics/internal/b/a;->a(Ljava/util/List;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_8
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 223
    :goto_5
    return-void

    .line 222
    :catchall_6
    move-exception v0

    throw v0

    .line 223
    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method public final d()J
    .registers 11

    .prologue
    const-wide/16 v4, 0x0

    .line 119
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/g;->c()Ljava/util/List;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_2d

    .line 122
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide v2, v4

    :cond_d
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 123
    if-eqz v0, :cond_d

    .line 126
    cmp-long v1, v2, v4

    if-eqz v1, :cond_27

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->d()J

    move-result-wide v8

    cmp-long v1, v8, v2

    if-gez v1, :cond_2f

    .line 127
    :cond_27
    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->d()J

    move-result-wide v0

    :goto_2b
    move-wide v2, v0

    .line 129
    goto :goto_d

    :cond_2d
    move-wide v2, v4

    .line 131
    :cond_2e
    return-wide v2

    :cond_2f
    move-wide v0, v2

    goto :goto_2b
.end method

.method public final e()V
    .registers 9

    .prologue
    .line 194
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 195
    iget-object v2, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    invoke-virtual {v2}, Lcom/miui/analytics/internal/b/a;->a()V

    .line 196
    const-string v2, "TrackerStore"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "[ANALYTICS-DB-TRUNCATE] clean table analytics done, cost %dms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_28} :catch_29

    .line 200
    :goto_28
    return-void

    .line 197
    :catch_29
    move-exception v0

    .line 198
    const-string v1, "TrackerStore"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteAllItemsInAnalyticsTable failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_28
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/a;->b()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_8
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 210
    :goto_5
    return-void

    .line 209
    :catchall_6
    move-exception v0

    throw v0

    .line 210
    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method protected final finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    if-eqz v0, :cond_9

    .line 180
    iget-object v0, p0, Lcom/miui/analytics/internal/b/g;->b:Lcom/miui/analytics/internal/b/a;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/a;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_d

    .line 189
    :cond_9
    :goto_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 190
    return-void

    :catch_d
    move-exception v0

    goto :goto_9
.end method
