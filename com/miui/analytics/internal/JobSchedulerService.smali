.class public Lcom/miui/analytics/internal/JobSchedulerService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "JobSchedulerService"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 23
    :try_start_1
    const-string v0, "JobSchedulerService"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStartJob"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    invoke-virtual {p0}, Lcom/miui/analytics/internal/JobSchedulerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/miui/analytics/internal/d/a/e;

    invoke-direct {v1, v0}, Lcom/miui/analytics/internal/d/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/miui/analytics/internal/d/a/e;->a()V

    .line 26
    invoke-static {v0}, Lcom/miui/analytics/internal/a/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/c;->b()V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/miui/analytics/internal/JobSchedulerService;->jobFinished(Landroid/app/job/JobParameters;Z)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_24

    .line 36
    :goto_23
    return v3

    .line 33
    :catch_24
    move-exception v0

    .line 34
    const-string v1, "JobSchedulerService"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStartJob exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .registers 4

    .prologue
    .line 41
    const-string v0, "JobSchedulerService"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStopJob"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    const/4 v0, 0x0

    return v0
.end method
