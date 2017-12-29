.class public final Lcom/miui/analytics/internal/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AppenderManager"

.field private static b:Lcom/miui/analytics/internal/a/a; = null

.field private static c:Ljava/lang/String; = "appExtra"

.field private static d:Ljava/lang/String; = "Downloaded"

.field private static e:Ljava/lang/String; = "Installed"

.field private static f:Ljava/lang/String; = "Replaced"

.field private static g:Ljava/lang/String; = "Uninstalled"

.field private static h:Ljava/lang/String; = "FirstLaunch"

.field private static i:Ljava/lang/String; = "sourcePkg"

.field private static j:Ljava/lang/String; = "vc"

.field private static k:Ljava/lang/String; = "vn"

.field private static l:Ljava/lang/String; = "ex"

.field private static m:Ljava/lang/String; = "ts"

.field private static n:Ljava/lang/String; = "action"

.field private static o:Ljava/lang/String; = "pkg"

.field private static p:Ljava/lang/String; = "installer"

.field private static q:Ljava/lang/String; = "fit"

.field private static r:I = 0x2bf20

.field private static final s:Ljava/lang/String; = "result"

.field private static final t:J = 0x3e8L

.field private static final y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private u:Landroid/content/Context;

.field private v:Lcom/miui/analytics/internal/b/b;

.field private w:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    new-instance v0, Lcom/miui/analytics/internal/a/a$1;

    invoke-direct {v0}, Lcom/miui/analytics/internal/a/a$1;-><init>()V

    sput-object v0, Lcom/miui/analytics/internal/a/a;->y:Ljava/util/HashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    .line 84
    invoke-static {p1}, Lcom/miui/analytics/internal/b/b;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/b;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/a;->v:Lcom/miui/analytics/internal/b/b;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/a/a;->w:Ljava/util/Map;

    .line 1091
    :try_start_1b
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/a/a$2;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/a/a$2;-><init>(Lcom/miui/analytics/internal/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_25} :catch_26

    .line 1123
    :goto_25
    return-void

    .line 1121
    :catch_26
    move-exception v0

    .line 1122
    const-string v1, "AppenderManager"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdatePackageExtraInfoMapping exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_25
.end method

