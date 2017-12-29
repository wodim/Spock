.class public Lcom/miui/analytics/AnalyticsService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsService"


# instance fields
.field private mBinder:Lcom/miui/analytics/ICore$Stub;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Lcom/miui/analytics/AnalyticsService$1;

    invoke-direct {v0, p0}, Lcom/miui/analytics/AnalyticsService$1;-><init>(Lcom/miui/analytics/AnalyticsService;)V

    iput-object v0, p0, Lcom/miui/analytics/AnalyticsService;->mBinder:Lcom/miui/analytics/ICore$Stub;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/analytics/AnalyticsService;->mBinder:Lcom/miui/analytics/ICore$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 19
    const-string v0, "AnalyticsService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
