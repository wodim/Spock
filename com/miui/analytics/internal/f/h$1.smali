.class final Lcom/miui/analytics/internal/f/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/f/h;->a(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/miui/analytics/internal/f/h;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/f/h;ZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miui/analytics/internal/f/h$1;->c:Lcom/miui/analytics/internal/f/h;

    iput-boolean p2, p0, Lcom/miui/analytics/internal/f/h$1;->a:Z

    iput-object p3, p0, Lcom/miui/analytics/internal/f/h$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h$1;->c:Lcom/miui/analytics/internal/f/h;

    iget-boolean v1, p0, Lcom/miui/analytics/internal/f/h$1;->a:Z

    iget-object v2, p0, Lcom/miui/analytics/internal/f/h$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/internal/f/h;->a(Lcom/miui/analytics/internal/f/h;ZLjava/lang/String;)V

    .line 71
    return-void
.end method