.method static synthetic a(Lcom/miui/analytics/internal/a/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/a;
    .registers 3

    .prologue
    .line 76
    const-class v1, Lcom/miui/analytics/internal/a/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/a/a;->b:Lcom/miui/analytics/internal/a/a;

    if-nez v0, :cond_e

    .line 77
    new-instance v0, Lcom/miui/analytics/internal/a/a;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/a/a;->b:Lcom/miui/analytics/internal/a/a;

    .line 79
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/a/a;->b:Lcom/miui/analytics/internal/a/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .registers 4

    .prologue
    .line 91
    :try_start_0
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/a/a$2;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/a/a$2;-><init>(Lcom/miui/analytics/internal/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 124
    :goto_a
    return-void

    .line 121
    :catch_b
    move-exception v0

    .line 122
    const-string v1, "AppenderManager"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdatePackageExtraInfoMapping exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method private a(Landroid/content/Intent;)V
    .registers 10

    .prologue
    .line 413
    :try_start_0
    const-string v0, "appExtra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_68

    .line 415
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 417
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 418
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 419
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 420
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 421
    iget-object v4, p0, Lcom/miui/analytics/internal/a/a;->w:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    iget-object v4, p0, Lcom/miui/analytics/internal/a/a;->v:Lcom/miui/analytics/internal/b/b;

    invoke-virtual {v4, v0}, Lcom/miui/analytics/internal/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2162
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_47

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 2163
    iget-object v4, p0, Lcom/miui/analytics/internal/a/a;->v:Lcom/miui/analytics/internal/b/b;

    invoke-virtual {v4, v0, v3}, Lcom/miui/analytics/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_47
    const-string v4, "AppenderManager"

    const-string v5, "persistAppExtraInfo pkg:%s, extra:%s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v3, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5b} :catch_5c

    goto :goto_15

    .line 427
    :catch_5c
    move-exception v0

    .line 428
    const-string v1, "AppenderManager"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persistAppExtraInfo exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    :cond_68
    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)V
    .registers 9

    .prologue
    .line 145
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 146
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 150
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {v2}, Lcom/miui/analytics/internal/f/d;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 153
    const-string v3, "AppenderManager"

    const-string v4, "the comment of %s is %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v0, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/miui/analytics/internal/a/a;->w:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v2, p0, Lcom/miui/analytics/internal/a/a;->v:Lcom/miui/analytics/internal/b/b;

    invoke-virtual {v2, v1, v0}, Lcom/miui/analytics/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_3b
    return-void
.end method

.method static synthetic a(Lcom/miui/analytics/internal/a/a;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 38
    .line 3135
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 3137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3138
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3139
    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/a/a;->a(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_f

    .line 38
    :cond_27
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->v:Lcom/miui/analytics/internal/b/b;

    invoke-virtual {v0, p1}, Lcom/miui/analytics/internal/b/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 163
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->v:Lcom/miui/analytics/internal/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/miui/analytics/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_17
    return-void
.end method

.method static synthetic b(Lcom/miui/analytics/internal/a/a;)Lcom/miui/analytics/internal/b/b;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->v:Lcom/miui/analytics/internal/b/b;

    return-object v0
.end method

.method private b()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 130
    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/a/a;->a(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_f

    .line 132
    :cond_1f
    return-void
.end method

.method static synthetic c(Lcom/miui/analytics/internal/a/a;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->w:Ljava/util/Map;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 135
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 136
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 138
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 139
    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/a/a;->a(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_f

    .line 142
    :cond_27
    return-void
.end method

.method static synthetic d(Lcom/miui/analytics/internal/a/a;)V
    .registers 3

    .prologue
    .line 38
    .line 3127
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 3128
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 3129
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 3130
    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/a/a;->a(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_f

    .line 38
    :cond_1f
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 253
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 254
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 255
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v1, "action"

    const-string v2, "Replaced"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v1, "ex"

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a;->w:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 259
    iget-object v1, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    const/16 v2, 0x4000

    invoke-static {v1, p1, v2}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 260
    const-string v2, "fit"

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 264
    const-string v0, "AppenderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "record replaced event, pkg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    .line 269
    :cond_4e
    :goto_4e
    return-void

    .line 266
    :catch_4f
    move-exception v0

    .line 267
    const-string v1, "AppenderManager"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recordAppUninstalledAction exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e
.end method

.method private e(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 398
    sget-object v0, Lcom/miui/analytics/internal/a/a;->y:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 399
    const-string v3, "AppenderManager"

    const-string v4, "app: %s, sign:%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v3, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    invoke-static {v3, p1, v0}, Lcom/xiaomi/a/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 401
    const-string v0, "AppenderManager"

    const-string v2, "signature matched"

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 408
    :goto_2c
    return v0

    .line 404
    :cond_2d
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/analytics/internal/d/o;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    iget-object v0, p0, Lcom/miui/analytics/internal/a/a;->u:Landroid/content/Context;

    .line 2063
    invoke-static {v0, p1}, Lcom/miui/analytics/internal/d/o;->e(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/a/a/a/a;->a([Landroid/content/pm/Signature;)Z

    move-result v0

    .line 404
    if-eqz v0, :cond_4a

    .line 405
    :cond_41
    const-string v0, "AppenderManager"

    const-string v2, "sys app or platform sign"

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 406
    goto :goto_2c

    :cond_4a
    move v0, v2

    .line 408
    goto :goto_2c
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 169
    const-string v0, "spock_appstats"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 170
    const-string v0, "AppenderManager"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_f
    :goto_f
    return-void

    .line 175
    :cond_10
    :try_start_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 176
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/a/a$3;

    invoke-direct {v1, p0, p1}, Lcom/miui/analytics/internal/a/a$3;-><init>(Lcom/miui/analytics/internal/a/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_21

    goto :goto_f

    .line 204
    :catch_21
    move-exception v0

    .line 205
    const-string v1, "AppenderManager"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recordAppInstalledAction exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 211
    const-string v0, "spock_appstats"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 212
    const-string v0, "AppenderManager"

    const-string v1, "does not meet the condition of collection and uploading."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_f
    :goto_f
    return-void

    .line 217
    :cond_10
    :try_start_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 218
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/a/a$4;

    invoke-direct {v1, p0, p1}, Lcom/miui/analytics/internal/a/a$4;-><init>(Lcom/miui/analytics/internal/a/a;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_21

    goto :goto_f

    .line 246
    :catch_21
    move-exception v0

    .line 247
    const-string v1, "AppenderManager"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recordAppUninstalledAction exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f
.end method
