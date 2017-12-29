.class public final Lcom/miui/analytics/internal/f/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SysUtils"

.field private static b:Ljava/lang/String; = null

.field private static c:Ljava/lang/String; = null

.field private static d:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "ro.build.product"

.field private static final f:Ljava/lang/String; = "ro.build.description"

.field private static final g:Ljava/lang/String; = "ro.build.version.sdk"

.field private static final h:Ljava/lang/String; = "ro.miui.cust_variant"

.field private static final i:Ljava/lang/String; = "ro.product.mod_device"

.field private static final j:Ljava/lang/String; = "ro.miui.region"

.field private static final k:Ljava/lang/String; = "persist.radio.modem"

.field private static final l:Ljava/lang/String; = "ro.board.platform"

.field private static final m:Ljava/lang/String; = "\\d+.\\d+.\\d+(-internal)?"

.field private static final n:J = 0x400L

.field private static final o:J = 0x400L

.field private static final p:J = 0x100000L

.field private static final q:J = 0x40000000L

.field private static final r:Ljava/text/DecimalFormat;

.field private static final s:Ljava/text/DecimalFormat;

.field private static final t:Ljava/lang/String; = "/data/system/preinstall.list"

.field private static u:I = 0x18

.field private static v:I = 0x17

.field private static w:I = 0x16

.field private static x:I = 0x15

.field private static y:I = 0x13

.field private static z:I = 0x11


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/analytics/internal/f/x;->r:Ljava/text/DecimalFormat;

    .line 52
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#0.#"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/analytics/internal/f/x;->s:Ljava/text/DecimalFormat;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    .prologue
    .line 242
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method private static a(JZ)Ljava/lang/String;
    .registers 9

    .prologue
    .line 456
    :try_start_0
    sget-object v0, Lcom/miui/analytics/internal/f/x;->r:Ljava/text/DecimalFormat;

    .line 458
    const-wide/16 v2, 0x400

    cmp-long v1, p0, v2

    if-gez v1, :cond_27

    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-lez v1, :cond_27

    .line 459
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, p0

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    :goto_26
    return-object v0

    .line 460
    :cond_27
    const-wide/32 v2, 0x100000

    cmp-long v1, p0, v2

    if-gez v1, :cond_4a

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, p0

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 462
    :cond_4a
    const-wide/32 v2, 0x40000000

    cmp-long v1, p0, v2

    if-gez v1, :cond_6d

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, p0

    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_26

    .line 465
    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    long-to-double v2, p0

    const-wide/high16 v4, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_87} :catch_89

    move-result-object v0

    goto :goto_26

    .line 469
    :catch_89
    move-exception v0

    .line 470
    const-string v1, "SysUtils"

    const-string v2, "formatFileSize Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    const-string v0, ""

    goto :goto_26
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 174
    const-string v0, ""

    .line 176
    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static a(J)V
    .registers 6

    .prologue
    .line 65
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 69
    :goto_3
    return-void

    .line 66
    :catch_4
    move-exception v0

    .line 67
    const-string v1, "SysUtils"

    const-string v2, "SysUtils sleep failed!"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 509
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 526
    :goto_7
    return v0

    .line 513
    :cond_8
    :try_start_8
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/data/system/preinstall.list"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 515
    :cond_14
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 516
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 517
    const-string v1, "SysUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is preinstalled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    const/4 v0, 0x1

    goto :goto_7

    .line 521
    :cond_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_3d} :catch_3e

    goto :goto_7

    .line 522
    :catch_3e
    move-exception v1

    .line 523
    const-string v2, "SysUtils"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error occurs while read preinstalled packages"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7
.end method

.method public static b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 247
    const-string v0, "ro.build.version.incremental"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 180
    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 182
    const-string v0, ""

    .line 184
    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 252
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 188
    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 190
    const-string v0, ""

    .line 192
    :goto_c
    return-object v0

    :cond_d
    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 257
    :try_start_0
    const-string v0, "ro.product.model.real"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1252
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 265
    :cond_10
    :goto_10
    return-object v0

    .line 262
    :catch_11
    move-exception v0

    .line 263
    const-string v1, "SysUtils"

    const-string v2, "getRealModel Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 265
    const-string v0, ""

    goto :goto_10
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 204
    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 206
    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :cond_e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 209
    const-string v0, ""

    .line 219
    :goto_16
    return-object v0

    .line 212
    :cond_17
    :try_start_17
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 214
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x10

    .line 215
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_31} :catch_33

    move-result-object v0

    goto :goto_16

    .line 216
    :catch_33
    move-exception v0

    .line 217
    const-string v1, "SysUtils"

    const-string v2, "getHashedDeviceId Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    const-string v0, ""

    goto :goto_16
.end method

