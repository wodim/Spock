.class public Lcom/miui/analytics/internal/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "LogEventCreator"

.field private static final b:Ljava/lang/String; = "v"

.field private static final c:Ljava/lang/String; = "sessionId"

.field private static final d:Ljava/lang/String; = "appId"

.field private static final e:Ljava/lang/String; = "configKey"

.field private static final f:Ljava/lang/String; = "content"

.field private static final g:Ljava/lang/String; = "eventTime"

.field private static final h:Ljava/lang/String; = "logType"

.field private static final i:Ljava/lang/String; = "extra"


# instance fields
.field private j:D


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(D)V
    .registers 4

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iput-wide p1, p0, Lcom/miui/analytics/internal/i;->j:D

    .line 1011
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/analytics/internal/h;
    .registers 5

    .prologue
    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 26
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 27
    invoke-static {p0, v0}, Lcom/miui/analytics/internal/i;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/miui/analytics/internal/h;

    move-result-object v0

    .line 34
    :goto_12
    return-object v0

    .line 29
    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should not be reached."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1b

    .line 31
    :catch_1b
    move-exception v0

    .line 32
    const-string v1, "LogEventCreator"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "createFromJson e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private static a(Landroid/content/Context;Lorg/json/JSONObject;)Lcom/miui/analytics/internal/h;
    .registers 8

    .prologue
    .line 39
    :try_start_0
    const-string v0, "configKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 41
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    const-string v0, "logType"

    sget-object v4, Lcom/miui/analytics/internal/h$a;->a:Lcom/miui/analytics/internal/h$a;

    invoke-virtual {v4}, Lcom/miui/analytics/internal/h$a;->a()I

    move-result v4

    invoke-virtual {p1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/miui/analytics/internal/h$a;->a(I)Lcom/miui/analytics/internal/h$a;

    move-result-object v0

    .line 44
    sget-object v4, Lcom/miui/analytics/internal/h$a;->b:Lcom/miui/analytics/internal/h$a;

    if-ne v0, v4, :cond_4d

    .line 45
    new-instance v0, Lcom/miui/analytics/internal/a;

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/miui/analytics/internal/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "extra"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/a;->b(Ljava/lang/String;)V

    .line 51
    :goto_34
    const-string v1, "sessionId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/h;->a(Ljava/lang/String;)V

    .line 52
    const-string v1, "eventTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 53
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4c

    .line 54
    invoke-virtual {v0, v2, v3}, Lcom/miui/analytics/internal/h;->a(J)V

    .line 60
    :cond_4c
    :goto_4c
    return-object v0

    .line 49
    :cond_4d
    new-instance v0, Lcom/miui/analytics/internal/h;

    invoke-direct {v0, p0, v2, v1, v3}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    goto :goto_34

    .line 57
    :catch_53
    move-exception v0

    .line 58
    const-string v1, "LogEventCreator"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fromJsonV1 e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v0, 0x0

    goto :goto_4c
.end method


# virtual methods
.method public a()Z
    .registers 5

    .prologue
    .line 1014
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    .line 1015
    float-to-double v0, v0

    iget-wide v2, p0, Lcom/miui/analytics/internal/i;->j:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_16

    .line 1016
    const/4 v0, 0x1

    .line 1018
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method
