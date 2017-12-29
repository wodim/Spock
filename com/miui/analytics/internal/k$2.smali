.class final Lcom/miui/analytics/internal/k$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/k;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:[Ljava/lang/String;

.field private synthetic b:Lcom/miui/analytics/internal/k;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/k;[Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 92
    iput-object p1, p0, Lcom/miui/analytics/internal/k$2;->b:Lcom/miui/analytics/internal/k;

    iput-object p2, p0, Lcom/miui/analytics/internal/k$2;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 96
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 97
    :goto_7
    iget-object v2, p0, Lcom/miui/analytics/internal/k$2;->a:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_38

    .line 98
    new-instance v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/analytics/internal/k$2;->a:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 99
    iget-object v4, p0, Lcom/miui/analytics/internal/k$2;->b:Lcom/miui/analytics/internal/k;

    invoke-static {v4}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/k;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/miui/analytics/internal/i;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/analytics/internal/h;

    move-result-object v2

    .line 100
    if-eqz v2, :cond_35

    .line 101
    iget-object v4, p0, Lcom/miui/analytics/internal/k$2;->b:Lcom/miui/analytics/internal/k;

    invoke-static {v4}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/k;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v4

    invoke-virtual {v2}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;)V

    .line 102
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 105
    :cond_38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 106
    :goto_3e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_5f

    .line 107
    iget-object v0, p0, Lcom/miui/analytics/internal/k$2;->b:Lcom/miui/analytics/internal/k;

    invoke-static {v0}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/k;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    invoke-virtual {v5, v0}, Lcom/miui/analytics/internal/d/j;->b(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/g;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3e

    .line 109
    :cond_5f
    invoke-static {v4}, Lcom/miui/analytics/internal/d/j;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 110
    :goto_63
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_82

    .line 111
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/d/g;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/g;->a()V
    :try_end_72
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_72} :catch_76

    .line 110
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_63

    .line 119
    :catch_76
    move-exception v0

    .line 120
    const-string v1, "Logger"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "send events exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    :cond_82
    return-void
.end method
