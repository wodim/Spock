.class public Lcom/miui/analytics/internal/d/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:I = 0x14

.field private static final d:I = 0xc350


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 2018
    const/16 v0, 0x14

    const v1, 0xc350

    invoke-direct {p0, v0, v1}, Lcom/miui/analytics/internal/d/e;-><init>(II)V

    .line 2019
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2022
    if-gtz p1, :cond_7

    const/16 p1, 0x14

    :cond_7
    iput p1, p0, Lcom/miui/analytics/internal/d/e;->a:I

    .line 2023
    if-gtz p2, :cond_e

    const p2, 0xc350

    :cond_e
    iput p2, p0, Lcom/miui/analytics/internal/d/e;->b:I

    .line 2024
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1028
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    if-eqz p1, :cond_4a

    .line 1030
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    move v3, v2

    move v4, v2

    move-object v5, v0

    .line 1033
    :goto_11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_41

    .line 1034
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 1035
    if-eqz v0, :cond_3d

    .line 1038
    add-int/lit8 v4, v4, 0x1

    .line 1039
    int-to-long v8, v3

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->k()J

    move-result-wide v10

    add-long/2addr v8, v10

    long-to-int v3, v8

    .line 1040
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    iget v0, p0, Lcom/miui/analytics/internal/d/e;->a:I

    if-ge v4, v0, :cond_33

    iget v0, p0, Lcom/miui/analytics/internal/d/e;->b:I

    if-lt v3, v0, :cond_3d

    .line 1042
    :cond_33
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1045
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    move v4, v2

    .line 1033
    :cond_3d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 1048
    :cond_41
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 1049
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    :cond_4a
    return-object v6
.end method
