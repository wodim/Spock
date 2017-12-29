.class public abstract Lcom/miui/analytics/internal/e/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String; = "Server"

.field private static final c:Ljava/lang/String; = "miui_sdkconfig_jafej!@#)(*e@!#"

.field private static d:Ljava/lang/String; = "ts"

.field private static e:Ljava/lang/String; = "nonce"

.field private static f:Ljava/lang/String; = "sign"


# instance fields
.field protected a:Ljava/lang/String;

.field private g:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/analytics/internal/e/l;->a:Ljava/lang/String;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/analytics/internal/e/l;->g:J

    .line 39
    return-void
.end method

.method private a(Lcom/miui/analytics/internal/e/d;)Lcom/miui/analytics/internal/e/i;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/analytics/internal/e/d;",
            ")",
            "Lcom/miui/analytics/internal/e/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/miui/analytics/internal/e/l;->a()Lcom/miui/analytics/internal/e/e;

    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/miui/analytics/internal/e/d;->a(Lcom/miui/analytics/internal/e/e;)Lcom/miui/analytics/internal/e/f;

    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/miui/analytics/internal/e/l;->a(Lcom/miui/analytics/internal/e/f;)Lcom/miui/analytics/internal/e/i;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    .line 111
    if-eqz v0, :cond_13

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_13

    .line 112
    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_38

    .line 114
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_38
    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 119
    :cond_3c
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 120
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/NameValuePair;

    invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_43

    .line 124
    :cond_6e
    const-string v0, "miui_sdkconfig_jafej!@#)(*e@!#"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/miui/analytics/internal/e/l;->a:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public static b(Lcom/miui/analytics/internal/e/f;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 69
    if-eqz p0, :cond_2d

    .line 70
    invoke-virtual {p0}, Lcom/miui/analytics/internal/e/f;->a()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 71
    if-eqz v1, :cond_26

    .line 72
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 73
    const-string v1, "Server"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server response string="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_25
    return-object v0

    .line 76
    :cond_26
    const-string v0, "Server"

    const-string v1, "no response"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_2d
    const/4 v0, 0x0

    goto :goto_25
.end method

.method protected static d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    .line 89
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2f} :catch_31

    move-result-object v0

    .line 92
    :goto_30
    return-object v0

    :catch_31
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30
.end method

.method private e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/analytics/internal/e/l;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract a()Lcom/miui/analytics/internal/e/e;
.end method

.method public abstract a(Lcom/miui/analytics/internal/e/f;)Lcom/miui/analytics/internal/e/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/analytics/internal/e/f;",
            ")",
            "Lcom/miui/analytics/internal/e/i",
            "<TT;>;"
        }
    .end annotation
.end method

.method protected final a([Lorg/apache/http/NameValuePair;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    const/4 v0, 0x0

    :goto_6
    const/4 v2, 0x3

    if-ge v0, v2, :cond_11

    .line 99
    aget-object v2, p1, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 102
    :cond_11
    invoke-static {v1}, Lcom/miui/analytics/internal/e/l;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lcom/miui/analytics/internal/e/i;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/miui/analytics/internal/e/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/miui/analytics/internal/e/g;

    invoke-direct {v0}, Lcom/miui/analytics/internal/e/g;-><init>()V

    .line 1054
    invoke-virtual {p0}, Lcom/miui/analytics/internal/e/l;->a()Lcom/miui/analytics/internal/e/e;

    move-result-object v1

    .line 1055
    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/e/d;->a(Lcom/miui/analytics/internal/e/e;)Lcom/miui/analytics/internal/e/f;

    move-result-object v0

    .line 1056
    invoke-virtual {p0, v0}, Lcom/miui/analytics/internal/e/l;->a(Lcom/miui/analytics/internal/e/f;)Lcom/miui/analytics/internal/e/i;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method protected final c()J
    .registers 3

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/miui/analytics/internal/e/l;->g:J

    return-wide v0
.end method
