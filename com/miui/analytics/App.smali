.class public Lcom/miui/analytics/App;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "App"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method private registerReceiver()V
    .registers 3

    .prologue
    .line 127
    new-instance v0, Lcom/miui/analytics/App$1;

    invoke-direct {v0, p0}, Lcom/miui/analytics/App$1;-><init>(Lcom/miui/analytics/App;)V

    iput-object v0, p0, Lcom/miui/analytics/App;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 165
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 166
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/miui/analytics/App;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/analytics/App;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 171
    return-void
.end method

.method private startJobScheduler()V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 124
    :goto_6
    return-void

    .line 105
    :cond_7
    const-string v0, "android.app.job.JobScheduler"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 106
    if-nez v0, :cond_28

    .line 107
    const-string v0, "App"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobScheduler not found, exit startJobScheduler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_6

    .line 121
    :catch_1b
    move-exception v0

    .line 122
    const-string v1, "App"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "startJobScheduler exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 110
    :cond_28
    :try_start_28
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Lcom/miui/analytics/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 112
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 114
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const/4 v2, 0x1

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.miui.spock"

    const-class v5, Lcom/miui/analytics/internal/JobSchedulerService;

    .line 115
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 116
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 117
    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    .line 118
    invoke-static {}, Lcom/miui/analytics/internal/f/e;->e()J

    move-result-wide v2

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    .line 119
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    .line 120
    const-string v1, "App"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startJobScheduler goes with code "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_79} :catch_1b

    goto :goto_6
.end method


# virtual methods
.method public onCreate()V
    .registers 6

    .prologue
    .line 40
    :try_start_0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 41
    const-string v0, "App"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCreate pid:%d, tid:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Lcom/miui/analytics/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Lcom/miui/analytics/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v0, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    .line 1011
    invoke-static {v0}, Lcom/miui/analytics/internal/d/o;->c(Landroid/content/Context;)I

    move-result v2

    .line 43
    sget-object v0, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    .line 1015
    invoke-static {v0}, Lcom/miui/analytics/internal/d/o;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1016
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 1017
    const-string v0, "0.0.0"

    .line 43
    :cond_49
    invoke-static {v1, v2, v0}, Lcom/miui/analytics/Analytics;->initialize(Landroid/content/Context;ILjava/lang/String;)V

    .line 44
    new-instance v0, Lcom/miui/analytics/internal/b;

    invoke-direct {v0}, Lcom/miui/analytics/internal/b;-><init>()V

    sget-object v1, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/b;->c(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/miui/analytics/internal/l;

    invoke-direct {v0}, Lcom/miui/analytics/internal/l;-><init>()V

    sget-object v1, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/l;->a(Landroid/content/Context;)V

    .line 49
    sget-object v0, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/c;->b()V

    .line 62
    sget-object v0, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Landroid/content/Context;)V

    .line 63
    invoke-direct {p0}, Lcom/miui/analytics/App;->startJobScheduler()V

    .line 68
    sget-object v0, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/l;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/miui/analytics/App;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/b;->a()V

    .line 70
    invoke-direct {p0}, Lcom/miui/analytics/App;->registerReceiver()V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_82} :catch_83

    .line 74
    :goto_82
    return-void

    .line 71
    :catch_83
    move-exception v0

    .line 72
    const-string v1, "App"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "analytics app onCreate exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_82
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 178
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 179
    return-void
.end method
