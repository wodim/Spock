.class public final Lcom/xiaomi/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "CertUtils"

.field private static b:Ljava/lang/String; = "701478a1e3b4b7e3978ea69469410f13"

.field private static c:Ljava/lang/String; = "443477abb7aebcc8ca41230297fd5c9c"

.field private static d:Ljava/lang/String; = "8ddb342f2da5408402d7568af21e29f9"

.field private static e:Ljava/lang/String; = "c2b0b497d0389e6de1505e7fd8f4d539"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 63
    invoke-static {p0, p1}, Lcom/miui/analytics/internal/d/o;->e(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    .line 1067
    const-string v1, "701478a1e3b4b7e3978ea69469410f13"

    invoke-static {v0, v1}, Lcom/xiaomi/a/a/a/a;->a([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    .line 63
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/miui/analytics/internal/d/o;->e(Landroid/content/Context;Ljava/lang/String;)[Landroid/content/pm/Signature;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/xiaomi/a/a/a/a;->a([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static a([Landroid/content/pm/Signature;)Z
    .registers 2

    .prologue
    .line 67
    const-string v0, "701478a1e3b4b7e3978ea69469410f13"

    invoke-static {p0, v0}, Lcom/xiaomi/a/a/a/a;->a([Landroid/content/pm/Signature;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static a([Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 51
    const-string v2, "CertUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "sigs: "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_3c

    move v0, v1

    :goto_d
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "CertUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sigMd5String: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-eqz p0, :cond_3b

    array-length v0, p0

    if-lez v0, :cond_3b

    aget-object v0, p0, v1

    if-eqz v0, :cond_3b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 59
    :cond_3b
    :goto_3b
    return v1

    .line 51
    :cond_3c
    array-length v0, p0

    goto :goto_d

    .line 57
    :cond_3e
    const-string v0, "CertUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sigs bytes: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/analytics/internal/d/a/a;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "CertUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sigs md5: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lcom/miui/analytics/internal/f/ad;->a([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    aget-object v0, p0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_3b
.end method
