.class public final Lcom/miui/analytics/internal/d/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/d/i$a;
    }
.end annotation


# static fields
.field private static b:Ljava/lang/String; = "key_detail"

.field private static c:Ljava/lang/String; = "key_policy"

.field private static d:Ljava/lang/String; = "config_key"

.field private static e:Ljava/lang/String; = "app_policy"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field a:Lcom/miui/analytics/internal/d;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/analytics/internal/d/f;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/miui/analytics/internal/d/i$a;


# direct methods
.method public constructor <init>(Lcom/miui/analytics/internal/d/i$a;)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/i;->f:Ljava/util/HashMap;

    .line 23
    new-instance v0, Lcom/miui/analytics/internal/d/i$a;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/i$a;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/i;->g:Lcom/miui/analytics/internal/d/i$a;

    .line 29
    if-eqz p1, :cond_21

    :try_start_13
    iget-object v0, p1, Lcom/miui/analytics/internal/d/i$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_21

    .line 30
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/miui/analytics/internal/d/i$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/d/i;->a(Lorg/json/JSONObject;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_21} :catch_22

    .line 35
    :cond_21
    :goto_21
    return-void

    .line 32
    :catch_22
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/i;->f:Ljava/util/HashMap;

    .line 23
    new-instance v0, Lcom/miui/analytics/internal/d/i$a;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/i$a;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/i;->g:Lcom/miui/analytics/internal/d/i$a;

    .line 38
    invoke-direct {p0, p1}, Lcom/miui/analytics/internal/d/i;->a(Lorg/json/JSONObject;)V

    .line 39
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    .line 43
    if-nez p1, :cond_3

    .line 64
    :goto_2
    return-void

    .line 46
    :cond_3
    :try_start_3
    const-string v0, "app_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_12

    .line 48
    new-instance v1, Lcom/miui/analytics/internal/d;

    invoke-direct {v1, v0}, Lcom/miui/analytics/internal/d;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/miui/analytics/internal/d/i;->a:Lcom/miui/analytics/internal/d;

    .line 50
    :cond_12
    const-string v0, "key_detail"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_40

    .line 52
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 53
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_3d

    .line 55
    iget-object v3, p0, Lcom/miui/analytics/internal/d/i;->f:Ljava/util/HashMap;

    const-string v4, "config_key"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/miui/analytics/internal/d/f;

    const-string v6, "key_policy"

    .line 56
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/miui/analytics/internal/d/f;-><init>(Lorg/json/JSONObject;)V

    .line 55
    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 60
    :cond_40
    iget-object v0, p0, Lcom/miui/analytics/internal/d/i;->g:Lcom/miui/analytics/internal/d/i$a;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/analytics/internal/d/i$a;->a:Ljava/lang/String;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_48} :catch_49

    goto :goto_2

    .line 61
    :catch_49
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/f;
    .registers 4

    .prologue
    .line 78
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 79
    iget-object v0, p0, Lcom/miui/analytics/internal/d/i;->f:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/d/f;

    .line 81
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public final a(Ljava/lang/String;)Lcom/miui/analytics/internal/d/f;
    .registers 3

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 72
    iget-object v0, p0, Lcom/miui/analytics/internal/d/i;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/d/f;

    .line 74
    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public final a()Ljava/io/Serializable;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/miui/analytics/internal/d/i;->g:Lcom/miui/analytics/internal/d/i$a;

    return-object v0
.end method
