.class Lcom/miui/analytics/AnalyticsService$1;
.super Lcom/miui/analytics/ICore$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/AnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/analytics/AnalyticsService;


# direct methods
.method constructor <init>(Lcom/miui/analytics/AnalyticsService;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/miui/analytics/AnalyticsService$1;->this$0:Lcom/miui/analytics/AnalyticsService;

    invoke-direct {p0}, Lcom/miui/analytics/ICore$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1, p2}, Lcom/miui/analytics/Analytics;->getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 27
    :try_start_1
    iget-object v1, p0, Lcom/miui/analytics/AnalyticsService$1;->this$0:Lcom/miui/analytics/AnalyticsService;

    invoke-virtual {v1}, Lcom/miui/analytics/AnalyticsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/analytics/AnalyticsService$1;->this$0:Lcom/miui/analytics/AnalyticsService;

    invoke-virtual {v2}, Lcom/miui/analytics/AnalyticsService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 28
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    .line 31
    :goto_14
    return v0

    :catch_15
    move-exception v1

    goto :goto_14
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/AnalyticsService$1;->this$0:Lcom/miui/analytics/AnalyticsService;

    invoke-virtual {v0}, Lcom/miui/analytics/AnalyticsService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/AnalyticsService$1;->this$0:Lcom/miui/analytics/AnalyticsService;

    invoke-virtual {v1}, Lcom/miui/analytics/AnalyticsService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 38
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 41
    :goto_13
    return-object v0

    :catch_14
    move-exception v0

    const-string v0, "0.0.0"

    goto :goto_13
.end method

.method public isPolicyReady(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p1, p2}, Lcom/miui/analytics/Analytics;->isPolicyReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDebugOn(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p1}, Lcom/miui/analytics/Analytics;->setDebugOn(Z)V

    .line 56
    return-void
.end method

.method public setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p1, p2}, Lcom/miui/analytics/Analytics;->setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method

.method public trackEvent(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    invoke-static {p1}, Lcom/miui/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public trackEvents([Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {p1}, Lcom/miui/analytics/Analytics;->trackEvents([Ljava/lang/String;)V

    .line 52
    return-void
.end method
