.class public Lcom/miui/analytics/Analytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Analytics"

.field private static sContext:Landroid/content/Context;

.field private static sInitialized:Z

.field private static sVersion:I

.field private static sVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 30
    sput v1, Lcom/miui/analytics/Analytics;->sVersion:I

    .line 31
    const-string v0, "0.0.0"

    sput-object v0, Lcom/miui/analytics/Analytics;->sVersionName:Ljava/lang/String;

    .line 32
    sput-boolean v1, Lcom/miui/analytics/Analytics;->sInitialized:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableAppCollectUpload(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    :try_start_2
    const-string v2, "com.miui.spock"

    invoke-static {v2, p0}, Lcom/miui/analytics/Analytics;->getPrivacyPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/analytics/internal/d/k;

    move-result-object v2

    .line 96
    invoke-static {p0}, Lcom/miui/analytics/internal/f/e;->a(Ljava/lang/String;)Z

    move-result v3

    .line 98
    if-eqz v2, :cond_44

    sget-object v4, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/miui/analytics/internal/d/k;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v0

    .line 104
    :goto_17
    const-string v4, "Analytics"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "configKey = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " checkPermission = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " enableCollectAndUpload = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3f} :catch_48

    .line 106
    if-eqz v3, :cond_46

    if-eqz v2, :cond_46

    .line 115
    :goto_43
    return v0

    :cond_44
    move v2, v1

    .line 101
    goto :goto_17

    :cond_46
    move v0, v1

    .line 109
    goto :goto_43

    .line 111
    :catch_48
    move-exception v0

    .line 112
    const-string v2, "Analytics"

    const-string v3, "Exception in enableCollectUpload: "

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 115
    goto :goto_43
.end method

.method public static getClientExtra(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 66
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 67
    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_23

    .line 69
    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/f;->h()Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    .line 75
    :goto_16
    return-object v0

    .line 72
    :catch_17
    move-exception v0

    .line 73
    const-string v1, "Analytics"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getClientExtra exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    :cond_23
    const-string v0, ""

    goto :goto_16
.end method

.method public static getPrivacyPolicy(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/analytics/internal/d/k;
    .registers 5

    .prologue
    .line 81
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 82
    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/analytics/internal/d/f;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_23

    .line 84
    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/f;->c()Lcom/miui/analytics/internal/d/k;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v0

    .line 90
    :goto_16
    return-object v0

    .line 87
    :catch_17
    move-exception v0

    .line 88
    const-string v1, "Analytics"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getPrivacyPolicy exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_23
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public static getVersionName()Ljava/lang/String;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Lcom/miui/analytics/Analytics;->sVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;ILjava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 36
    :try_start_1
    sget-boolean v0, Lcom/miui/analytics/Analytics;->sInitialized:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3} :catch_64
    .catchall {:try_start_1 .. :try_end_3} :catchall_73

    if-eqz v0, :cond_8

    .line 56
    sput-boolean v1, Lcom/miui/analytics/Analytics;->sInitialized:Z

    .line 57
    :goto_7
    return-void

    .line 39
    :cond_8
    :try_start_8
    sput p1, Lcom/miui/analytics/Analytics;->sVersion:I

    .line 40
    sput-object p2, Lcom/miui/analytics/Analytics;->sVersionName:Ljava/lang/String;

    .line 41
    invoke-static {p0}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    .line 42
    const/4 v2, 0x1

    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_62

    move v0, v1

    :goto_18
    invoke-static {v2, v0}, Ljunit/framework/Assert;->assertEquals(ZZ)V

    .line 43
    new-instance v0, Lcom/miui/analytics/internal/d/a/e;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/d/a/e;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/d/a/e;->a()V

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.miui.spock"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    new-instance v0, Lcom/miui/analytics/internal/m;

    const-string v2, "com.miui.spock"

    .line 48
    invoke-static {p0, v2}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/miui/analytics/internal/m;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/miui/analytics/internal/m;

    const-string v3, "1.5.0"

    invoke-direct {v2, v3}, Lcom/miui/analytics/internal/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/miui/analytics/internal/m;->a(Lcom/miui/analytics/internal/m;)I

    move-result v0

    if-gez v0, :cond_51

    .line 49
    :cond_47
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/miui/analytics/internal/c/b;

    invoke-direct {v2, p0}, Lcom/miui/analytics/internal/c/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 51
    :cond_51
    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/g;->a()V

    .line 52
    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Landroid/content/Context;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_5f} :catch_64
    .catchall {:try_start_8 .. :try_end_5f} :catchall_73

    .line 56
    sput-boolean v1, Lcom/miui/analytics/Analytics;->sInitialized:Z

    goto :goto_7

    .line 42
    :cond_62
    const/4 v0, 0x0

    goto :goto_18

    .line 53
    :catch_64
    move-exception v0

    .line 54
    :try_start_65
    const-string v2, "Analytics"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "initialize exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_70
    .catchall {:try_start_65 .. :try_end_70} :catchall_73

    .line 56
    sput-boolean v1, Lcom/miui/analytics/Analytics;->sInitialized:Z

    goto :goto_7

    :catchall_73
    move-exception v0

    sput-boolean v1, Lcom/miui/analytics/Analytics;->sInitialized:Z

    throw v0
.end method

.method public static isPolicyReady(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 122
    sget-object v2, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/miui/analytics/internal/d/j;->b(Ljava/lang/String;)Lcom/miui/analytics/internal/d;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 128
    :cond_14
    :goto_14
    return v0

    :cond_15
    move v0, v1

    .line 122
    goto :goto_14

    .line 124
    :cond_17
    sget-object v2, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lcom/miui/analytics/internal/d/j;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/analytics/internal/d/f;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_25

    move-result-object v2

    if-nez v2, :cond_14

    move v0, v1

    goto :goto_14

    .line 128
    :catch_25
    move-exception v0

    move v0, v1

    goto :goto_14
.end method

.method public static setDebugOn(Z)V
    .registers 1

    .prologue
    .line 61
    sput-boolean p0, Lcom/miui/analytics/internal/f/m;->a:Z

    .line 62
    return-void
.end method

.method public static setDefaultPolicy(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 157
    :try_start_0
    invoke-static {p0, p1}, Lcom/miui/analytics/internal/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 160
    :goto_3
    return-void

    :catch_4
    move-exception v0

    goto :goto_3
.end method

.method public static trackEvent(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 132
    if-eqz p0, :cond_6

    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 141
    :cond_6
    :goto_6
    return-void

    .line 136
    :cond_7
    :try_start_7
    const-string v0, "Analytics"

    const-string v1, "trackEvent"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/analytics/internal/k;->a(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/c;->a()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_21

    goto :goto_6

    .line 141
    :catch_21
    move-exception v0

    goto :goto_6
.end method

.method public static trackEvents([Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 144
    if-eqz p0, :cond_6

    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    if-nez v0, :cond_7

    .line 153
    :cond_6
    :goto_6
    return-void

    .line 148
    :cond_7
    :try_start_7
    const-string v0, "Analytics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trackEvents size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/analytics/internal/k;->a([Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/miui/analytics/Analytics;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/c;->a()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_6

    .line 153
    :catch_2f
    move-exception v0

    goto :goto_6
.end method
