.class public Lcom/miui/analytics/internal/d/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/d/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "PolicyManager"

.field private static final b:Ljava/lang/String; = "/policy.cache"

.field private static volatile c:Lcom/miui/analytics/internal/d/j; = null

.field private static f:I = 0xea60

.field private static g:I = 0x927c0


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/analytics/internal/d/i;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/j;->e:Ljava/util/Map;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/j;->h:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/j;->i:Ljava/lang/Object;

    .line 54
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    if-nez v0, :cond_2a

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must contain application context."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_2a
    return-void
.end method

.method static synthetic a(Lcom/miui/analytics/internal/d/j;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;
    .registers 4

    .prologue
    .line 162
    .line 3104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_c

    .line 164
    invoke-virtual {v0, p2}, Lcom/miui/analytics/internal/d/i;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    .line 166
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;
    .registers 15

    .prologue
    const/4 v4, 0x0

    .line 110
    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v2, v4

    .line 130
    :goto_8
    return-object v2

    .line 113
    :cond_9
    new-instance v3, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/miui/analytics/internal/d/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_70

    .line 115
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    .line 1187
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v2, v8, v9}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v8

    const-wide/32 v10, 0x2932e00

    rem-long/2addr v8, v10

    .line 1188
    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    .line 1191
    invoke-static {v6, v7, v8, v9}, Lcom/miui/analytics/internal/f/aa;->a(JJ)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1192
    const/4 v2, 0x1

    .line 115
    :goto_38
    if-eqz v2, :cond_3d

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/d/j;->b(Ljava/lang/String;Z)V

    .line 118
    :cond_3d
    iget-object v2, p0, Lcom/miui/analytics/internal/d/j;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_65

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/analytics/internal/e/f;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 120
    instance-of v2, v3, Lcom/miui/analytics/internal/d/i$a;

    if-eqz v2, :cond_65

    move-object v0, v3

    check-cast v0, Lcom/miui/analytics/internal/d/i$a;

    move-object v2, v0

    iget-object v2, v2, Lcom/miui/analytics/internal/d/i$a;->a:Ljava/lang/String;

    if-eqz v2, :cond_65

    .line 121
    new-instance v2, Lcom/miui/analytics/internal/d/i;

    check-cast v3, Lcom/miui/analytics/internal/d/i$a;

    invoke-direct {v2, v3}, Lcom/miui/analytics/internal/d/i;-><init>(Lcom/miui/analytics/internal/d/i$a;)V

    .line 122
    iget-object v3, p0, Lcom/miui/analytics/internal/d/j;->e:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_65
    :goto_65
    iget-object v2, p0, Lcom/miui/analytics/internal/d/j;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/analytics/internal/d/i;

    goto :goto_8

    .line 1194
    :cond_6e
    const/4 v2, 0x0

    goto :goto_38

    .line 125
    :cond_70
    iget-object v2, p0, Lcom/miui/analytics/internal/d/j;->e:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_65

    .line 126
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/d/j;->b(Ljava/lang/String;Z)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7b} :catch_7c

    goto :goto_65

    .line 130
    :catch_7c
    move-exception v2

    move-object v2, v4

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;
    .registers 3

    .prologue
    .line 61
    const-class v1, Lcom/miui/analytics/internal/d/j;

    monitor-enter v1

    .line 62
    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/d/j;->c:Lcom/miui/analytics/internal/d/j;

    if-nez v0, :cond_e

    .line 63
    new-instance v0, Lcom/miui/analytics/internal/d/j;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/d/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/d/j;->c:Lcom/miui/analytics/internal/d/j;

    .line 65
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 66
    sget-object v0, Lcom/miui/analytics/internal/d/j;->c:Lcom/miui/analytics/internal/d/j;

    return-object v0

    .line 65
    :catchall_12
    move-exception v0

    :try_start_13
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/g;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 385
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 386
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 387
    const/4 v0, 0x0

    move v3, v0

    :goto_c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_46

    .line 388
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/d/g;

    .line 389
    if-eqz v0, :cond_2d

    .line 392
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/analytics/internal/d/g;

    .line 393
    if-eqz v1, :cond_31

    .line 394
    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/d/g;->a(Lcom/miui/analytics/internal/d/g;)V

    .line 387
    :cond_2d
    :goto_2d
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_c

    .line 396
    :cond_31
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3f} :catch_40

    goto :goto_2d

    .line 402
    :catch_40
    move-exception v0

    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 405
    const/4 v0, 0x0

    :goto_45
    return-object v0

    :cond_46
    move-object v0, v2

    .line 400
    goto :goto_45
