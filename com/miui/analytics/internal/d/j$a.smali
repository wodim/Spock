.class final Lcom/miui/analytics/internal/d/j$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/d/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private synthetic b:Lcom/miui/analytics/internal/d/j;


# direct methods
.method public constructor <init>(Lcom/miui/analytics/internal/d/j;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 412
    iput-object p1, p0, Lcom/miui/analytics/internal/d/j$a;->b:Lcom/miui/analytics/internal/d/j;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 413
    iput-object p2, p0, Lcom/miui/analytics/internal/d/j$a;->a:Ljava/lang/String;

    .line 414
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 419
    iget-object v0, p0, Lcom/miui/analytics/internal/d/j$a;->b:Lcom/miui/analytics/internal/d/j;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Lcom/miui/analytics/internal/d/j;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "PolicyManager"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 428
    :cond_e
    :goto_e
    return-void

    .line 422
    :cond_f
    new-instance v0, Lcom/miui/analytics/internal/e/b;

    iget-object v1, p0, Lcom/miui/analytics/internal/d/j$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/miui/analytics/internal/e/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/b;->b()Lcom/miui/analytics/internal/e/i;

    move-result-object v0

    .line 423
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/i;->a()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 424
    iget-object v1, p0, Lcom/miui/analytics/internal/d/j$a;->b:Lcom/miui/analytics/internal/d/j;

    iget-object v2, p0, Lcom/miui/analytics/internal/d/j$a;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/miui/analytics/internal/e/i;->a:Ljava/lang/Object;

    check-cast v0, Lcom/miui/analytics/internal/d/i;

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/d/j;->a(Lcom/miui/analytics/internal/d/j;Ljava/lang/String;Lcom/miui/analytics/internal/d/i;)V

    goto :goto_e
.end method
