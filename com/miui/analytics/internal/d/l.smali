.class public Lcom/miui/analytics/internal/d/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3

    .prologue
    .line 2010
    invoke-direct {p0}, Lcom/miui/analytics/internal/d/l;-><init>()V

    .line 2008
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/analytics/internal/d/l;->b:I

    .line 2011
    iput p1, p0, Lcom/miui/analytics/internal/d/l;->a:I

    .line 2012
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 3

    .prologue
    .line 1016
    iget v0, p0, Lcom/miui/analytics/internal/d/l;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/analytics/internal/d/l;->b:I

    iget v1, p0, Lcom/miui/analytics/internal/d/l;->a:I

    if-le v0, v1, :cond_c

    .line 1017
    const/4 v0, 0x1

    .line 1019
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
