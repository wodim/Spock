.class public final Lcom/miui/analytics/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/miui/analytics/internal/m;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(III)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/analytics/internal/m;->a:I

    .line 6
    iput v1, p0, Lcom/miui/analytics/internal/m;->b:I

    .line 7
    iput v1, p0, Lcom/miui/analytics/internal/m;->c:I

    .line 10
    iput p1, p0, Lcom/miui/analytics/internal/m;->a:I

    .line 11
    iput p2, p0, Lcom/miui/analytics/internal/m;->b:I

    .line 12
    iput p3, p0, Lcom/miui/analytics/internal/m;->c:I

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput v1, p0, Lcom/miui/analytics/internal/m;->a:I

    .line 6
    iput v0, p0, Lcom/miui/analytics/internal/m;->b:I

    .line 7
    iput v0, p0, Lcom/miui/analytics/internal/m;->c:I

    .line 17
    :try_start_b
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/analytics/internal/m;->a:I

    .line 19
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/miui/analytics/internal/m;->b:I

    .line 20
    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/analytics/internal/m;->c:I
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_2d

    .line 23
    :goto_2c
    return-void

    :catch_2d
    move-exception v0

    goto :goto_2c
.end method

.method private b(Lcom/miui/analytics/internal/m;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 26
    if-nez p1, :cond_4

    .line 29
    :cond_3
    :goto_3
    return v0

    :cond_4
    iget v1, p0, Lcom/miui/analytics/internal/m;->a:I

    iget v2, p1, Lcom/miui/analytics/internal/m;->a:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/miui/analytics/internal/m;->b:I

    iget v2, p1, Lcom/miui/analytics/internal/m;->b:I

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method public final a(Lcom/miui/analytics/internal/m;)I
    .registers 4

    .prologue
    .line 34
    if-nez p1, :cond_4

    .line 35
    const/4 v0, 0x1

    .line 43
    :goto_3
    return v0

    .line 37
    :cond_4
    iget v0, p0, Lcom/miui/analytics/internal/m;->a:I

    iget v1, p1, Lcom/miui/analytics/internal/m;->a:I

    if-eq v0, v1, :cond_10

    .line 38
    iget v0, p0, Lcom/miui/analytics/internal/m;->a:I

    iget v1, p1, Lcom/miui/analytics/internal/m;->a:I

    sub-int/2addr v0, v1

    goto :goto_3

    .line 40
    :cond_10
    iget v0, p0, Lcom/miui/analytics/internal/m;->b:I

    iget v1, p1, Lcom/miui/analytics/internal/m;->b:I

    if-eq v0, v1, :cond_1c

    .line 41
    iget v0, p0, Lcom/miui/analytics/internal/m;->b:I

    iget v1, p1, Lcom/miui/analytics/internal/m;->b:I

    sub-int/2addr v0, v1

    goto :goto_3

    .line 43
    :cond_1c
    iget v0, p0, Lcom/miui/analytics/internal/m;->c:I

    iget v1, p1, Lcom/miui/analytics/internal/m;->c:I

    sub-int/2addr v0, v1

    goto :goto_3
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 3
    check-cast p1, Lcom/miui/analytics/internal/m;

    invoke-virtual {p0, p1}, Lcom/miui/analytics/internal/m;->a(Lcom/miui/analytics/internal/m;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/miui/analytics/internal/m;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/analytics/internal/m;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/analytics/internal/m;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
