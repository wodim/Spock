.class public final Lcom/miui/analytics/internal/a;
.super Lcom/miui/analytics/internal/h;
.source "SourceFile"


# static fields
.field private static b:Ljava/lang/String; = "_ad_monitor_"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/miui/analytics/internal/h;-><init>(Landroid/database/Cursor;)V

    .line 22
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    if-eqz p0, :cond_21

    .line 38
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 39
    if-eqz v0, :cond_b

    instance-of v3, v0, Lcom/miui/analytics/internal/a;

    if-eqz v3, :cond_b

    .line 40
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 44
    :cond_21
    return-object v1
.end method

.method private static a([Lcom/miui/analytics/internal/h;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/miui/analytics/internal/h;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    if-eqz p0, :cond_19

    .line 50
    array-length v2, p0

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_19

    aget-object v3, p0, v0

    .line 51
    if-eqz v3, :cond_16

    instance-of v4, v3, Lcom/miui/analytics/internal/a;

    if-eqz v4, :cond_16

    .line 52
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 56
    :cond_19
    return-object v1
.end method

.method private l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/miui/analytics/internal/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v1, "_ad_monitor_"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    .line 32
    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    :cond_17
    const-string v0, ""

    goto :goto_15
.end method
