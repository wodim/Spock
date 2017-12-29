.class final Lcom/miui/analytics/internal/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/a/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/a/e;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/a/e;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/miui/analytics/internal/a/e$1;->a:Lcom/miui/analytics/internal/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 115
    invoke-static {}, Lcom/miui/analytics/internal/a/e;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_5
    const-string v0, "UU"

    const-string v2, "enter upload usage"

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e$1;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/e;->a(Lcom/miui/analytics/internal/a/e;)V

    .line 124
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e$1;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/e;->b(Lcom/miui/analytics/internal/a/e;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;)V

    .line 126
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e$1;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/e;->c(Lcom/miui/analytics/internal/a/e;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_1f} :catch_21
    .catchall {:try_start_5 .. :try_end_1f} :catchall_30

    .line 130
    :goto_1f
    :try_start_1f
    monitor-exit v1

    return-void

    .line 127
    :catch_21
    move-exception v0

    .line 128
    iget-object v2, p0, Lcom/miui/analytics/internal/a/e$1;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v2}, Lcom/miui/analytics/internal/a/e;->b(Lcom/miui/analytics/internal/a/e;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "UU"

    const-string v4, "run usage task exception"

    invoke-static {v2, v3, v4, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    .line 130
    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_30

    throw v0
.end method
