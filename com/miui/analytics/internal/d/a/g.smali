.class public final Lcom/miui/analytics/internal/d/a/g;
.super Lcom/miui/analytics/internal/d/l;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method private constructor <init>(I)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/miui/analytics/internal/d/l;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/analytics/internal/d/l;->b:I

    .line 11
    iput p1, p0, Lcom/miui/analytics/internal/d/l;->a:I

    .line 12
    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 3

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/analytics/internal/d/l;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/analytics/internal/d/l;->b:I

    iget v1, p0, Lcom/miui/analytics/internal/d/l;->a:I

    if-le v0, v1, :cond_c

    .line 17
    const/4 v0, 0x1

    .line 19
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
