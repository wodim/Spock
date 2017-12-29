.class public final Lcom/miui/analytics/internal/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AES"

.field private static final b:Ljava/lang/String; = "AES/ECB/PKCS5Padding"

.field private static final c:Ljava/lang/String; = "AES"

.field private static d:Ljavax/crypto/KeyGenerator;

.field private static e:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 19
    :try_start_0
    const-string v0, "AES"

    invoke-static {v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 20
    sput-object v0, Lcom/miui/analytics/internal/f/a;->d:Ljavax/crypto/KeyGenerator;

    const/16 v1, 0x80

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@15
    nop

    .line 21
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 25
    :goto_12
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 22
    :catch_13
    move-exception v0

    .line 23
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@19
    nop

    goto :goto_12
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([B)Ljava/lang/String;
    .registers 7

    .prologue
    .line 77
    if-nez p0, :cond_5

    .line 78
    const-string v0, ""

    .line 88
    :goto_4
    return-object v0

    .line 80
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    array-length v3, p0

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_35

    aget-byte v0, p0, v1

    .line 82
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    :goto_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2e

    .line 84
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 86
    :cond_2e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    .line 88
    :cond_35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method

.method private static a(Ljava/lang/String;)[B
    .registers 2

    .prologue
    .line 55
    if-eqz p0, :cond_7

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 58
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    .prologue
    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/miui/analytics/internal/f/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 30
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 31
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 32
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 33
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 34
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 38
    :goto_1f
    return-object v0

    .line 35
    :catch_20
    move-exception v0

    .line 36
    const-string v1, "AES"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "encrypt exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method private static a([BLjava/lang/String;)[B
    .registers 5

    .prologue
    .line 43
    :try_start_0
    invoke-static {p1}, Lcom/miui/analytics/internal/f/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 44
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v2, "AES"

    invoke-direct {v1, v0, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 45
    const-string v0, "AES/ECB/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 46
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 47
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 51
    :goto_19
    return-object v0

    .line 48
    :catch_1a
    move-exception v0

    .line 49
    const-string v1, "AES"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "decrypt exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    .prologue
    .line 92
    invoke-static {p0, p1}, Lcom/miui/analytics/internal/f/a;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 1077
    if-nez v2, :cond_9

    .line 1078
    const-string v0, ""

    :goto_8
    return-object v0

    .line 1080
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1081
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    if-ge v1, v4, :cond_39

    aget-byte v0, v2, v1

    .line 1082
    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1083
    :goto_1b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_32

    .line 1084
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1b

    .line 1086
    :cond_32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1081
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    .line 1088
    :cond_39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method private static b(Ljava/lang/String;)[B
    .registers 7

    .prologue
    const/16 v5, 0x10

    .line 62
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_c

    .line 63
    :cond_a
    const/4 v0, 0x0

    .line 72
    :goto_b
    return-object v0

    .line 65
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 66
    const/4 v0, 0x0

    :goto_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_44

    .line 67
    shl-int/lit8 v2, v0, 0x1

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 68
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 70
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_44
    move-object v0, v1

    .line 72
    goto :goto_b
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .prologue
    const/16 v5, 0x10

    .line 96
    .line 2062
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_15

    .line 2063
    :cond_a
    const/4 v0, 0x0

    .line 96
    :goto_b
    invoke-static {v0, p1}, Lcom/miui/analytics/internal/f/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 97
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    .line 2065
    :cond_15
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    .line 2066
    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_4d

    .line 2067
    shl-int/lit8 v2, v0, 0x1

    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 2068
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    shl-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 2070
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 2066
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_4d
    move-object v0, v1

    .line 2072
    goto :goto_b
.end method
