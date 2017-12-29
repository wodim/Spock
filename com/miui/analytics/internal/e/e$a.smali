.class public final Lcom/miui/analytics/internal/e/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/miui/analytics/internal/e/e;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/miui/analytics/internal/e/e;

    invoke-direct {v0}, Lcom/miui/analytics/internal/e/e;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/e/e$a;->a:Lcom/miui/analytics/internal/e/e;

    .line 82
    return-void
.end method

.method private a(I)Lcom/miui/analytics/internal/e/e$a;
    .registers 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e$a;->a:Lcom/miui/analytics/internal/e/e;

    invoke-static {v0, p1}, Lcom/miui/analytics/internal/e/e;->a(Lcom/miui/analytics/internal/e/e;I)I

    .line 96
    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/miui/analytics/internal/e/e$a;
    .registers 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e$a;->a:Lcom/miui/analytics/internal/e/e;

    invoke-static {v0, p1}, Lcom/miui/analytics/internal/e/e;->a(Lcom/miui/analytics/internal/e/e;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/analytics/internal/e/e$a;
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e$a;->a:Lcom/miui/analytics/internal/e/e;

    invoke-virtual {v0, p1, p2}, Lcom/miui/analytics/internal/e/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-object p0
.end method

.method private a()Lcom/miui/analytics/internal/e/e;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e$a;->a:Lcom/miui/analytics/internal/e/e;

    return-object v0
.end method
