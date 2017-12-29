.class public final Lcom/miui/analytics/internal/d/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AppPolicy"

.field private static b:Ljava/lang/String; = "polling_interval"

.field private static c:Ljava/lang/String; = "discard_policy"

.field private static d:Ljava/lang/String; = "discard_threshold"

.field private static e:Ljava/lang/String; = "upload_trigger_policy"

.field private static f:Ljava/lang/String; = "join_policy"

.field private static g:Ljava/lang/String; = "upload_pipeline"

.field private static h:Ljava/lang/String; = "disable_headers"

.field private static i:Ljava/lang/String; = "startup"

.field private static j:Ljava/lang/String; = "time"

.field private static k:Ljava/lang/String; = "log_count"

.field private static l:Ljava/lang/String; = "log_size"

.field private static m:Ljava/lang/String; = "time"

.field private static n:Ljava/lang/String; = "count"

.field private static o:Ljava/lang/String; = "size"

.field private static p:Ljava/lang/String; = "time"

.field private static q:Ljava/lang/String; = "level"

.field private static r:Ljava/lang/String; = "size"

.field private static s:Ljava/lang/String; = "time_level_size"

.field private static t:Ljava/lang/String; = "time_iter"

.field private static u:Ljava/lang/String; = "v"

.field private static v:Ljava/lang/String; = "ext_v"


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/n;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/miui/analytics/internal/d/e;

.field private D:Z

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:I

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d;->w:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/d;->x:Ljava/util/List;

    .line 56
    const v0, 0x927c0

    iput v0, p0, Lcom/miui/analytics/internal/d;->y:I

    .line 58
    iput-object v1, p0, Lcom/miui/analytics/internal/d;->z:Ljava/util/List;

    .line 59
    iput-object v1, p0, Lcom/miui/analytics/internal/d;->A:Ljava/util/List;

    .line 60
    iput-object v1, p0, Lcom/miui/analytics/internal/d;->B:Ljava/util/List;

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/analytics/internal/d;->D:Z

    .line 67
    :try_start_20
    invoke-super {p0, p1}, Lcom/miui/analytics/internal/d;->a(Lorg/json/JSONObject;)V

    .line 68
    invoke-super {p0, p1}, Lcom/miui/analytics/internal/d;->b(Lorg/json/JSONObject;)V

    .line 69
    invoke-super {p0, p1}, Lcom/miui/analytics/internal/d;->c(Lorg/json/JSONObject;)V

    .line 70
    invoke-super {p0, p1}, Lcom/miui/analytics/internal/d;->d(Lorg/json/JSONObject;)V

    .line 71
    invoke-super {p0, p1}, Lcom/miui/analytics/internal/d;->e(Lorg/json/JSONObject;)V

    .line 72
    invoke-super {p0, p1}, Lcom/miui/analytics/internal/d;->f(Lorg/json/JSONObject;)V

    .line 73
    invoke-super {p0, p1}, Lcom/miui/analytics/internal/d;->h(Lorg/json/JSONObject;)V

    .line 74
    invoke-super {p0, p1}, Lcom/miui/analytics/internal/d;->g(Lorg/json/JSONObject;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_38} :catch_39

    .line 78
    :goto_38
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 75
    :catch_39
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    .line 82
    :try_start_0
    const-string v0, "polling_interval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/miui/analytics/internal/d;->y:I

    .line 84
    const-string v0, "AppPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "polling time is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/miui/analytics/internal/d;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 88
    :goto_2a
    return-void

    .line 85
    :catch_2b
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    const-string v0, "discard_threshold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 94
    if-eqz v2, :cond_6f

    .line 95
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_70

    .line 96
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 97
    const-string v4, "v"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    const-string v5, "log_count"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 99
    const-string v4, "ext_v"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 100
    new-instance v4, Lcom/miui/analytics/internal/d/a/h;

    invoke-direct {v4, v3}, Lcom/miui/analytics/internal/d/a/h;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v4, "AppPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "discard count  is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_4c
    :goto_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 102
    :cond_4f
    const-string v5, "log_size"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 103
    new-instance v4, Lcom/miui/analytics/internal/d/a/j;

    const-string v5, "ext_v"

    .line 104
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    invoke-direct {v4, v6, v7}, Lcom/miui/analytics/internal/d/a/j;-><init>(J)V

    .line 103
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6b

    goto :goto_4c

    .line 109
    :catch_6b
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 112
    :cond_6f
    :goto_6f
    return-void

    .line 107
    :cond_70
    :try_start_70
    iput-object v1, p0, Lcom/miui/analytics/internal/d;->A:Ljava/util/List;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_72} :catch_6b

    goto :goto_6f
.end method

.method private c(Lorg/json/JSONObject;)V
    .registers 12

    .prologue
    .line 116
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const-string v0, "discard_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 118
    if-eqz v8, :cond_7e

    .line 119
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_7f

    .line 120
    invoke-virtual {v8, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 121
    const-string v2, "v"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string v3, "time_level_size"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 123
    new-instance v6, Lorg/json/JSONObject;

    const-string v2, "ext_v"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 124
    const-string v1, "AppPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "discard policy "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/miui/analytics/internal/d/a/a;

    const-string v2, "time"

    .line 126
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const-string v4, "size"

    .line 127
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    const-string v9, "level"

    .line 128
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/miui/analytics/internal/d/a/a;-><init>(JDI)V

    .line 125
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_66
    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 129
    :cond_69
    const-string v1, "time_iter"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 130
    new-instance v1, Lcom/miui/analytics/internal/d/a/c;

    invoke-direct {v1}, Lcom/miui/analytics/internal/d/a/c;-><init>()V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_79} :catch_7a

    goto :goto_66

    .line 135
    :catch_7a
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    :cond_7e
    :goto_7e
    return-void

    .line 133
    :cond_7f
    :try_start_7f
    iput-object v7, p0, Lcom/miui/analytics/internal/d;->B:Ljava/util/List;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_81} :catch_7a

    goto :goto_7e
