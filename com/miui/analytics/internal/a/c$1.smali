.class final Lcom/miui/analytics/internal/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/a/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/a/c;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/a/c;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/miui/analytics/internal/a/c$1;->a:Lcom/miui/analytics/internal/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    .line 79
    invoke-static {}, Lcom/miui/analytics/internal/a/c;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 81
    :try_start_5
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$1;->a:Lcom/miui/analytics/internal/a/c;

    iget-object v0, v0, Lcom/miui/analytics/internal/a/c;->a:Lcom/miui/analytics/internal/a/c$a;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/a/c$a;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/aa;->b(J)Z

    move-result v0

    if-nez v0, :cond_67

    .line 82
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$1;->a:Lcom/miui/analytics/internal/a/c;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/c;->a(Lcom/miui/analytics/internal/a/c;)Ljava/lang/String;

    move-result-object v0

    .line 83
    new-instance v2, Lcom/miui/analytics/internal/h;

    iget-object v3, p0, Lcom/miui/analytics/internal/a/c$1;->a:Lcom/miui/analytics/internal/a/c;

    invoke-static {v3}, Lcom/miui/analytics/internal/a/c;->b(Lcom/miui/analytics/internal/a/c;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.miui.spock"

    const-string v5, "spock_active"

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v3, p0, Lcom/miui/analytics/internal/a/c$1;->a:Lcom/miui/analytics/internal/a/c;

    invoke-static {v3}, Lcom/miui/analytics/internal/a/c;->b(Lcom/miui/analytics/internal/a/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 88
    iget-object v2, p0, Lcom/miui/analytics/internal/a/c$1;->a:Lcom/miui/analytics/internal/a/c;

    iget-object v2, v2, Lcom/miui/analytics/internal/a/c;->a:Lcom/miui/analytics/internal/a/c$a;

    iget-object v3, p0, Lcom/miui/analytics/internal/a/c$1;->a:Lcom/miui/analytics/internal/a/c;

    invoke-static {v3}, Lcom/miui/analytics/internal/a/c;->b(Lcom/miui/analytics/internal/a/c;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/analytics/internal/f/o;->a(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/miui/analytics/internal/a/c$a;->a(Z)V

    .line 89
    iget-object v2, p0, Lcom/miui/analytics/internal/a/c$1;->a:Lcom/miui/analytics/internal/a/c;

    iget-object v2, v2, Lcom/miui/analytics/internal/a/c;->a:Lcom/miui/analytics/internal/a/c$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/miui/analytics/internal/a/c$a;->a(J)V

    .line 90
    const-string v2, "UA"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uploading active info: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_65} :catch_6f
    .catchall {:try_start_5 .. :try_end_65} :catchall_7e

    .line 97
    :goto_65
    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_7e

    return-void

    .line 92
    :cond_67
    :try_start_67
    const-string v0, "UA"

    const-string v2, "uploaded active today, skip it."

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6e} :catch_6f
    .catchall {:try_start_67 .. :try_end_6e} :catchall_7e

    goto :goto_65

    .line 94
    :catch_6f
    move-exception v0

    .line 95
    :try_start_70
    iget-object v2, p0, Lcom/miui/analytics/internal/a/c$1;->a:Lcom/miui/analytics/internal/a/c;

    invoke-static {v2}, Lcom/miui/analytics/internal/a/c;->b(Lcom/miui/analytics/internal/a/c;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "UA"

    const-string v4, "upload active task exception:"

    invoke-static {v2, v3, v4, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_65

    .line 97
    :catchall_7e
    move-exception v0

    monitor-exit v1
    :try_end_80
    .catchall {:try_start_70 .. :try_end_80} :catchall_7e

    throw v0
.end method
