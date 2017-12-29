.class public Lcom/miui/analytics/internal/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "KeyPolicy"

.field private static b:Ljava/lang/String; = "privacy_policy"

.field private static c:Ljava/lang/String; = "upload_url"

.field private static d:Ljava/lang/String; = "upload_url_use_https"

.field private static e:Ljava/lang/String; = "sample_rate"

.field private static f:Ljava/lang/String; = "log_level"

.field private static g:Ljava/lang/String; = "upload_policy"

.field private static h:Ljava/lang/String; = "network"

.field private static i:Ljava/lang/String; = "local_config"

.field private static j:Ljava/lang/String; = "wifi"

.field private static k:Ljava/lang/String; = "no"

.field private static l:Ljava/lang/String; = "v"

.field private static m:Ljava/lang/String; = "ext_v"


# instance fields
.field private n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:D

.field private r:Lcom/miui/analytics/internal/d/k;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/analytics/internal/d/f;->n:I

    .line 38
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/miui/analytics/internal/d/f;->q:D

    .line 40
    iput-object v2, p0, Lcom/miui/analytics/internal/d/f;->r:Lcom/miui/analytics/internal/d/k;

    .line 41
    iput-object v2, p0, Lcom/miui/analytics/internal/d/f;->s:Ljava/lang/String;

    .line 42
    iput-object v2, p0, Lcom/miui/analytics/internal/d/f;->t:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->u:Ljava/util/ArrayList;

    .line 49
    if-nez p1, :cond_1b

    .line 62
    :goto_1a
    return-void

    .line 1104
    :cond_1b
    :try_start_1b
    const-string v0, "privacy_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1105
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 1107
    new-instance v0, Lcom/miui/analytics/internal/d/a/d;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->r:Lcom/miui/analytics/internal/d/k;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_36} :catch_a5

    .line 53
    :goto_36
    :try_start_36
    invoke-direct {p0, p1}, Lcom/miui/analytics/internal/d/f;->b(Lorg/json/JSONObject;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_8f

    .line 1144
    :try_start_39
    const-string v0, "sample_rate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/analytics/internal/d/f;->q:D
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_45} :catch_b2

    .line 1153
    :goto_45
    :try_start_45
    const-string v0, "log_level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1154
    if-eqz v0, :cond_59

    .line 1155
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/analytics/internal/d/f;->n:I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_59} :catch_bf

    .line 1165
    :cond_59
    :goto_59
    :try_start_59
    const-string v0, "upload_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1166
    if-eqz v0, :cond_69

    .line 1167
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->o:Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_69} :catch_cc

    .line 1177
    :cond_69
    :goto_69
    :try_start_69
    const-string v0, "network"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_79

    .line 1179
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->p:Ljava/lang/String;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_79} :catch_d9

    .line 2136
    :cond_79
    :goto_79
    :try_start_79
    const-string v0, "local_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->t:Ljava/lang/String;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_81} :catch_82

    goto :goto_1a

    .line 2137
    :catch_82
    move-exception v0

    .line 2138
    :try_start_83
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseLocalConfig exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8e} :catch_8f

    goto :goto_1a

    .line 59
    :catch_8f
    move-exception v0

    .line 60
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyPolicy exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1a

    .line 1109
    :cond_9d
    :try_start_9d
    new-instance v0, Lcom/miui/analytics/internal/d/a/k;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/a/k;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->r:Lcom/miui/analytics/internal/d/k;
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a4} :catch_a5

    goto :goto_36

    .line 1111
    :catch_a5
    move-exception v0

    .line 1112
    :try_start_a6
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parsePrivacyPolicy exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 1146
    :catch_b2
    move-exception v0

    .line 1147
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseSampleRate exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 1158
    :catch_bf
    move-exception v0

    .line 1159
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseLogLevel exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_59

    .line 1170
    :catch_cc
    move-exception v0

    .line 1171
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseUploadPolicy exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_69

    .line 1182
    :catch_d9
    move-exception v0

    .line 1183
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseNetworkPolicy exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_a6 .. :try_end_e5} :catch_8f

    goto :goto_79
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 3031
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3034
    :goto_8
    return-object p0

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8
.end method

