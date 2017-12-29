.class public final Lcom/miui/analytics/internal/f/o;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string v0, "NetworkUtils"

    sput-object v0, Lcom/miui/analytics/internal/f/o;->a:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)Lcom/miui/analytics/internal/f/n;
    .registers 2

    .prologue
    .line 106
    packed-switch p0, :pswitch_data_10

    .line 126
    sget-object v0, Lcom/miui/analytics/internal/f/n;->e:Lcom/miui/analytics/internal/f/n;

    :goto_5
    return-object v0

    .line 112
    :pswitch_6
    sget-object v0, Lcom/miui/analytics/internal/f/n;->b:Lcom/miui/analytics/internal/f/n;

    goto :goto_5

    .line 122
    :pswitch_9
    sget-object v0, Lcom/miui/analytics/internal/f/n;->c:Lcom/miui/analytics/internal/f/n;

    goto :goto_5

    .line 124
    :pswitch_c
    sget-object v0, Lcom/miui/analytics/internal/f/n;->d:Lcom/miui/analytics/internal/f/n;

    goto :goto_5

    .line 106
    nop

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_9
        :pswitch_9
    .end packed-switch
.end method

.method private static a()Ljava/lang/String;
    .registers 4

    .prologue
    .line 23
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 25
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 26
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 27
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_24

    .line 28
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 29
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_45

    move-result-object v0

    .line 36
    :goto_44
    return-object v0

    .line 33
    :catch_45
    move-exception v0

    .line 34
    sget-object v1, Lcom/miui/analytics/internal/f/o;->a:Ljava/lang/String;

    const-string v2, "getLocalIpAddress"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    :cond_4d
    const-string v0, ""

    goto :goto_44
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 40
    invoke-static {p0}, Lcom/miui/analytics/internal/f/o;->c(Landroid/content/Context;)Lcom/miui/analytics/internal/f/n;

    move-result-object v0

    .line 41
    sget-object v1, Lcom/miui/analytics/internal/f/n;->a:Lcom/miui/analytics/internal/f/n;

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/f/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 42
    const/4 v0, 0x1

    .line 44
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 48
    invoke-static {p0}, Lcom/miui/analytics/internal/f/o;->c(Landroid/content/Context;)Lcom/miui/analytics/internal/f/n;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_10

    sget-object v1, Lcom/miui/analytics/internal/f/n;->e:Lcom/miui/analytics/internal/f/n;

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/f/n;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 50
    const/4 v0, 0x1

    .line 52
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static c(Landroid/content/Context;)Lcom/miui/analytics/internal/f/n;
    .registers 5

    .prologue
    .line 57
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 58
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 59
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-nez v2, :cond_17

    .line 60
    :cond_14
    sget-object v0, Lcom/miui/analytics/internal/f/n;->e:Lcom/miui/analytics/internal/f/n;

    .line 1124
    :goto_16
    return-object v0

    .line 63
    :cond_17
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_26

    .line 64
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-nez v0, :cond_30

    .line 65
    sget-object v0, Lcom/miui/analytics/internal/f/n;->a:Lcom/miui/analytics/internal/f/n;

    goto :goto_16

    .line 68
    :cond_26
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 69
    sget-object v0, Lcom/miui/analytics/internal/f/n;->a:Lcom/miui/analytics/internal/f/n;

    goto :goto_16

    .line 72
    :cond_30
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 73
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 1106
    packed-switch v0, :pswitch_data_56

    .line 1126
    sget-object v0, Lcom/miui/analytics/internal/f/n;->e:Lcom/miui/analytics/internal/f/n;

    goto :goto_16

    .line 1112
    :pswitch_42
    sget-object v0, Lcom/miui/analytics/internal/f/n;->b:Lcom/miui/analytics/internal/f/n;

    goto :goto_16

    .line 1122
    :pswitch_45
    sget-object v0, Lcom/miui/analytics/internal/f/n;->c:Lcom/miui/analytics/internal/f/n;

    goto :goto_16

    .line 1124
    :pswitch_48
    sget-object v0, Lcom/miui/analytics/internal/f/n;->d:Lcom/miui/analytics/internal/f/n;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    goto :goto_16

    .line 75
    :catch_4b
    move-exception v0

    .line 76
    sget-object v1, Lcom/miui/analytics/internal/f/o;->a:Ljava/lang/String;

    const-string v2, "getNetState"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    sget-object v0, Lcom/miui/analytics/internal/f/n;->e:Lcom/miui/analytics/internal/f/n;

    goto :goto_16

    .line 1106
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_42
        :pswitch_42
        :pswitch_45
        :pswitch_42
        :pswitch_45
        :pswitch_45
        :pswitch_42
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_42
        :pswitch_45
        :pswitch_48
        :pswitch_45
        :pswitch_45
    .end packed-switch
.end method

.method public static d(Landroid/content/Context;)I
    .registers 3

    .prologue
    .line 89
    invoke-static {p0}, Lcom/miui/analytics/internal/f/o;->c(Landroid/content/Context;)Lcom/miui/analytics/internal/f/n;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/miui/analytics/internal/f/o$1;->a:[I

    invoke-virtual {v0}, Lcom/miui/analytics/internal/f/n;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1a

    .line 101
    const/4 v0, 0x0

    :goto_10
    return v0

    .line 92
    :pswitch_11
    const/4 v0, 0x1

    goto :goto_10

    .line 94
    :pswitch_13
    const/4 v0, 0x2

    goto :goto_10

    .line 96
    :pswitch_15
    const/4 v0, 0x3

    goto :goto_10

    .line 98
    :pswitch_17
    const/16 v0, 0xa

    goto :goto_10

    .line 90
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_11
        :pswitch_13
        :pswitch_15
        :pswitch_17
    .end packed-switch
.end method
