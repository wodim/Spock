.class public Lcom/miui/analytics/EventService;
.super Landroid/app/IntentService;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "EventService"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    const-string v0, "EventService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .registers 9

    .prologue
    .line 23
    if-nez p1, :cond_3

    .line 50
    :cond_2
    :goto_2
    return-void

    .line 27
    :cond_3
    :try_start_3
    const-string v0, "key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 28
    const-string v0, "content"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 30
    const-string v0, "appid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "type"

    sget-object v5, Lcom/miui/analytics/internal/h$a;->a:Lcom/miui/analytics/internal/h$a;

    invoke-virtual {v5}, Lcom/miui/analytics/internal/h$a;->a()I

    move-result v5

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 32
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 35
    invoke-virtual {p0}, Lcom/miui/analytics/EventService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 37
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 40
    :goto_3c
    sget-object v0, Lcom/miui/analytics/internal/h$a;->b:Lcom/miui/analytics/internal/h$a;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h$a;->a()I

    move-result v0

    if-ne v5, v0, :cond_61

    .line 41
    new-instance v0, Lcom/miui/analytics/internal/a;

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/miui/analytics/internal/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_49
    invoke-virtual {v0, v4}, Lcom/miui/analytics/internal/h;->b(Ljava/lang/String;)V

    .line 46
    invoke-static {v6}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_53} :catch_54

    goto :goto_2

    .line 47
    :catch_54
    move-exception v0

    .line 48
    const-string v1, "EventService"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onHandleIntent e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 43
    :cond_61
    :try_start_61
    new-instance v0, Lcom/miui/analytics/internal/h;

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_66} :catch_54

    goto :goto_49

    :cond_67
    move-object v1, v0

    goto :goto_3c
.end method
