.class final Lcom/miui/analytics/internal/a/e$3;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/a/e;->b(Landroid/content/Context;)V
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
    .line 395
    iput-object p1, p0, Lcom/miui/analytics/internal/a/e$3;->a:Lcom/miui/analytics/internal/a/e;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 398
    const-string v0, "UU"

    const-string v1, "#### SEQUENCE_TEST broadcast"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e$3;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/e;->h(Lcom/miui/analytics/internal/a/e;)Ljava/lang/String;

    .line 400
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e$3;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/e;->i(Lcom/miui/analytics/internal/a/e;)Ljava/lang/String;

    .line 401
    return-void
.end method