.method public static e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 269
    const-string v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 270
    invoke-static {}, Lcom/miui/analytics/internal/f/x;->f()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_12
    return-object v0

    :cond_13
    const-string v0, "persist.sys.language"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_12
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 234
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v0

    .line 238
    :goto_a
    return-object v0

    .line 235
    :catch_b
    move-exception v0

    .line 236
    const-string v1, "SysUtils"

    const-string v2, "getAndroidId Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    const-string v0, ""

    goto :goto_a
.end method

.method public static f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 277
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    .line 281
    :goto_8
    return-object v0

    .line 278
    :catch_9
    move-exception v0

    .line 279
    const-string v1, "SysUtils"

    const-string v2, "getLocalLanguage Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 281
    const-string v0, ""

    goto :goto_8
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 294
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 295
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 300
    :goto_e
    return-object v0

    .line 297
    :catch_f
    move-exception v0

    .line 298
    const-string v1, "SysUtils"

    const-string v2, "getRegion Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 300
    const-string v0, ""

    goto :goto_e
.end method

.method public static g()Ljava/lang/String;
    .registers 3

    .prologue
    .line 305
    :try_start_0
    const-string v0, "ro.product.mod_device"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 310
    :cond_f
    :goto_f
    return-object v0

    .line 307
    :catch_10
    move-exception v0

    .line 308
    const-string v1, "SysUtils"

    const-string v2, "getDeviceName Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    const-string v0, ""

    goto :goto_f
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 316
    :try_start_0
    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {p0}, Lcom/miui/analytics/internal/f/x;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 321
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 323
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    :cond_16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 326
    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    :cond_24
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2d

    move-result-object v0

    .line 333
    :goto_2c
    return-object v0

    .line 330
    :catch_2d
    move-exception v0

    .line 331
    const-string v1, "SysUtils"

    const-string v2, "getUUID Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    const-string v0, ""

    goto :goto_2c
.end method

