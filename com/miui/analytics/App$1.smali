.class Lcom/miui/analytics/App$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/App;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/analytics/App;


# direct methods
.method constructor <init>(Lcom/miui/analytics/App;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/miui/analytics/App$1;->this$0:Lcom/miui/analytics/App;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .prologue
    .line 131
    if-eqz p2, :cond_a

    :try_start_2
    const-string v0, "App"

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/f/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    :cond_a
    :goto_a
    return-void

    .line 134
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 136
    const-string v1, "App"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 138
    const-string v1, "noConnectivity"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 139
    const-string v2, "isFailover"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 140
    if-nez v1, :cond_43

    if-eqz v2, :cond_6f

    .line 141
    :cond_43
    const-string v0, "App"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "disconnected :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " failover :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_61} :catch_62

    goto :goto_a

    .line 160
    :catch_62
    move-exception v0

    .line 161
    const-string v1, "App"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mReceiver onReceive e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 148
    :cond_6f
    :try_start_6f
    invoke-static {p1}, Lcom/miui/analytics/internal/a/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/analytics/internal/a/c;->a()V

    .line 149
    invoke-static {p1}, Lcom/miui/analytics/internal/a/b;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/analytics/internal/a/b;->a()V

    .line 153
    const-string v1, "App"

    const-string v2, "Receive %s, sticky broadcast %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/miui/analytics/App$1;->isInitialStickyBroadcast()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-static {p1}, Lcom/miui/analytics/internal/a/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/c;->b()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_a0} :catch_62

    goto/16 :goto_a
.end method
