.class public final Lcom/miui/analytics/internal/f/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DeviceIdHelper"

.field private static b:I = 0xf

.field private static c:I = 0xe

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/reflect/Method;

.field private static i:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 28
    const-string v0, "1"

    sput-object v0, Lcom/miui/analytics/internal/f/f;->d:Ljava/lang/String;

    .line 30
    const-string v0, "3"

    sput-object v0, Lcom/miui/analytics/internal/f/f;->f:Ljava/lang/String;

    .line 31
    const-string v0, "-1"

    sput-object v0, Lcom/miui/analytics/internal/f/f;->g:Ljava/lang/String;

    .line 44
    :try_start_c
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 45
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@53
    nop

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/internal/f/f;->h:Ljava/lang/reflect/Method;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_22} :catch_3f

    .line 62
    :goto_22
    :try_start_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3e

    .line 63
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 64
    const-string v1, "getImei"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1, v2}, vtable@53
    nop

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/internal/f/f;->i:Ljava/lang/reflect/Method;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_3e} :catch_57

    .line 70
    :cond_3e
    :goto_3e
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 46
    :catch_3f
    move-exception v0

    .line 47
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clsSystemProperties e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    invoke-static {}, Lcom/miui/analytics/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DeviceIdHelper"

    const-string v3, "1"

    invoke-static {v1, v2, v3, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22

    .line 66
    :catch_57
    move-exception v0

    .line 67
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "clsTelephonyManager e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    invoke-static {}, Lcom/miui/analytics/App;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "DeviceIdHelper"

    const-string v3, "3"

    invoke-static {v1, v2, v3, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3e
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 191
    :try_start_0
    invoke-static {p0}, Lcom/miui/analytics/internal/f/f;->d(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 192
    if-eqz v0, :cond_2c

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_2c

    .line 193
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 194
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 200
    :goto_18
    return-object v0

    .line 196
    :catch_19
    move-exception v0

    .line 197
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getDeviceIdMd5 e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    const-string v1, "DeviceIdHelper"

    const-string v2, "5"

    invoke-static {p0, v1, v2, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 200
    :cond_2c
    const-string v0, ""

    goto :goto_18
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 397
    :try_start_1
    sget-object v1, Lcom/miui/analytics/internal/f/f;->h:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_16

    .line 398
    sget-object v1, Lcom/miui/analytics/internal/f/f;->h:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_15} :catch_17

    move-result-object v0

    .line 404
    :cond_16
    :goto_16
    return-object v0

    .line 400
    :catch_17
    move-exception v1

    .line 401
    const-string v2, "DeviceIdHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getProp e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    invoke-static {}, Lcom/miui/analytics/App;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "DeviceIdHelper"

    const-string v4, "14"

    invoke-static {v2, v3, v4, v1}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method private static a()Z
    .registers 2

    .prologue
    .line 379
    const-string v0, "dsds"

    const-string v1, "persist.radio.multisim.config"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 380
    const/4 v0, 0x1

    .line 392
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 286
    :try_start_0
    invoke-static {p0}, Lcom/miui/analytics/internal/f/f;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_3f

    .line 288
    new-instance v0, Lcom/miui/analytics/internal/f/f$1;

    invoke-direct {v0}, Lcom/miui/analytics/internal/f/f$1;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 294
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 295
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 294
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 297
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    .line 303
    :goto_2b
    return-object v0

    .line 299
    :catch_2c
    move-exception v0

    .line 300
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getImeiListMd5 e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 301
    const-string v1, "DeviceIdHelper"

    const-string v2, "9"

    invoke-static {p0, v1, v2, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 303
    :cond_3f
    const-string v0, ""

    goto :goto_2b
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 424
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_14

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 358
    :try_start_0
    invoke-static {p0}, Lcom/miui/analytics/internal/f/f;->f(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 359
    if-eqz v2, :cond_3f

    .line 360
    new-instance v0, Lcom/miui/analytics/internal/f/f$2;

    invoke-direct {v0}, Lcom/miui/analytics/internal/f/f$2;-><init>()V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 366
    const/4 v0, 0x0

    move v1, v0

    :goto_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    .line 367
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 366
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_10

    .line 369
    :cond_27
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2a} :catch_2c

    move-result-object v0

    .line 375
    :goto_2b
    return-object v0

    .line 371
    :catch_2c
    move-exception v0

    .line 372
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getMeidListMd5 e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    const-string v1, "DeviceIdHelper"

    const-string v2, "13"

    invoke-static {p0, v1, v2, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 375
    :cond_3f
    const-string v0, ""

    goto :goto_2b
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 428
    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_14

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static d(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 145
    :try_start_1
    invoke-static {}, Lcom/miui/analytics/internal/f/f;->a()Z

    move-result v0

    if-nez v0, :cond_2c

    .line 146
    const-string v0, "ro.ril.oem.imei"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d5

    .line 148
    const-string v0, "persist.radio.imei"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 150
    :goto_1a
    invoke-static {v1}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_84

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v3, Lcom/miui/analytics/internal/f/f;->d:Ljava/lang/String;

    aput-object v3, v0, v1

    .line 186
    :goto_2b
    return-object v0

    .line 154
    :cond_2c
    const-string v0, "ro.ril.oem.imei1"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 156
    const-string v0, "persist.radio.imei1"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    :cond_3e
    const-string v1, "ro.ril.oem.imei2"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    .line 160
    const-string v1, "persist.radio.imei2"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_50
    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    invoke-static {v1}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_63

    move-object v1, v0

    .line 164
    :cond_63
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    sget-object v3, Lcom/miui/analytics/internal/f/f;->d:Ljava/lang/String;

    aput-object v3, v0, v1
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6e} :catch_6f

    goto :goto_2b

    .line 182
    :catch_6f
    move-exception v0

    .line 183
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getDeviceId e"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    const-string v1, "DeviceIdHelper"

    const-string v3, "4"

    invoke-static {p0, v1, v3, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 186
    goto :goto_2b

    .line 168
    :cond_84
    :try_start_84
    invoke-static {p0}, Lcom/miui/analytics/internal/f/f;->e(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_a4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a4

    .line 170
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v1, v3

    const/4 v0, 0x1

    sget-object v3, Lcom/miui/analytics/internal/f/f;->d:Ljava/lang/String;

    aput-object v3, v1, v0

    move-object v0, v1

    goto :goto_2b

    .line 172
    :cond_a4
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 173
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 174
    sget-object v0, Lcom/miui/analytics/internal/f/f;->g:Ljava/lang/String;

    .line 175
    if-eqz v1, :cond_d3

    const-string v3, "^0*$"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d3

    move-object v3, v2

    .line 178
    :goto_bd
    invoke-static {v3}, Lcom/miui/analytics/internal/f/f;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d1

    .line 179
    sget-object v0, Lcom/miui/analytics/internal/f/f;->f:Ljava/lang/String;

    move-object v1, v0

    .line 181
    :goto_c6
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const/4 v3, 0x1

    aput-object v1, v0, v3
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_84 .. :try_end_cf} :catch_6f

    goto/16 :goto_2b

    :cond_d1
    move-object v1, v0

    goto :goto_c6

    :cond_d3
    move-object v3, v1

    goto :goto_bd

    :cond_d5
    move-object v1, v0

    goto/16 :goto_1a
.end method

.method private static e(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v1, 0x15

    const/4 v3, 0x0

    .line 218
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_7f

    sget-object v0, Lcom/miui/analytics/internal/f/f;->i:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_7f

    .line 220
    :try_start_b
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 221
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 222
    sget-object v1, Lcom/miui/analytics/internal/f/f;->i:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 223
    invoke-static {v1}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 224
    invoke-static {}, Lcom/miui/analytics/internal/f/f;->a()Z

    move-result v4

    if-nez v4, :cond_3c

    .line 225
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    .line 281
    :goto_3b
    return-object v0

    .line 228
    :cond_3c
    sget-object v4, Lcom/miui/analytics/internal/f/f;->i:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 230
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_63

    .line 231
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_61
    move-object v0, v2

    .line 237
    goto :goto_3b

    .line 234
    :cond_63
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_69} :catch_6a

    goto :goto_61

    .line 240
    :catch_6a
    move-exception v0

    .line 241
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getImeiList Build.VERSION.SDK_INT >= 21 e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 242
    const-string v1, "DeviceIdHelper"

    const-string v2, "7"

    invoke-static {p0, v1, v2, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7d
    :goto_7d
    move-object v0, v3

    .line 281
    goto :goto_3b

    .line 244
    :cond_7f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v1, :cond_7d

    .line 246
    :try_start_83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 247
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 248
    invoke-static {}, Lcom/miui/analytics/internal/f/f;->a()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 249
    const-string v0, "getDefault"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 251
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 252
    goto :goto_3b

    .line 255
    :cond_b6
    const-string v0, "getDefault"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 256
    const-string v0, "getDefault"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v2, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v2, "ro.product.mod_device"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_10e

    const-string v5, "_global"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_145

    .line 259
    :cond_10e
    invoke-static {v4}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_123

    .line 260
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_11a
    :goto_11a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7d

    move-object v0, v1

    .line 273
    goto/16 :goto_3b

    .line 262
    :cond_123
    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 263
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_12f} :catch_130

    goto :goto_11a

    .line 276
    :catch_130
    move-exception v0

    .line 277
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getImeiList Build.VERSION.SDK_INT < 21 e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 278
    const-string v1, "DeviceIdHelper"

    const-string v2, "8"

    invoke-static {p0, v1, v2, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7d

    .line 267
    :cond_145
    :try_start_145
    invoke-static {v4}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11a

    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 268
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_157
    .catch Ljava/lang/Throwable; {:try_start_145 .. :try_end_157} :catch_130

    goto :goto_11a
.end method

.method private static f(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 311
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_85

    .line 313
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 314
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 315
    const-string v0, "getDefault"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 316
    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 317
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    .line 353
    :goto_40
    return-object v0

    .line 320
    :cond_41
    const-string v0, "getDefault"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 321
    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 322
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_6e} :catch_70

    move-object v0, v1

    .line 323
    goto :goto_40

    .line 325
    :catch_70
    move-exception v0

    .line 326
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getMeidList Build.VERSION.SDK_INT < 21 e"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 327
    const-string v1, "DeviceIdHelper"

    const-string v3, "10"

    invoke-static {p0, v1, v3, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_83
    move-object v0, v2

    .line 329
    goto :goto_40

    .line 342
    :cond_85
    :try_start_85
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 343
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v1}, Lcom/miui/analytics/internal/f/f;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b3

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9f
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_9f} :catch_a0

    goto :goto_40

    .line 349
    :catch_a0
    move-exception v0

    .line 350
    const-string v1, "DeviceIdHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getMeidList e"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 351
    const-string v1, "DeviceIdHelper"

    const-string v3, "12"

    invoke-static {p0, v1, v3, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b3
    move-object v0, v2

    .line 353
    goto :goto_40
.end method
