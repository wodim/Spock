.class public final Lcom/miui/analytics/internal/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:D = 3.1415926535898

.field private static final b:J = 0x613841L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(D)D
    .registers 6

    .prologue
    .line 21
    const-wide v0, 0x400921fb54442d28L    # 3.1415926535898

    mul-double/2addr v0, p0

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(DDDD)D
    .registers 28

    .prologue
    .line 13
    invoke-static/range {p1 .. p2}, Lcom/miui/analytics/internal/c/c;->a(D)D

    move-result-wide v0

    .line 14
    invoke-static/range {p3 .. p4}, Lcom/miui/analytics/internal/c/c;->a(D)D

    move-result-wide v2

    .line 15
    invoke-static/range {p5 .. p6}, Lcom/miui/analytics/internal/c/c;->a(D)D

    move-result-wide v4

    .line 16
    invoke-static/range {p7 .. p8}, Lcom/miui/analytics/internal/c/c;->a(D)D

    move-result-wide v6

    .line 17
    const-wide v8, 0x41584e1040000000L    # 6371393.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v14

    sub-double v2, v12, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    mul-double/2addr v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    return-wide v0
.end method
