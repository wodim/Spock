.class final Lcom/miui/analytics/internal/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/h;

.field private synthetic b:Lcom/miui/analytics/internal/k;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/k;Lcom/miui/analytics/internal/h;)V
    .registers 3

    .prologue
    .line 42
    iput-object p1, p0, Lcom/miui/analytics/internal/k$1;->b:Lcom/miui/analytics/internal/k;

    iput-object p2, p0, Lcom/miui/analytics/internal/k$1;->a:Lcom/miui/analytics/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/k$1;->b:Lcom/miui/analytics/internal/k;

    invoke-static {v0}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/k$1;->a:Lcom/miui/analytics/internal/h;

    invoke-virtual {v1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/miui/analytics/internal/k$1;->b:Lcom/miui/analytics/internal/k;

    invoke-static {v0}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/k$1;->a:Lcom/miui/analytics/internal/h;

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/d/j;->b(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/g;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/g;->a()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_26} :catch_27

    .line 58
    :goto_26
    return-void

    .line 54
    :catch_27
    move-exception v0

    .line 55
    const-string v1, "Logger"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "send event exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_26
.end method