.end method

.method static synthetic a(Lcom/miui/analytics/internal/d/j;Ljava/lang/String;Lcom/miui/analytics/internal/d/i;)V
    .registers 5

    .prologue
    .line 35
    .line 10178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_9

    .line 10179
    :cond_8
    :goto_8
    return-void

    .line 10181
    :cond_9
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10182
    invoke-direct {p0, p1}, Lcom/miui/analytics/internal/d/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/analytics/internal/d/i;->a()Ljava/io/Serializable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/f;->a(Ljava/lang/String;Ljava/io/Serializable;)Z

    goto :goto_8
.end method

.method private a(Ljava/lang/String;Lcom/miui/analytics/internal/d/i;)V
    .registers 5

    .prologue
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_9

    .line 183
    :cond_8
    :goto_8
    return-void

    .line 181
    :cond_9
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-direct {p0, p1}, Lcom/miui/analytics/internal/d/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/miui/analytics/internal/d/i;->a()Ljava/io/Serializable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/f;->a(Ljava/lang/String;Ljava/io/Serializable;)Z

    goto :goto_8
.end method

.method private b(Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 143
    if-eqz v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_32

    .line 144
    :cond_1b
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->h:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    if-eqz p2, :cond_33

    .line 146
    new-instance v0, Lcom/miui/analytics/internal/d/j$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/analytics/internal/d/j$a;-><init>(Lcom/miui/analytics/internal/d/j;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/j$a;->run()V

    .line 151
    :cond_32
    :goto_32
    return-void

    .line 148
    :cond_33
    new-instance v0, Lcom/miui/analytics/internal/d/j$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/analytics/internal/d/j$a;-><init>(Lcom/miui/analytics/internal/d/j;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/j$a;->start()V

    goto :goto_32
.end method

.method private static b(J)Z
    .registers 6

    .prologue
    .line 187
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/32 v2, 0x2932e00

    rem-long/2addr v0, v2

    .line 188
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 191
    invoke-static {p0, p1, v0, v1}, Lcom/miui/analytics/internal/f/aa;->a(JJ)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 192
    const/4 v0, 0x1

    .line 197
    :goto_1c
    return v0

    .line 194
    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/miui/analytics/internal/d/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 77
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 79
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/policy.cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/miui/analytics/internal/d/i;
    .registers 3

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    move-result-object v0

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g()Lcom/miui/analytics/internal/d/o;
    .registers 7

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/analytics/internal/d/j;->b(Ljava/lang/String;)Lcom/miui/analytics/internal/d;

    move-result-object v1

    .line 284
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/miui/analytics/internal/d;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 285
    new-instance v0, Lcom/miui/analytics/internal/d/o;

    invoke-virtual {v1}, Lcom/miui/analytics/internal/d;->d()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/analytics/internal/d/o;-><init>(Ljava/util/List;)V

    .line 287
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Lcom/miui/analytics/internal/d/o;

    .line 7324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7325
    new-instance v2, Lcom/miui/analytics/internal/d/a/h;

    const/16 v3, 0x2710

    invoke-direct {v2, v3}, Lcom/miui/analytics/internal/d/a/h;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7326
    new-instance v2, Lcom/miui/analytics/internal/d/a/j;

    const-wide/32 v4, 0x989680

    invoke-direct {v2, v4, v5}, Lcom/miui/analytics/internal/d/a/j;-><init>(J)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-direct {v0, v1}, Lcom/miui/analytics/internal/d/o;-><init>(Ljava/util/List;)V

    goto :goto_1b
.end method

.method private static h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v1, Lcom/miui/analytics/internal/d/a/c;

    invoke-direct {v1}, Lcom/miui/analytics/internal/d/a/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    return-object v0
.end method

.method private i(Lcom/miui/analytics/internal/h;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 201
    if-eqz p1, :cond_11

    .line 202
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_11

    .line 204
    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/f;->h()Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method private static i()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    new-instance v1, Lcom/miui/analytics/internal/d/a/i;

    const v2, 0x927c0

    invoke-direct {v1, v2}, Lcom/miui/analytics/internal/d/a/i;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance v1, Lcom/miui/analytics/internal/d/a/h;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/miui/analytics/internal/d/a/h;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    new-instance v1, Lcom/miui/analytics/internal/d/a/j;

    const-wide/32 v2, 0x186a0

    invoke-direct {v1, v2, v3}, Lcom/miui/analytics/internal/d/a/j;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    return-object v0
.end method

.method private static j()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    new-instance v1, Lcom/miui/analytics/internal/d/a/h;

    const/16 v2, 0x2710

    invoke-direct {v1, v2}, Lcom/miui/analytics/internal/d/a/h;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v1, Lcom/miui/analytics/internal/d/a/j;

    const-wide/32 v2, 0x989680

    invoke-direct {v1, v2, v3}, Lcom/miui/analytics/internal/d/a/j;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/analytics/internal/d/f;
    .registers 4

    .prologue
    .line 170
    .line 4104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_c

    .line 172
    invoke-virtual {v0, p2}, Lcom/miui/analytics/internal/d/i;->a(Ljava/lang/String;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    .line 174
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final a(J)Lcom/miui/analytics/internal/d/o;
    .registers 8

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/analytics/internal/d/j;->b(Ljava/lang/String;)Lcom/miui/analytics/internal/d;

    move-result-object v0

    .line 293
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d;->e()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3d

    .line 294
    invoke-virtual {v0}, Lcom/miui/analytics/internal/d;->e()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 298
    :goto_21
    if-eqz v1, :cond_64

    .line 299
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/d/n;

    .line 300
    instance-of v3, v0, Lcom/miui/analytics/internal/d/a/i;

    if-eqz v3, :cond_27

    .line 301
    check-cast v0, Lcom/miui/analytics/internal/d/a/i;

    invoke-virtual {v0, p1, p2}, Lcom/miui/analytics/internal/d/a/i;->a(J)V

    goto :goto_27

    .line 8316
    :cond_3d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8317
    new-instance v1, Lcom/miui/analytics/internal/d/a/i;

    const v2, 0x927c0

    invoke-direct {v1, v2}, Lcom/miui/analytics/internal/d/a/i;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8318
    new-instance v1, Lcom/miui/analytics/internal/d/a/h;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcom/miui/analytics/internal/d/a/h;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8319
    new-instance v1, Lcom/miui/analytics/internal/d/a/j;

    const-wide/32 v2, 0x186a0

    invoke-direct {v1, v2, v3}, Lcom/miui/analytics/internal/d/a/j;-><init>(J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    .line 296
    goto :goto_21

    .line 305
    :cond_64
    new-instance v0, Lcom/miui/analytics/internal/d/o;

    invoke-direct {v0, v1}, Lcom/miui/analytics/internal/d/o;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/i;
    .registers 6

    .prologue
    .line 211
    if-eqz p1, :cond_16

    .line 212
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v1

    .line 213
    if-eqz v1, :cond_16

    .line 214
    new-instance v0, Lcom/miui/analytics/internal/i;

    invoke-virtual {v1}, Lcom/miui/analytics/internal/d/f;->b()D

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/miui/analytics/internal/i;-><init>(D)V

    .line 217
    :goto_15
    return-object v0

    :cond_16
    new-instance v0, Lcom/miui/analytics/internal/i;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lcom/miui/analytics/internal/i;-><init>(D)V

    goto :goto_15
.end method

.method public final a()V
    .registers 9

    .prologue
    .line 83
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/miui/analytics/internal/d/j;->f()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 85
    if-eqz v1, :cond_30

    .line 86
    array-length v2, v1

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_30

    aget-object v3, v1, v0

    .line 87
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 88
    new-instance v4, Ljava/io/File;

    const-string v5, "/policy.cache"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 90
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/io/File;->setLastModified(J)Z

    .line 86
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 95
    :cond_30
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 98
    iget-object v1, p0, Lcom/miui/analytics/internal/d/j;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    const/4 v0, 0x1

    :try_start_4
    invoke-direct {p0, p1, v0}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    .line 100
    monitor-exit v1

    return-void

    :catchall_9
    move-exception v0

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public final b()Lcom/miui/analytics/internal/d/e;
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/analytics/internal/d/j;->b(Ljava/lang/String;)Lcom/miui/analytics/internal/d;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d;->b()Lcom/miui/analytics/internal/d/e;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 223
    invoke-virtual {v0}, Lcom/miui/analytics/internal/d;->b()Lcom/miui/analytics/internal/d/e;

    move-result-object v0

    .line 225
    :goto_16
    return-object v0

    :cond_17
    new-instance v0, Lcom/miui/analytics/internal/d/e;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/e;-><init>()V

    goto :goto_16
.end method

.method public final b(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/g;
    .registers 5

    .prologue
    .line 233
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_1e

    const-string v1, "realtime"

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/f;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 235
    new-instance v0, Lcom/miui/analytics/internal/d/a/f;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/analytics/internal/d/a/f;-><init>(Landroid/content/Context;Lcom/miui/analytics/internal/h;)V

    .line 239
    :goto_1d
    return-object v0

    .line 236
    :cond_1e
    if-nez v0, :cond_2c

    instance-of v0, p1, Lcom/miui/analytics/internal/a;

    if-eqz v0, :cond_2c

    .line 237
    new-instance v0, Lcom/miui/analytics/internal/d/a/f;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/analytics/internal/d/a/f;-><init>(Landroid/content/Context;Lcom/miui/analytics/internal/h;)V

    goto :goto_1d

    .line 239
    :cond_2c
    new-instance v0, Lcom/miui/analytics/internal/d/a/e;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/miui/analytics/internal/d/a/e;-><init>(Landroid/content/Context;Lcom/miui/analytics/internal/h;)V

    goto :goto_1d
.end method

.method public final b(Ljava/lang/String;)Lcom/miui/analytics/internal/d;
    .registers 3

    .prologue
    .line 154
    .line 2104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_a

    .line 156
    iget-object v0, v0, Lcom/miui/analytics/internal/d/i;->a:Lcom/miui/analytics/internal/d;

    .line 158
    :goto_9
    return-object v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final c()Lcom/miui/analytics/internal/e;
    .registers 5

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7104
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_29

    iget-object v0, v1, Lcom/miui/analytics/internal/d/i;->a:Lcom/miui/analytics/internal/d;

    if-eqz v0, :cond_29

    .line 275
    iget-object v0, v1, Lcom/miui/analytics/internal/d/i;->a:Lcom/miui/analytics/internal/d;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_29

    .line 276
    new-instance v0, Lcom/miui/analytics/internal/e;

    invoke-direct {p0}, Lcom/miui/analytics/internal/d/j;->g()Lcom/miui/analytics/internal/d/o;

    move-result-object v2

    iget-object v1, v1, Lcom/miui/analytics/internal/d/i;->a:Lcom/miui/analytics/internal/d;

    invoke-virtual {v1}, Lcom/miui/analytics/internal/d;->f()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/miui/analytics/internal/e;-><init>(Lcom/miui/analytics/internal/d/o;Ljava/util/List;)V

    .line 279
    :goto_28
    return-object v0

    :cond_29
    new-instance v0, Lcom/miui/analytics/internal/e;

    invoke-direct {p0}, Lcom/miui/analytics/internal/d/j;->g()Lcom/miui/analytics/internal/d/o;

    move-result-object v1

    .line 7310
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7311
    new-instance v3, Lcom/miui/analytics/internal/d/a/c;

    invoke-direct {v3}, Lcom/miui/analytics/internal/d/a/c;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-direct {v0, v1, v2}, Lcom/miui/analytics/internal/e;-><init>(Lcom/miui/analytics/internal/d/o;Ljava/util/List;)V

    goto :goto_28
.end method

.method public final c(Lcom/miui/analytics/internal/h;)Z
    .registers 3

    .prologue
    .line 243
    if-eqz p1, :cond_e

    .line 244
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    .line 245
    if-eqz v0, :cond_e

    .line 246
    const/4 v0, 0x1

    .line 249
    :goto_d
    return v0

    :cond_e
    invoke-static {}, Lcom/miui/analytics/internal/f/l;->a()Z

    move-result v0

    goto :goto_d
.end method

.method public final d(Lcom/miui/analytics/internal/h;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 253
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 5104
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    move-result-object v0

    .line 254
    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1}, Lcom/miui/analytics/internal/d/i;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 255
    invoke-virtual {v0, p1}, Lcom/miui/analytics/internal/d/i;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/f;->d()Ljava/lang/String;

    move-result-object v0

    .line 257
    :goto_19
    return-object v0

    :cond_1a
    const-string v0, "https://tracking.intl.miui.com/track/spock"

    goto :goto_19
.end method

.method public final d()Z
    .registers 2

    .prologue
    .line 331
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/analytics/internal/d/j;->b(Ljava/lang/String;)Lcom/miui/analytics/internal/d;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_11

    .line 333
    invoke-virtual {v0}, Lcom/miui/analytics/internal/d;->g()Z

    move-result v0

    .line 335
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final e()I
    .registers 3

    .prologue
    .line 365
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 9104
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    move-result-object v0

    .line 366
    if-eqz v0, :cond_1c

    iget-object v1, v0, Lcom/miui/analytics/internal/d/i;->a:Lcom/miui/analytics/internal/d;

    if-eqz v1, :cond_1c

    .line 367
    iget-object v0, v0, Lcom/miui/analytics/internal/d/i;->a:Lcom/miui/analytics/internal/d;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d;->c()I

    move-result v0

    .line 371
    :goto_17
    invoke-static {v0}, Lcom/miui/analytics/internal/l;->a(I)I

    move-result v0

    return v0

    .line 369
    :cond_1c
    const v0, 0x927c0

    goto :goto_17
.end method

.method public final e(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/k;
    .registers 4

    .prologue
    .line 261
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v0

    .line 6104
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_24

    invoke-virtual {v0, p1}, Lcom/miui/analytics/internal/d/i;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 263
    invoke-virtual {v0, p1}, Lcom/miui/analytics/internal/d/i;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/analytics/internal/d/f;->c()Lcom/miui/analytics/internal/d/k;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 264
    invoke-virtual {v0, p1}, Lcom/miui/analytics/internal/d/i;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/f;->c()Lcom/miui/analytics/internal/d/k;

    move-result-object v0

    .line 269
    :goto_23
    return-object v0

    .line 266
    :cond_24
    if-nez v0, :cond_30

    instance-of v0, p1, Lcom/miui/analytics/internal/a;

    if-eqz v0, :cond_30

    .line 267
    new-instance v0, Lcom/miui/analytics/internal/d/a/d;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/a/d;-><init>()V

    goto :goto_23

    .line 269
    :cond_30
    invoke-static {}, Lcom/miui/analytics/internal/d/b;->a()Lcom/miui/analytics/internal/d/k;

    move-result-object v0

    goto :goto_23
.end method

.method public final f(Lcom/miui/analytics/internal/h;)Z
    .registers 3

    .prologue
    .line 339
    if-eqz p1, :cond_19

    .line 340
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    .line 341
    if-eqz v0, :cond_11

    .line 342
    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/f;->f()Z

    move-result v0

    .line 347
    :goto_10
    return v0

    .line 343
    :cond_11
    if-nez v0, :cond_19

    instance-of v0, p1, Lcom/miui/analytics/internal/a;

    if-eqz v0, :cond_19

    .line 344
    const/4 v0, 0x0

    goto :goto_10

    .line 347
    :cond_19
    const/4 v0, 0x1

    goto :goto_10
.end method

.method public final g(Lcom/miui/analytics/internal/h;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 351
    if-eqz p1, :cond_20

    .line 352
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v1

    .line 354
    if-eqz v1, :cond_1a

    const-string v2, "realtime"

    invoke-virtual {v1}, Lcom/miui/analytics/internal/d/f;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 360
    :cond_19
    :goto_19
    return v0

    .line 356
    :cond_1a
    if-nez v1, :cond_20

    instance-of v1, p1, Lcom/miui/analytics/internal/a;

    if-nez v1, :cond_19

    .line 360
    :cond_20
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public final h(Lcom/miui/analytics/internal/h;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 375
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v1

    .line 10104
    invoke-direct {p0, v1, v0}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Z)Lcom/miui/analytics/internal/d/i;

    move-result-object v1

    .line 376
    if-eqz v1, :cond_19

    invoke-virtual {v1, p1}, Lcom/miui/analytics/internal/d/i;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 377
    invoke-virtual {v1, p1}, Lcom/miui/analytics/internal/d/i;->a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/f;->a()I

    move-result v0

    .line 379
    :cond_19
    return v0
.end method
