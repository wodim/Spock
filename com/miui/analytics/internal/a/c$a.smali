.class public Lcom/miui/analytics/internal/a/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "UploadActiveHelper"


# instance fields
.field private a:Lcom/miui/analytics/internal/f/u;

.field private synthetic b:Lcom/miui/analytics/internal/a/c;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2034
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/miui/analytics/internal/a/c;Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1113
    new-instance v0, Lcom/miui/analytics/internal/f/u;

    const-string v1, "co"

    invoke-direct {v0, p2, v1}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    .line 109
    return-void
.end method

.method private static a(ILandroid/content/Context;)Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .prologue
    .line 2218
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_72

    .line 2220
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 2221
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getSubId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2222
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 2224
    const-class v1, Landroid/telephony/TelephonyManager;

    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2225
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getNetworkOperator"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v0, v0, v5

    .line 2226
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_65
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_65} :catch_66

    .line 2232
    :goto_65
    return-object v0

    .line 2228
    :catch_66
    move-exception v0

    .line 2229
    const-string v1, "UploadActiveHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in getSimType by slotId: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2232
    :cond_72
    const-string v0, ""

    goto :goto_65
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 2067
    .line 2069
    :try_start_0
    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2070
    const-string v1, "mac"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2079
    const-string v0, "imei"

    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2082
    const-string v0, "android_id"

    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2083
    const-string v0, "region"

    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2084
    const-string v0, "language"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2085
    const-string v0, "network"

    invoke-static {p0}, Lcom/miui/analytics/internal/f/o;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2086
    const-string v0, "device_id"

    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2087
    const-string v0, "model"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2088
    const-string v0, "real_model"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2089
    const-string v0, "pn"

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2095
    const-string v0, "version"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2096
    const-string v0, "ul"

    invoke-static {p0}, Lcom/miui/analytics/internal/f/l;->a(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2098
    const-string v0, "uuid"

    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2099
    const-string v0, "cn"

    invoke-static {}, Lcom/miui/analytics/internal/f/l;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2100
    const-string v0, "ss"

    invoke-static {}, Lcom/miui/analytics/internal/a/c$a;->g()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2101
    const-string v0, "radio"

    invoke-static {}, Lcom/miui/analytics/internal/a/c$a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2102
    const-string v0, "radio2"

    const/4 v1, 0x1

    invoke-static {v1, p0}, Lcom/miui/analytics/internal/a/c$a;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2103
    const-string v0, "sig"

    invoke-static {p0}, Lcom/miui/analytics/internal/a/c$a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2104
    const-string v0, "sd"

    invoke-static {p0}, Lcom/miui/analytics/internal/a/c$a;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2105
    const-string v0, "device_model"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2106
    const-string v0, "device_v"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2107
    const-string v0, "avn"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2108
    const-string v0, "rad"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2109
    const-string v0, "rams"

    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2110
    const-string v0, "roms"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2111
    const-string v0, "pla"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2112
    const-string v0, "pc"

    invoke-static {}, Lcom/miui/analytics/internal/f/x;->n()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2113
    const-string v0, "fb"

    invoke-static {}, Lcom/miui/analytics/internal/a/c$a;->d()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 2114
    const-string v0, "imsi"

    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_110
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_110} :catch_111

    .line 2143
    :goto_110
    return-object p1

    .line 2140
    :catch_111
    move-exception v0

    .line 2141
    const-string v1, "UploadActiveHelper"

    const-string v2, "getRomJsonParams Exception: "

    invoke-static {p0, v1, v2, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_110
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 113
    new-instance v0, Lcom/miui/analytics/internal/f/u;

    const-string v1, "co"

    invoke-direct {v0, p1, v1}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    .line 114
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2276
    :try_start_2
    const-string v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 2278
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getVolumeState"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 2279
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 2280
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2281
    const-string v3, "mounted"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_32

    move-result v0

    if-eqz v0, :cond_3e

    move v0, v1

    .line 2287
    :goto_31
    return v0

    .line 2284
    :catch_32
    move-exception v0

    .line 2285
    const-string v1, "UploadActiveHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception in isStorageMounted: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    move v0, v2

    .line 2287
    goto :goto_31
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2237
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2238
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2240
    array-length v2, v1

    :goto_12
    if-ge v0, v2, :cond_3b

    aget-object v3, v1, v0

    .line 2241
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/analytics/internal/f/ad;->a([B)Ljava/lang/String;

    move-result-object v3

    .line 2242
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 2243
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2a} :catch_2f

    move-result-object v0

    .line 2249
    :goto_2b
    return-object v0

    .line 2240
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 2246
    :catch_2f
    move-exception v0

    .line 2247
    const-string v1, "UploadActiveHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in getShortSignature: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2249
    :cond_3b
    const-string v0, ""

    goto :goto_2b
.end method

.method private static c(Landroid/content/Context;)I
    .registers 5

    .prologue
    .line 2256
    const/4 v0, 0x0

    .line 2258
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2259
    const-string v2, "SECONDARY_STORAGE"

    invoke-static {v2}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2260
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 2261
    invoke-static {p0, v2}, Lcom/miui/analytics/internal/a/c$a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1e} :catch_25

    move-result v0

    if-nez v0, :cond_23

    .line 2263
    const/4 v0, 0x1

    .line 2271
    :cond_22
    :goto_22
    return v0

    .line 2265
    :cond_23
    const/4 v0, 0x2

    goto :goto_22

    .line 2268
    :catch_25
    move-exception v1

    .line 2269
    const-string v2, "UploadActiveHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception in getExternalStorageState: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_22