.end method

.method private d(Lorg/json/JSONObject;)V
    .registers 10

    .prologue
    .line 143
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 144
    const-string v0, "upload_trigger_policy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 145
    if-eqz v2, :cond_5b

    .line 146
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_79

    .line 147
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 148
    const-string v4, "v"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    const-string v5, "count"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 150
    new-instance v4, Lcom/miui/analytics/internal/d/a/h;

    const-string v5, "ext_v"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v4, v3}, Lcom/miui/analytics/internal/d/a/h;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 151
    :cond_3b
    const-string v5, "size"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 152
    new-instance v4, Lcom/miui/analytics/internal/d/a/j;

    const-string v5, "ext_v"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v6, v3

    invoke-direct {v4, v6, v7}, Lcom/miui/analytics/internal/d/a/j;-><init>(J)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_38

    .line 159
    :catch_57
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :cond_5b
    :goto_5b
    return-void

    .line 153
    :cond_5c
    :try_start_5c
    const-string v5, "time"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 154
    new-instance v4, Lcom/miui/analytics/internal/d/a/i;

    const-string v5, "ext_v"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    invoke-direct {v4, v3}, Lcom/miui/analytics/internal/d/a/i;-><init>(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_38

    .line 157
    :cond_79
    iput-object v1, p0, Lcom/miui/analytics/internal/d;->z:Ljava/util/List;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_7b} :catch_57

    goto :goto_5b
.end method

.method private e(Lorg/json/JSONObject;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 166
    :try_start_1
    const-string v1, "join_policy"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 169
    if-eqz v3, :cond_4a

    move v2, v0

    move v1, v0

    .line 170
    :goto_b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_43

    .line 171
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 172
    const-string v5, "v"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    const-string v6, "count"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 174
    const-string v1, "ext_v"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 170
    :cond_2d
    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 175
    :cond_30
    const-string v6, "size"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 176
    const-string v0, "ext_v"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_2d

    .line 179
    :cond_43
    new-instance v2, Lcom/miui/analytics/internal/d/e;

    invoke-direct {v2, v1, v0}, Lcom/miui/analytics/internal/d/e;-><init>(II)V

    iput-object v2, p0, Lcom/miui/analytics/internal/d;->C:Lcom/miui/analytics/internal/d/e;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4a} :catch_4b

    .line 184
    :cond_4a
    :goto_4a
    return-void

    .line 181
    :catch_4b
    move-exception v0

    .line 182
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a
.end method

.method private f(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/d;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 189
    const-string v0, "upload_pipeline"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 190
    if-eqz v1, :cond_38

    .line 191
    const/4 v0, 0x0

    :goto_e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_38

    .line 192
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 193
    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 195
    iget-object v3, p0, Lcom/miui/analytics/internal/d;->w:Ljava/util/List;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_31} :catch_34

    .line 191
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 199
    :catch_34
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    :cond_38
    return-void
.end method

.method private g(Lorg/json/JSONObject;)V
    .registers 7

    .prologue
    .line 206
    :try_start_0
    const-string v0, "disable_headers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 207
    if-eqz v1, :cond_40

    .line 208
    const/4 v0, 0x0

    :goto_9
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_40

    .line 209
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 210
    if-eqz v2, :cond_2f

    .line 211
    const-string v3, "v"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 212
    iget-object v3, p0, Lcom/miui/analytics/internal/d;->x:Ljava/util/List;

    const-string v4, "v"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_2c
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 215
    :cond_2f
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 217
    iget-object v3, p0, Lcom/miui/analytics/internal/d;->x:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_2c

    .line 224
    :catch_3f
    move-exception v0

    :cond_40
    return-void
.end method

.method private h(Lorg/json/JSONObject;)V
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 229
    :try_start_1
    const-string v1, "startup"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_1e

    .line 231
    const-string v2, "v"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 236
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_25

    :goto_1b
    iput-boolean v0, p0, Lcom/miui/analytics/internal/d;->D:Z

    .line 241
    :cond_1d
    :goto_1d
    return-void

    .line 233
    :cond_1e
    const-string v1, "startup"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_23} :catch_27

    move-result-object v1

    goto :goto_f

    .line 236
    :cond_25
    const/4 v0, 0x0

    goto :goto_1b

    .line 238
    :catch_27
    move-exception v0

    .line 239
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/analytics/internal/d;->x:Ljava/util/List;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 244
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 245
    iget-object v0, p0, Lcom/miui/analytics/internal/d;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 246
    const/4 v0, 0x1

    .line 249
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public final b()Lcom/miui/analytics/internal/d/e;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/miui/analytics/internal/d;->C:Lcom/miui/analytics/internal/d/e;

    return-object v0
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 261
    iget v0, p0, Lcom/miui/analytics/internal/d;->y:I

    return v0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    iget-object v0, p0, Lcom/miui/analytics/internal/d;->A:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/miui/analytics/internal/d;->z:Ljava/util/List;

    return-object v0
.end method

.method public final f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/analytics/internal/d;->B:Ljava/util/List;

    return-object v0
.end method

.method public final g()Z
    .registers 3

    .prologue
    .line 277
    const-string v0, "zip"

    .line 278
    iget-object v1, p0, Lcom/miui/analytics/internal/d;->w:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 279
    const/4 v0, 0x1

    .line 281
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final h()Z
    .registers 2

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/miui/analytics/internal/d;->D:Z

    return v0
.end method
