.class public abstract Lcom/miui/analytics/internal/d/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/analytics/internal/h;)V
    .registers 4

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/g;->b:Ljava/util/List;

    .line 18
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/g;->a:Landroid/content/Context;

    .line 19
    if-eqz p2, :cond_17

    .line 20
    iget-object v0, p0, Lcom/miui/analytics/internal/d/g;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/g;->b:Ljava/util/List;

    .line 25
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/g;->a:Landroid/content/Context;

    .line 26
    if-eqz p2, :cond_17

    .line 27
    iget-object v0, p0, Lcom/miui/analytics/internal/d/g;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 29
    :cond_17
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/miui/analytics/internal/h;)V
    .registers 7

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/g;->b:Ljava/util/List;

    .line 32
    invoke-static {p1}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/g;->a:Landroid/content/Context;

    .line 33
    if-eqz p2, :cond_20

    .line 34
    array-length v1, p2

    const/4 v0, 0x0

    :goto_14
    if-ge v0, v1, :cond_20

    aget-object v2, p2, v0

    .line 35
    iget-object v3, p0, Lcom/miui/analytics/internal/d/g;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 38
    :cond_20
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(Lcom/miui/analytics/internal/d/g;)V
    .registers 4

    .prologue
    .line 41
    if-eqz p1, :cond_9

    .line 42
    iget-object v0, p0, Lcom/miui/analytics/internal/d/g;->b:Ljava/util/List;

    iget-object v1, p1, Lcom/miui/analytics/internal/d/g;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_9
    return-void
.end method
