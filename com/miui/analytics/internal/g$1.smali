.class final Lcom/miui/analytics/internal/g$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/g;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/g;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/analytics/internal/g$1;->a:Lcom/miui/analytics/internal/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    if-nez p2, :cond_5

    .line 117
    :cond_4
    :goto_4
    return-void

    .line 83
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, "Debugger"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 86
    invoke-static {v5}, Lcom/miui/analytics/internal/g;->a(Z)V

    goto :goto_4

    .line 87
    :cond_2d
    const-string v1, "com.xiaomi.analytics.intent.DEBUG_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 88
    invoke-static {v4}, Lcom/miui/analytics/internal/g;->a(Z)V

    goto :goto_4

    .line 89
    :cond_39
    const-string v1, "com.xiaomi.analytics.intent.STAGING_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 90
    sput-boolean v5, Lcom/miui/analytics/internal/g;->a:Z

    goto :goto_4

    .line 91
    :cond_44
    const-string v1, "com.xiaomi.analytics.intent.STAGING_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 92
    sput-boolean v4, Lcom/miui/analytics/internal/g;->a:Z

    goto :goto_4

    .line 93
    :cond_4f
    const-string v1, "com.xiaomi.analytics.intent.EXPIRE_POLICY_CONFIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 94
    iget-object v0, p0, Lcom/miui/analytics/internal/g$1;->a:Lcom/miui/analytics/internal/g;

    invoke-static {v0}, Lcom/miui/analytics/internal/g;->a(Lcom/miui/analytics/internal/g;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/j;->a()V

    goto :goto_4

    .line 101
    :cond_65
    const-string v1, "analytics.usagev2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 102
    invoke-static {p1}, Lcom/miui/analytics/internal/a/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/g;->a()V

    goto :goto_4

    .line 103
    :cond_75
    const-string v1, "analytics.aaid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-static {p1}, Lcom/miui/analytics/internal/a/b;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/b;->a()V

    goto :goto_4
.end method
