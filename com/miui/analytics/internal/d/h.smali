.class public final Lcom/miui/analytics/internal/d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static a:Ljava/lang/String; = "polling_interval"

.field private static b:Ljava/lang/String; = "discard_policy"

.field private static c:Ljava/lang/String; = "discard_threshold"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/miui/analytics/internal/d/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/miui/analytics/internal/d/h;->d:Ljava/lang/String;

    .line 26
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/analytics/internal/d/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miui/analytics/internal/d/h;->e:Ljava/lang/String;

    .line 34
    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/analytics/internal/d/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/analytics/internal/d/h;->f:Ljava/lang/String;

    .line 42
    return-void
.end method
