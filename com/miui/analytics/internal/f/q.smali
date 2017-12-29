.class public final Lcom/miui/analytics/internal/f/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/f/q$a;
    }
.end annotation


# static fields
.field private static a:Lcom/miui/analytics/internal/f/q; = null

.field private static final b:Ljava/lang/String; = "PPMonitor"

.field private static final c:J

.field private static final d:F


# instance fields
.field private e:Landroid/content/Context;

.field private f:Z

.field private final g:Lcom/miui/analytics/internal/f/q$a;

.field private final h:Landroid/location/LocationManager;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/e/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/analytics/internal/f/q;->a:Lcom/miui/analytics/internal/f/q;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/miui/analytics/internal/f/q;->e:Landroid/content/Context;

    .line 41
    new-instance v0, Lcom/miui/analytics/internal/f/q$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/analytics/internal/f/q$a;-><init>(Lcom/miui/analytics/internal/f/q;B)V

    iput-object v0, p0, Lcom/miui/analytics/internal/f/q;->g:Lcom/miui/analytics/internal/f/q$a;

    .line 42
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->e:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/miui/analytics/internal/f/q;->h:Landroid/location/LocationManager;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/f/q;->i:Ljava/util/List;

    .line 44
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Lcom/miui/analytics/internal/f/q;
    .registers 3

    .prologue
    .line 33
    const-class v1, Lcom/miui/analytics/internal/f/q;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/miui/analytics/internal/f/q;->a:Lcom/miui/analytics/internal/f/q;

    if-nez v0, :cond_e

    .line 34
    new-instance v0, Lcom/miui/analytics/internal/f/q;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/f/q;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/f/q;->a:Lcom/miui/analytics/internal/f/q;

    .line 36
    :cond_e
    sget-object v0, Lcom/miui/analytics/internal/f/q;->a:Lcom/miui/analytics/internal/f/q;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .registers 7

    .prologue
    .line 48
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/analytics/internal/f/q;->f:Z

    .line 49
    const-string v0, "PPMonitor"

    const-string v1, "start with recordInterval:%d,recordMinDistance:%f"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->e:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->e:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_47

    .line 63
    :goto_46
    return-void

    .line 59
    :cond_47
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->h:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/analytics/internal/f/q;->g:Lcom/miui/analytics/internal/f/q$a;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_53} :catch_54

    goto :goto_46

    .line 60
    :catch_54
    move-exception v0

    .line 61
    const-string v1, "PPMonitor"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PassiveProviderMonitor start exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46
.end method

.method private a(Landroid/location/Location;)V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_6

    .line 121
    :cond_10
    return-void
.end method

.method private a(Lcom/miui/analytics/internal/e/h;)V
    .registers 8

    .prologue
    .line 84
    iget-object v1, p0, Lcom/miui/analytics/internal/f/q;->i:Ljava/util/List;

    monitor-enter v1

    .line 85
    :try_start_3
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const-string v0, "PPMonitor"

    const-string v2, "reigster listener, mListeners size: %d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/analytics/internal/f/q;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    monitor-exit v1

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw v0
.end method

.method static synthetic a(Lcom/miui/analytics/internal/f/q;Landroid/location/Location;)V
    .registers 4

    .prologue
    .line 20
    .line 1114
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_6

    .line 20
    :cond_10
    return-void
.end method

.method static synthetic a(Lcom/miui/analytics/internal/f/q;)Z
    .registers 2

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/miui/analytics/internal/f/q;->f:Z

    return v0
.end method

.method private b()V
    .registers 5

    .prologue
    .line 67
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/miui/analytics/internal/f/q;->f:Z

    .line 68
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->e:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->e:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_28

    .line 81
    :goto_27
    return-void

    .line 77
    :cond_28
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q;->h:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/analytics/internal/f/q;->g:Lcom/miui/analytics/internal/f/q$a;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_30

    goto :goto_27

    .line 78
    :catch_30
    move-exception v0

    .line 79
    const-string v1, "PPMonitor"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PassiveProviderMonitor stop exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_27
.end method
