.class public final Lcom/miui/analytics/internal/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/miui/analytics/internal/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/analytics/internal/c/b;->a:Lcom/miui/analytics/internal/c;

    .line 11
    invoke-static {p1}, Lcom/miui/analytics/internal/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/c/b;->a:Lcom/miui/analytics/internal/c;

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 19
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/c/b;->a:Lcom/miui/analytics/internal/c;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/c;->a()V

    .line 20
    const-wide/32 v0, 0x112a880

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_0

    .line 22
    :catch_c
    move-exception v0

    goto :goto_0
.end method