.end method

.method public static d()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 2152
    :try_start_1
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getService"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 2153
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "package"

    aput-object v5, v3, v4

    .line 2154
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2155
    const-string v2, "android.content.pm.IPackageManager$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/os/IBinder;

    aput-object v6, v4, v5

    .line 2156
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 2157
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2158
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "isFirstBoot"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2159
    const-string v2, "UploadActiveHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "is first boot:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/m;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_71} :catch_72

    .line 2163
    :goto_71
    return v0

    .line 2161
    :catch_72
    move-exception v0

    .line 2162
    const-string v2, "UploadActiveHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "isFirstBoot exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 2163
    goto :goto_71
.end method

.method private e()I
    .registers 4

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    const-string v1, "wcd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private f()J
    .registers 5

    .prologue
    .line 182
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    const-string v1, "wct"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static g()I
    .registers 6

    .prologue
    .line 2170
    const-wide/16 v0, 0x0

    .line 2171
    const/4 v4, 0x0

    .line 2174
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/proc/partitions"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x100

    invoke-direct {v3, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_47
    .catchall {:try_start_3 .. :try_end_11} :catchall_58

    .line 2176
    :cond_11
    :try_start_11
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1f

    const-string v4, "mmcblk0"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2178
    :cond_1f
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 2179
    const-string v4, " +"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2180
    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_35} :catch_60
    .catchall {:try_start_11 .. :try_end_35} :catchall_5e

    move-result-wide v0

    .line 2185
    :cond_36
    invoke-static {v3}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 2187
    :goto_39
    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const/4 v2, 0x2

    shl-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    .line 2182
    :catch_47
    move-exception v2

    move-object v3, v4

    .line 2183
    :goto_49
    :try_start_49
    const-string v4, "UploadActiveHelper"

    invoke-static {v4}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Exception in getTotalInternalMemory: "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_5e

    .line 2185
    invoke-static {v3}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_39

    :catchall_58
    move-exception v0

    move-object v3, v4

    :goto_5a
    invoke-static {v3}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_5e
    move-exception v0

    goto :goto_5a

    .line 2182
    :catch_60
    move-exception v2

    goto :goto_49
.end method

.method private static h()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2193
    :try_start_0
    const-class v0, Landroid/telephony/TelephonyManager;

    const-string v1, "getDefault"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2194
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2195
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getNetworkOperator"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 2196
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_29} :catch_2a

    .line 2200
    :goto_29
    return-object v0

    .line 2197
    :catch_2a
    move-exception v0

    .line 2198
    const-string v1, "UploadActiveHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception in getSimType: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2200
    const-string v0, ""

    goto :goto_29
.end method


# virtual methods
.method public final a()J
    .registers 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luat"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(J)V
    .registers 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    const-string v1, "luat"

    invoke-virtual {v0, v1, p1, p2}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;J)V

    .line 118
    return-void
.end method

.method public final a(Z)V
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 130
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/f/u;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    const-string v1, "wcd"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 132
    const-string v1, "wct"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 133
    const-string v1, "wcs"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 134
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    if-eqz p1, :cond_20

    .line 136
    invoke-virtual {p0}, Lcom/miui/analytics/internal/a/c$a;->b()V

    .line 138
    :cond_20
    return-void
.end method

.method public final b()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 141
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    const-string v1, "wcd"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;I)I

    move-result v0

    .line 142
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 143
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 144
    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v2, v1

    or-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    invoke-virtual {v1}, Lcom/miui/analytics/internal/f/u;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 146
    const-string v2, "wcd"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 147
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    const-string v2, "wcs"

    invoke-virtual {v0, v2, v4, v5}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-nez v0, :cond_3a

    .line 148
    const-string v0, "wcs"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 150
    :cond_3a
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 151
    return-void
.end method

.method public final c()V
    .registers 13

    .prologue
    const-wide/16 v10, 0x0

    .line 154
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    const-string v1, "wcs"

    invoke-virtual {v0, v1, v10, v11}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v10

    if-gtz v0, :cond_17

    .line 175
    :goto_16
    return-void

    .line 159
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 160
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/f/u;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 161
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-lez v0, :cond_95

    .line 162
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    const-string v2, "wcd"

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;I)I

    move-result v0

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    move v2, v0

    move-object v0, v1

    .line 164
    :goto_40
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_6b

    .line 165
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 167
    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    shl-int v6, v7, v6

    or-int/2addr v2, v6

    .line 164
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_40

    .line 169
    :cond_6b
    const-string v0, "wcd"

    invoke-interface {v4, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v0, p0, Lcom/miui/analytics/internal/a/c$a;->a:Lcom/miui/analytics/internal/f/u;

    const-string v2, "wct"

    invoke-virtual {v0, v2, v10, v11}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 171
    const-string v2, "wct"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v0, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v0, v8

    const-wide/16 v8, 0x3c

    div-long/2addr v0, v8

    add-long/2addr v0, v6

    invoke-interface {v4, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 173
    :cond_95
    const-string v0, "wcs"

    invoke-interface {v4, v0, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_16
.end method
