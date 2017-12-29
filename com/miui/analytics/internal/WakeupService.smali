.class public Lcom/miui/analytics/internal/WakeupService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "WakeupService"

.field private static b:Ljava/lang/String; = "command"

.field private static c:Ljava/lang/String; = "wakeup"

.field private static d:Ljava/lang/String; = "active"

.field private static e:Ljava/lang/String; = "usage"

.field private static f:Ljava/lang/String; = "usagev2"

.field private static g:Ljava/lang/String; = "installation"

.field private static h:Ljava/lang/String; = "installationv2"

.field private static i:Ljava/lang/String; = "uploadScene"

.field private static j:Ljava/lang/String; = "uploadNetFlow"

.field private static k:Ljava/lang/String; = "updateStoreInfo"

.field private static l:Ljava/lang/String; = "uploadNearestStores"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 87
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    .prologue
    .line 34
    :try_start_0
    const-string v0, "command"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    const-string v1, "active"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 36
    invoke-static {p0}, Lcom/miui/analytics/internal/a/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/c;->b()V

    .line 72
    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_17
    const-string v1, "usage"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 47
    invoke-static {p0}, Lcom/miui/analytics/internal/a/e;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/e;->a()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    goto :goto_15

    .line 69
    :catch_27
    move-exception v0

    .line 70
    const-string v1, "WakeupService"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStartCommand exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15

    .line 48
    :cond_34
    :try_start_34
    const-string v1, "usagev2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 49
    invoke-static {p0}, Lcom/miui/analytics/internal/a/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/g;->a()V

    goto :goto_15

    .line 50
    :cond_44
    const-string v1, "installation"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 51
    invoke-static {p0}, Lcom/miui/analytics/internal/a/e;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/e;->b()V

    goto :goto_15

    .line 52
    :cond_54
    const-string v1, "installationv2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 53
    invoke-static {p0}, Lcom/miui/analytics/internal/a/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/g;->b()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_63} :catch_27

    goto :goto_15
.end method