.method public static a(Ljava/io/File;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3022
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3023
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3024
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 104
    :try_start_0
    const-string v0, "privacy_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 105
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 107
    new-instance v0, Lcom/miui/analytics/internal/d/a/d;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/a/d;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->r:Lcom/miui/analytics/internal/d/k;

    .line 114
    :goto_1b
    return-void

    .line 109
    :cond_1c
    new-instance v0, Lcom/miui/analytics/internal/d/a/k;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/a/k;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->r:Lcom/miui/analytics/internal/d/k;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_1b

    .line 111
    :catch_24
    move-exception v0

    .line 112
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parsePrivacyPolicy exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method private static b(Ljava/io/File;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3011
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3012
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3013
    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 118
    :try_start_0
    const-string v0, "upload_url"

    const-string v1, "https://tracking.intl.miui.com/track/spock"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->s:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/miui/analytics/internal/d/f;->u:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 120
    const-string v0, "upload_url_use_https"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 121
    if-eqz v1, :cond_4a

    .line 122
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_4a

    .line 123
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 124
    if-eqz v2, :cond_3b

    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 125
    iget-object v3, p0, Lcom/miui/analytics/internal/d/f;->u:Ljava/util/ArrayList;

    const-string v4, "v"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3e

    .line 122
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 129
    :catch_3e
    move-exception v0

    .line 130
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseTrackingServer exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_4a
    return-void
.end method

.method private static c(Ljava/io/File;)V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 3016
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3017
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 3018
    invoke-virtual {p0, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 3019
    return-void
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 136
    :try_start_0
    const-string v0, "local_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->t:Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 140
    :goto_8
    return-void

    .line 137
    :catch_9
    move-exception v0

    .line 138
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseLocalConfig exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method private static d(Ljava/io/File;)V
    .registers 3

    .prologue
    .line 3027
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 3028
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 144
    :try_start_0
    const-string v0, "sample_rate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/analytics/internal/d/f;->q:D
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    .line 149
    :goto_c
    return-void

    .line 146
    :catch_d
    move-exception v0

    .line 147
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseSampleRate exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 153
    :try_start_0
    const-string v0, "log_level"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_14

    .line 155
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/analytics/internal/d/f;->n:I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 161
    :cond_14
    :goto_14
    return-void

    .line 158
    :catch_15
    move-exception v0

    .line 159
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseLogLevel exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14
.end method

.method public static e()Z
    .registers 1

    .prologue
    .line 98
    const/4 v0, 0x1

    return v0
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 165
    :try_start_0
    const-string v0, "upload_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_10

    .line 167
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->o:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 173
    :cond_10
    :goto_10
    return-void

    .line 170
    :catch_11
    move-exception v0

    .line 171
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseUploadPolicy exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 177
    :try_start_0
    const-string v0, "network"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_10

    .line 179
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/d/f;->p:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 185
    :cond_10
    :goto_10
    return-void

    .line 182
    :catch_11
    move-exception v0

    .line 183
    const-string v1, "KeyPolicy"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "parseNetworkPolicy exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/miui/analytics/internal/d/f;->n:I

    return v0
.end method

.method public final b()D
    .registers 3

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/miui/analytics/internal/d/f;->q:D

    return-wide v0
.end method

.method public final c()Lcom/miui/analytics/internal/d/k;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/miui/analytics/internal/d/f;->r:Lcom/miui/analytics/internal/d/k;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/analytics/internal/d/f;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Z
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/analytics/internal/d/f;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/miui/analytics/internal/d/f;->p:Ljava/lang/String;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/analytics/internal/d/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/miui/analytics/internal/d/f;->t:Ljava/lang/String;

    return-object v0
.end method