.method public static h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 338
    const-string v0, "ro.build.product"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static h(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 368
    invoke-static {}, Lcom/miui/analytics/internal/f/x;->t()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/internal/f/x;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 343
    const-string v0, "ro.build.description"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static i(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 72
    sget-object v0, Lcom/miui/analytics/internal/f/x;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 74
    :try_start_8
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 75
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/internal/f/x;->b:Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_42

    .line 80
    :goto_16
    new-instance v0, Lcom/miui/analytics/internal/f/u;

    const-string v1, "co"

    const-string v2, "_m_rec"

    invoke-direct {v0, p0, v1, v2}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/miui/analytics/internal/f/x;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 82
    const-string v1, "imei"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/internal/f/x;->b:Ljava/lang/String;

    .line 88
    :goto_30
    sget-object v0, Lcom/miui/analytics/internal/f/x;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 89
    const-string v0, "SysUtils"

    const-string v1, "device id is null"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3f
    sget-object v0, Lcom/miui/analytics/internal/f/x;->b:Ljava/lang/String;

    return-object v0

    .line 76
    :catch_42
    move-exception v0

    .line 77
    const-string v1, "SysUtils"

    const-string v2, "get device id failed!"

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 85
    :cond_4b
    const-string v1, "imei"

    sget-object v2, Lcom/miui/analytics/internal/f/x;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30
.end method

.method public static j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 348
    const-string v0, "ro.build.version.sdk"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static j(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 97
    :try_start_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 98
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result-object v0

    .line 102
    :goto_c
    return-object v0

    .line 99
    :catch_d
    move-exception v0

    .line 100
    const-string v1, "SysUtils"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "get imsi failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const-string v0, ""

    goto :goto_c
.end method

.method public static k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 363
    const-string v0, "persist.radio.modem"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static k(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 106
    new-instance v1, Lcom/miui/analytics/internal/f/u;

    const-string v0, "co"

    const-string v2, "_m_rec"

    invoke-direct {v1, p0, v0, v2}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_21

    .line 109
    invoke-static {}, Lcom/miui/analytics/internal/f/x;->p()Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 111
    sput-object v0, Lcom/miui/analytics/internal/f/x;->d:Ljava/lang/String;

    .line 112
    const-string v2, "mac"

    invoke-virtual {v1, v2, v0}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_21
    :goto_21
    sget-object v0, Lcom/miui/analytics/internal/f/x;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 120
    :try_start_29
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 121
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/internal/f/x;->d:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3b} :catch_66

    .line 126
    :goto_3b
    sget-object v0, Lcom/miui/analytics/internal/f/x;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 127
    const-string v0, "mac"

    invoke-virtual {v1, v0, v4}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/internal/f/x;->d:Ljava/lang/String;

    .line 132
    :goto_4b
    sget-object v0, Lcom/miui/analytics/internal/f/x;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 133
    const-string v0, "SysUtils"

    const-string v1, "mac is null"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_5a
    sget-object v0, Lcom/miui/analytics/internal/f/x;->d:Ljava/lang/String;

    return-object v0

    .line 114
    :cond_5d
    const-string v0, "mac"

    invoke-virtual {v1, v0, v4}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/internal/f/x;->d:Ljava/lang/String;

    goto :goto_21

    .line 122
    :catch_66
    move-exception v0

    .line 123
    const-string v2, "SysUtils"

    const-string v3, "get mac failed!"

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b

    .line 129
    :cond_6f
    const-string v0, "mac"

    sget-object v2, Lcom/miui/analytics/internal/f/x;->d:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public static l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 373
    invoke-static {}, Lcom/miui/analytics/internal/f/x;->u()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/analytics/internal/f/x;->a(JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 224
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 229
    :goto_e
    return-object v0

    .line 226
    :catch_f
    move-exception v0

    .line 227
    const-string v1, "SysUtils"

    const-string v2, "getHashedAndroidId Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 229
    const-string v0, ""

    goto :goto_e
.end method

.method public static m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 378
    const-string v0, "ro.board.platform"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static n()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 394
    :try_start_1
    const-string v0, "android.telephony.TelephonyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 396
    const-string v2, "getDefault"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 397
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 398
    const-string v3, "getPhoneCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 399
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2f

    move-result v0

    .line 403
    :goto_2e
    return v0

    .line 400
    :catch_2f
    move-exception v0

    .line 401
    const-string v2, "SysUtils"

    const-string v3, "getPhoneCount Exception: "

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 403
    goto :goto_2e
.end method

.method public static o()I
    .registers 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 478
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_6b

    .line 479
    const-string v0, "android.os.UserHandle"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 480
    const-string v2, "getUserId"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 481
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 482
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    .line 483
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_58

    .line 484
    :try_start_35
    const-string v1, "SysUtils"

    const-string v3, "getUserId, uid:%d, userId:%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_4d} :catch_66

    .line 489
    :goto_4d
    if-nez v0, :cond_53

    .line 490
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 492
    :cond_53
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 486
    :catch_58
    move-exception v0

    .line 487
    :goto_59
    const-string v2, "SysUtils"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getUserId exception: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_4d

    .line 486
    :catch_66
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_59

    :cond_6b
    move-object v0, v1

    goto :goto_4d
.end method

.method private static p()Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v2, ""

    .line 143
    :try_start_3
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    .line 144
    :cond_7
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 145
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 146
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v5

    .line 147
    if-eqz v5, :cond_7

    array-length v1, v5

    if-eqz v1, :cond_7

    .line 150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    array-length v7, v5

    move v1, v3

    :goto_23
    if-ge v1, v7, :cond_3d

    aget-byte v8, v5, v1

    .line 152
    const-string v9, "%02x:"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 154
    :cond_3d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4c

    .line 155
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 157
    :cond_4c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string v5, "wlan0"

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_59} :catch_60

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    .line 167
    :goto_5d
    return-object v0

    :cond_5e
    move-object v0, v2

    .line 166
    goto :goto_5d

    .line 164
    :catch_60
    move-exception v0

    .line 165
    const-string v1, "SysUtils"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getMacAboveAndroidM exception: "

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v2

    goto :goto_5d
.end method

.method private static q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 353
    const-string v0, "ro.miui.cust_variant"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static r()Ljava/lang/String;
    .registers 2

    .prologue
    .line 358
    const-string v0, "ro.miui.region"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static s()Z
    .registers 2

    .prologue
    .line 385
    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static t()J
    .registers 3

    .prologue
    .line 407
    const-string v0, "/proc/meminfo"

    .line 409
    :try_start_2
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v2, 0x800

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 411
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 412
    const-string v2, "MemTotal:"

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 412
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 414
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 415
    const-string v0, "\\D+"

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_30

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xa

    shl-long/2addr v0, v2

    .line 419
    :goto_2f
    return-wide v0

    .line 416
    :catch_30
    move-exception v0

    .line 417
    const-string v1, "SysUtils"

    const-string v2, "getTotalRAM Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    const-wide/16 v0, 0x0

    goto :goto_2f
.end method

.method private static u()J
    .registers 8

    .prologue
    const-wide/16 v6, 0x1

    const-wide/32 v4, 0x40000000

    .line 428
    :try_start_5
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 429
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 431
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    .line 433
    mul-long/2addr v0, v2

    .line 435
    const-wide v2, 0x200000000L

    cmp-long v2, v0, v2

    if-ltz v2, :cond_32

    .line 436
    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    add-long/2addr v0, v6

    mul-long/2addr v0, v4

    const/4 v2, 0x3

    shl-long/2addr v0, v2

    .line 444
    :goto_31
    return-wide v0

    .line 438
    :cond_32
    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_39

    add-long/2addr v0, v6

    mul-long/2addr v0, v4

    goto :goto_31

    .line 441
    :catch_39
    move-exception v0

    .line 442
    const-string v1, "SysUtils"

    const-string v2, "getTotalROM Exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    const-wide/16 v0, 0x0

    goto :goto_31
.end method
