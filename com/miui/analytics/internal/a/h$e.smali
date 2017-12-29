.class final Lcom/miui/analytics/internal/a/h$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/analytics/internal/a/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/a/h$e$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()J
    .registers 2

    .prologue
    .line 221
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_b

    .line 223
    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->d()J

    move-result-wide v0

    .line 228
    :goto_a
    return-wide v0

    .line 226
    :cond_b
    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->a()J

    move-result-wide v0

    goto :goto_a
.end method

.method private static a(Landroid/content/Context;JJ)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/analytics/internal/a/h$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    const-string v0, "UsageStatsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "usage window beingTime: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " endTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/analytics/internal/a/h$e;->b(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v1

    .line 260
    invoke-static {v1}, Lcom/miui/analytics/internal/a/h$e;->c(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 261
    invoke-static {p1, p2, v0, v2}, Lcom/miui/analytics/internal/a/h$e;->b(JLjava/util/Map;Ljava/util/Map;)V

    .line 264
    invoke-static {v1}, Lcom/miui/analytics/internal/a/h$e;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 265
    invoke-static {p1, p2, v0, v1}, Lcom/miui/analytics/internal/a/h$e;->a(JLjava/util/Map;Ljava/util/Map;)V

    .line 267
    sget-boolean v3, Lcom/miui/analytics/internal/a/h;->a:Z

    if-eqz v3, :cond_3f

    .line 268
    invoke-static {v1}, Lcom/miui/analytics/internal/a/h$e;->a(Ljava/util/Map;)V

    .line 269
    invoke-static {v2}, Lcom/miui/analytics/internal/a/h$e;->b(Ljava/util/Map;)V

    .line 271
    :cond_3f
    return-object v0
.end method

.method private static a(JLjava/util/Map;Ljava/util/Map;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/analytics/internal/a/h$a;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/a/h$e$a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 319
    if-eqz p3, :cond_147

    .line 320
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_147

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 321
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 322
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 323
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/analytics/internal/a/h$a;

    .line 325
    if-eqz v4, :cond_a

    .line 328
    iget-object v10, v4, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    .line 329
    iget-object v11, v4, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    .line 331
    const/4 v4, 0x0

    move v8, v4

    :goto_32
    const/16 v4, 0x18

    if-ge v8, v4, :cond_a

    .line 332
    const-wide/16 v4, 0x0

    .line 333
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-wide v6, v4

    :goto_3d
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_121

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/analytics/internal/a/h$e$a;

    .line 334
    new-instance v5, Lcom/miui/analytics/internal/a/h$e$a;

    invoke-direct {v5}, Lcom/miui/analytics/internal/a/h$e$a;-><init>()V

    .line 335
    int-to-long v14, v8

    const-wide/32 v16, 0x36ee80

    mul-long v14, v14, v16

    add-long v14, v14, p0

    iput-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    .line 336
    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    const-wide/32 v16, 0x36ee80

    add-long v14, v14, v16

    iput-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    .line 3178
    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v0, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gez v13, :cond_75

    iget-wide v14, v4, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v0, v4, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_7a

    .line 3179
    :cond_75
    const-wide/16 v4, 0x0

    .line 338
    :goto_77
    add-long/2addr v4, v6

    move-wide v6, v4

    .line 339
    goto :goto_3d

    .line 3182
    :cond_7a
    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v0, v4, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-lez v13, :cond_8e

    iget-wide v14, v4, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v0, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_91

    .line 3186
    :cond_8e
    const-wide/16 v4, 0x0

    goto :goto_77

    .line 3188
    :cond_91
    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v0, v4, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_b6

    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v0, v4, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-lez v13, :cond_b6

    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v0, v4, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_b6

    .line 3192
    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, v4, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    sub-long v4, v14, v4

    goto :goto_77

    .line 3193
    :cond_b6
    iget-wide v14, v4, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v0, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_db

    iget-wide v14, v4, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v0, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-lez v13, :cond_db

    iget-wide v14, v4, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v0, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_db

    .line 3197
    iget-wide v14, v4, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    sub-long v4, v14, v4

    goto :goto_77

    .line 3199
    :cond_db
    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v0, v4, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_f6

    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v0, v4, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-ltz v13, :cond_f6

    .line 3201
    iget-wide v14, v4, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, v4, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    sub-long v4, v14, v4

    goto :goto_77

    .line 3202
    :cond_f6
    iget-wide v14, v4, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    iget-wide v0, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-gtz v13, :cond_112

    iget-wide v14, v4, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v0, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    move-wide/from16 v16, v0

    cmp-long v4, v14, v16

    if-ltz v4, :cond_112

    .line 3204
    iget-wide v14, v5, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    iget-wide v4, v5, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    sub-long v4, v14, v4

    goto/16 :goto_77

    .line 3206
    :cond_112
    sget-boolean v4, Lcom/miui/analytics/internal/a/h;->a:Z

    if-eqz v4, :cond_11d

    .line 3207
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "never run here!!!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3210
    :cond_11d
    const-wide/16 v4, 0x0

    goto/16 :goto_77

    .line 340
    :cond_121
    const-wide/16 v4, 0x0

    cmp-long v4, v6, v4

    if-lez v4, :cond_142

    .line 341
    int-to-long v4, v8

    invoke-virtual {v11, v4, v5}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/analytics/internal/a/h$c;

    .line 342
    if-nez v4, :cond_13b

    .line 343
    new-instance v4, Lcom/miui/analytics/internal/a/h$c;

    invoke-direct {v4}, Lcom/miui/analytics/internal/a/h$c;-><init>()V

    .line 344
    iput-object v3, v4, Lcom/miui/analytics/internal/a/h$c;->a:Ljava/lang/String;

    .line 345
    int-to-long v12, v8

    invoke-virtual {v11, v12, v13, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 347
    :cond_13b
    iput-wide v6, v4, Lcom/miui/analytics/internal/a/h$c;->b:J

    .line 348
    iget-wide v4, v10, Lcom/miui/analytics/internal/a/h$c;->b:J

    add-long/2addr v4, v6

    iput-wide v4, v10, Lcom/miui/analytics/internal/a/h$c;->b:J

    .line 331
    :cond_142
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto/16 :goto_32

    .line 353
    :cond_147
    return-void
.end method

.method private static a(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    const-string v0, "UsageStatsHelper"

    const-string v1, "#### BEGIN print yesterday usage event raw sequence####"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-eqz p0, :cond_45

    .line 301
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 302
    const-string v2, "UsageStatsHelper"

    const-string v3, "RAW pkg:%s, event:%d, ts:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 305
    :cond_45
    const-string v0, "UsageStatsHelper"

    const-string v1, "#### END print yesterday usage event raw sequence####"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method private static a(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/a/h$e$a;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 392
    if-eqz p0, :cond_6d

    .line 393
    const-string v0, "UsageStatsHelper"

    const-string v1, "### event intervals"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 395
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 396
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 397
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/h$e$a;

    .line 398
    const-string v4, "UsageStatsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "package:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", begin:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " end:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 401
    :cond_66
    const-string v0, "UsageStatsHelper"

    const-string v1, "###"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_6d
    return-void
.end method

.method private static a(Landroid/app/usage/UsageEvents$Event;)Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 486
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 487
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    if-eq v1, v0, :cond_18

    invoke-virtual {p0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_19

    :cond_18
    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    .line 486
    goto :goto_18
.end method

.method private static b()J
    .registers 6

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/16 v2, 0x1

    .line 233
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_26

    .line 1100
    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->d()J

    move-result-wide v0

    .line 1101
    add-long/2addr v0, v4

    sub-long/2addr v0, v2

    .line 1102
    const-string v2, "TimeUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "TodayUTC0EndTime "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_25
    return-wide v0

    .line 2081
    :cond_26
    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->a()J

    move-result-wide v0

    add-long/2addr v0, v4

    sub-long/2addr v0, v2

    .line 238
    goto :goto_25
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 275
    invoke-static {}, Lcom/miui/analytics/internal/a/h$e;->a()J

    move-result-wide v2

    .line 276
    invoke-static {}, Lcom/miui/analytics/internal/a/h$e;->b()J

    move-result-wide v4

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-static {p0, v2, v3, v4, v5}, Lcom/miui/analytics/internal/a/h$e;->b(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v6

    .line 281
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_15
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 282
    invoke-static {v0}, Lcom/miui/analytics/internal/a/h$e;->a(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 283
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 285
    :cond_2b
    const-string v8, "UsageStatsHelper"

    const-string v9, "Skip event pkg:%s,event:%d,ts:%d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    .line 289
    :cond_57
    sget-boolean v0, Lcom/miui/analytics/internal/a/h;->a:Z

    if-eqz v0, :cond_91

    .line 290
    invoke-static {v6}, Lcom/miui/analytics/internal/a/h$e;->a(Ljava/util/List;)V

    .line 291
    invoke-static {v1}, Lcom/miui/analytics/internal/a/h$e;->b(Ljava/util/List;)V

    .line 292
    const-string v0, "UsageStatsHelper"

    const-string v6, "dayUsageEventSequence dayBegin:%d,%s, dayEnd:%d,%s"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 293
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v8

    const/4 v2, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    aput-object v3, v7, v2

    .line 292
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_91
    return-object v1
.end method

.method private static b(Landroid/content/Context;JJ)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ)",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    :try_start_0
    const-string v0, "usagestats"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 495
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object v1

    .line 496
    if-eqz v1, :cond_31

    .line 497
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 498
    :goto_13
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 499
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 500
    invoke-virtual {v1, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 501
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_13

    .line 506
    :catch_25
    move-exception v0

    .line 507
    const-string v1, "UsageStatsHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "queryEvents exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    :cond_31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_36
    return-object v0

    .line 503
    :cond_37
    :try_start_37
    const-string v1, "UsageStatsHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryEvents size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4f} :catch_25

    goto :goto_36
.end method

.method private static b(JLjava/util/Map;Ljava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/analytics/internal/a/h$a;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x1

    .line 356
    if-eqz p3, :cond_7e

    .line 357
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 358
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 359
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 361
    new-instance v3, Lcom/miui/analytics/internal/a/h$a;

    invoke-direct {v3}, Lcom/miui/analytics/internal/a/h$a;-><init>()V

    .line 363
    invoke-interface {p2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v4, Lcom/miui/analytics/internal/a/h$c;

    invoke-direct {v4}, Lcom/miui/analytics/internal/a/h$c;-><init>()V

    .line 366
    iput-object v1, v4, Lcom/miui/analytics/internal/a/h$c;->a:Ljava/lang/String;

    .line 367
    iput-object v4, v3, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    .line 369
    new-instance v5, Landroid/util/LongSparseArray;

    invoke-direct {v5}, Landroid/util/LongSparseArray;-><init>()V

    .line 370
    iput-object v5, v3, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    .line 373
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_40
    :goto_40
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 374
    sub-long/2addr v6, p0

    const-wide/32 v8, 0x36ee80

    div-long/2addr v6, v8

    .line 375
    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_40

    const-wide/16 v8, 0x17

    cmp-long v0, v6, v8

    if-gtz v0, :cond_40

    .line 378
    invoke-virtual {v5, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/h$c;

    .line 379
    if-nez v0, :cond_73

    .line 380
    new-instance v0, Lcom/miui/analytics/internal/a/h$c;

    invoke-direct {v0}, Lcom/miui/analytics/internal/a/h$c;-><init>()V

    .line 381
    invoke-virtual {v5, v6, v7, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 382
    iput-object v1, v0, Lcom/miui/analytics/internal/a/h$c;->a:Ljava/lang/String;

    .line 384
    :cond_73
    iget-wide v6, v0, Lcom/miui/analytics/internal/a/h$c;->c:J

    add-long/2addr v6, v10

    iput-wide v6, v0, Lcom/miui/analytics/internal/a/h$c;->c:J

    .line 385
    iget-wide v6, v4, Lcom/miui/analytics/internal/a/h$c;->c:J

    add-long/2addr v6, v10

    iput-wide v6, v4, Lcom/miui/analytics/internal/a/h$c;->c:J

    goto :goto_40

    .line 389
    :cond_7e
    return-void
.end method

.method private static b(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "UsageStatsHelper"

    const-string v1, "#### BEGIN print yesterday usage event sequence####"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 312
    const-string v2, "UsageStatsHelper"

    const-string v3, "EVENT pkg:%s, event:%d, ts:%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 315
    :cond_43
    const-string v0, "UsageStatsHelper"

    const-string v1, "#### END print yesterday usage event sequence####"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method private static b(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 406
    if-eqz p0, :cond_63

    .line 407
    const-string v0, "UsageStatsHelper"

    const-string v1, "### new launch time"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 409
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 410
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 411
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 412
    const-string v0, "UsageStatsHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "package:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", newLaunchTime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 415
    :cond_5c
    const-string v0, "UsageStatsHelper"

    const-string v1, "###"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_63
    return-void
.end method

.method private static c(Ljava/util/List;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 421
    if-nez p0, :cond_4

    .line 444
    :goto_3
    return-object v3

    .line 425
    :cond_4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 427
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 428
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 429
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    .line 430
    invoke-static {v1}, Lcom/miui/analytics/internal/a/h$e;->a(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 433
    const/4 v6, 0x1

    if-ne v0, v6, :cond_51

    .line 434
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    .line 436
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 437
    if-nez v0, :cond_41

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    :cond_41
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    :goto_4d
    move-object v3, v0

    .line 443
    goto :goto_d

    :cond_4f
    move-object v3, v4

    .line 444
    goto :goto_3

    :cond_51
    move-object v0, v3

    goto :goto_4d
.end method

.method static synthetic c(Landroid/content/Context;)V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 171
    .line 3517
    const-string v0, "UsageStatsHelper"

    const-string v1, "\n\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3518
    const-string v0, "UsageStatsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "~~~ printYesterdayUsagesAndEvents for android sdk "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ~~~"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3519
    invoke-static {p0}, Lcom/miui/analytics/internal/a/h$e;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 3520
    const-string v1, "UsageStatsHelper"

    const-string v3, "@@@ cusages: "

    invoke-static {v1, v3}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3521
    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_42

    .line 3522
    :cond_3a
    const-string v0, "UsageStatsHelper"

    const-string v1, "usages empty"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3523
    :goto_41
    return-void

    .line 3525
    :cond_42
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/h$a;

    .line 3526
    const-string v1, "UsageStatsHelper"

    const-string v4, "package:%s, totalTimeInForeground:%d, launchCount:%d"

    new-array v5, v12, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-object v6, v6, Lcom/miui/analytics/internal/a/h$c;->a:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-wide v6, v6, Lcom/miui/analytics/internal/a/h$c;->b:J

    .line 3530
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-wide v6, v6, Lcom/miui/analytics/internal/a/h$c;->c:J

    .line 3531
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    .line 3526
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    iget-object v4, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    .line 3533
    if-eqz v4, :cond_4a

    move v1, v2

    .line 3534
    :goto_82
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    .line 3535
    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 3536
    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/h$c;

    .line 3537
    const-string v5, "UsageStatsHelper"

    const-string v8, "\th:%d, totalTimeInForeground:%d, launchCount:%d"

    new-array v9, v12, [Ljava/lang/Object;

    .line 3540
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v2

    iget-wide v6, v0, Lcom/miui/analytics/internal/a/h$c;->b:J

    .line 3541
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    iget-wide v6, v0, Lcom/miui/analytics/internal/a/h$c;->c:J

    .line 3542
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v11

    .line 3537
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3534
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_82

    .line 3547
    :cond_b9
    const-string v0, "UsageStatsHelper"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n\n"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method

.method private static d(Landroid/content/Context;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/analytics/internal/a/h$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    invoke-static {}, Lcom/miui/analytics/internal/a/h$e;->a()J

    move-result-wide v0

    .line 247
    invoke-static {}, Lcom/miui/analytics/internal/a/h$e;->b()J

    move-result-wide v2

    .line 2255
    const-string v4, "UsageStatsHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "usage window beingTime: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " endTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2256
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2259
    invoke-static {p0, v0, v1, v2, v3}, Lcom/miui/analytics/internal/a/h$e;->b(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v2

    .line 2260
    invoke-static {v2}, Lcom/miui/analytics/internal/a/h$e;->c(Ljava/util/List;)Ljava/util/Map;

    move-result-object v3

    .line 2261
    invoke-static {v0, v1, v4, v3}, Lcom/miui/analytics/internal/a/h$e;->b(JLjava/util/Map;Ljava/util/Map;)V

    .line 2264
    invoke-static {v2}, Lcom/miui/analytics/internal/a/h$e;->d(Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 2265
    invoke-static {v0, v1, v4, v2}, Lcom/miui/analytics/internal/a/h$e;->a(JLjava/util/Map;Ljava/util/Map;)V

    .line 2267
    sget-boolean v0, Lcom/miui/analytics/internal/a/h;->a:Z

    if-eqz v0, :cond_47

    .line 2268
    invoke-static {v2}, Lcom/miui/analytics/internal/a/h$e;->a(Ljava/util/Map;)V

    .line 2269
    invoke-static {v3}, Lcom/miui/analytics/internal/a/h$e;->b(Ljava/util/Map;)V

    .line 250
    :cond_47
    return-object v4
.end method

.method private static d(Ljava/util/List;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/usage/UsageEvents$Event;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/a/h$e$a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 449
    if-nez p0, :cond_4

    .line 450
    const/4 v0, 0x0

    .line 481
    :goto_3
    return-object v0

    .line 453
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 454
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 455
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 456
    invoke-static {v0}, Lcom/miui/analytics/internal/a/h$e;->a(Landroid/app/usage/UsageEvents$Event;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 459
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 460
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    .line 461
    const/4 v6, 0x2

    if-ne v1, v6, :cond_6c

    .line 462
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    .line 463
    if-eqz v1, :cond_6c

    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6c

    .line 464
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v6

    .line 465
    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v8

    .line 466
    const-wide/16 v10, 0x0

    cmp-long v1, v6, v10

    if-lez v1, :cond_6c

    cmp-long v1, v8, v6

    if-ltz v1, :cond_6c

    .line 467
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 468
    if-nez v1, :cond_60

    .line 469
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 470
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :cond_60
    new-instance v10, Lcom/miui/analytics/internal/a/h$e$a;

    invoke-direct {v10}, Lcom/miui/analytics/internal/a/h$e$a;-><init>()V

    .line 473
    iput-wide v6, v10, Lcom/miui/analytics/internal/a/h$e$a;->a:J

    .line 474
    iput-wide v8, v10, Lcom/miui/analytics/internal/a/h$e$a;->b:J

    .line 475
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_6c
    invoke-interface {v3, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_70
    move-object v0, v2

    .line 481
    goto :goto_3
.end method

.method private static e(Landroid/content/Context;)V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 517
    const-string v0, "UsageStatsHelper"

    const-string v1, "\n\n>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const-string v0, "UsageStatsHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "~~~ printYesterdayUsagesAndEvents for android sdk "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ~~~"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    invoke-static {p0}, Lcom/miui/analytics/internal/a/h$e;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    .line 520
    const-string v1, "UsageStatsHelper"

    const-string v3, "@@@ cusages: "

    invoke-static {v1, v3}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    if-eqz v0, :cond_3a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_42

    .line 522
    :cond_3a
    const-string v0, "UsageStatsHelper"

    const-string v1, "usages empty"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :goto_41
    return-void

    .line 525
    :cond_42
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/h$a;

    .line 526
    const-string v1, "UsageStatsHelper"

    const-string v4, "package:%s, totalTimeInForeground:%d, launchCount:%d"

    new-array v5, v12, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-object v6, v6, Lcom/miui/analytics/internal/a/h$c;->a:Ljava/lang/String;

    aput-object v6, v5, v2

    iget-object v6, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-wide v6, v6, Lcom/miui/analytics/internal/a/h$c;->b:J

    .line 530
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v10

    iget-object v6, v0, Lcom/miui/analytics/internal/a/h$a;->b:Lcom/miui/analytics/internal/a/h$c;

    iget-wide v6, v6, Lcom/miui/analytics/internal/a/h$c;->c:J

    .line 531
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v11

    .line 526
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-object v4, v0, Lcom/miui/analytics/internal/a/h$a;->c:Landroid/util/LongSparseArray;

    .line 533
    if-eqz v4, :cond_4a

    move v1, v2

    .line 534
    :goto_82
    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4a

    .line 535
    invoke-virtual {v4, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 536
    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/a/h$c;

    .line 537
    const-string v5, "UsageStatsHelper"

    const-string v8, "\th:%d, totalTimeInForeground:%d, launchCount:%d"

    new-array v9, v12, [Ljava/lang/Object;

    .line 540
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v2

    iget-wide v6, v0, Lcom/miui/analytics/internal/a/h$c;->b:J

    .line 541
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v9, v10

    iget-wide v6, v0, Lcom/miui/analytics/internal/a/h$c;->c:J

    .line 542
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v9, v11

    .line 537
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_82

    .line 547
    :cond_b9
    const-string v0, "UsageStatsHelper"

    const-string v1, "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<\n\n"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/analytics/internal/a/h$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lcom/miui/analytics/internal/a/h$e;->d(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
