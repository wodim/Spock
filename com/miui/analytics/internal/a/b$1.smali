.class final Lcom/miui/analytics/internal/a/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/a/b;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/a/b;)V
    .registers 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    .prologue
    .line 95
    invoke-static {}, Lcom/miui/analytics/internal/a/b;->b()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 97
    :try_start_5
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->a(Lcom/miui/analytics/internal/a/b;)Lcom/miui/analytics/internal/f/u;

    move-result-object v0

    const-string v1, "last_aaid"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 98
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->b(Lcom/miui/analytics/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/f/l;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 99
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->a(Lcom/miui/analytics/internal/a/b;)Lcom/miui/analytics/internal/f/u;

    move-result-object v0

    const-string v1, "device_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->b(Lcom/miui/analytics/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 101
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->a(Lcom/miui/analytics/internal/a/b;)Lcom/miui/analytics/internal/f/u;

    move-result-object v0

    const-string v1, "imei_list"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 102
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->b(Lcom/miui/analytics/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 103
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->a(Lcom/miui/analytics/internal/a/b;)Lcom/miui/analytics/internal/f/u;

    move-result-object v0

    const-string v1, "meid_list"

    const-string v6, ""

    invoke-virtual {v0, v1, v6}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->b(Lcom/miui/analytics/internal/a/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/f/f;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 109
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->a(Lcom/miui/analytics/internal/a/b;)Lcom/miui/analytics/internal/f/u;

    move-result-object v0

    const-string v1, "last_aaid_upload_time"

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v1, v10, v11}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;J)J

    move-result-wide v10

    .line 111
    iget-object v1, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static/range {v1 .. v11}, Lcom/miui/analytics/internal/a/b;->a(Lcom/miui/analytics/internal/a/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_84

    .line 112
    const-string v0, "aaid"

    const-string v1, "does not meet the upload requirements, return"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_82} :catch_19e
    .catchall {:try_start_5 .. :try_end_82} :catchall_173

    .line 113
    :try_start_82
    monitor-exit v12
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_173

    .line 155
    :goto_83
    return-void

    .line 116
    :cond_84
    :try_start_84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    const-string v1, "curr_aaid"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v1, "last_aaid"

    invoke-virtual {v0, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    const-string v1, "d"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string v1, "i"

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v1, "m"

    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v1, "f"

    const/4 v10, 0x1

    invoke-virtual {v0, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v1, "aaid"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "upload content:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v10, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v10}, Lcom/miui/analytics/internal/a/b;->b(Lcom/miui/analytics/internal/a/b;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "com.miui.spock"

    const-string v13, "spock_aaid"

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v10, v11, v13, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/miui/analytics/internal/e/c;

    iget-object v10, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v10}, Lcom/miui/analytics/internal/a/b;->b(Lcom/miui/analytics/internal/a/b;)Landroid/content/Context;

    move-result-object v10

    invoke-direct {v1, v10, v0}, Lcom/miui/analytics/internal/e/c;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v1}, Lcom/miui/analytics/internal/e/c;->a()Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_176

    .line 135
    const-string v0, "aaid"

    const-string v1, "upload new AAID successfully, last: %s, current: %s,last deviceId:%s,current deviceId%s,last imei list:%s,current imei list:%s,last meid list:%s,current meid list:%s"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v9, 0x1

    aput-object v8, v10, v9

    const/4 v9, 0x2

    aput-object v3, v10, v9

    const/4 v3, 0x3

    aput-object v2, v10, v3

    const/4 v3, 0x4

    aput-object v5, v10, v3

    const/4 v3, 0x5

    aput-object v4, v10, v3

    const/4 v3, 0x6

    aput-object v7, v10, v3

    const/4 v3, 0x7

    aput-object v6, v10, v3

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->a(Lcom/miui/analytics/internal/a/b;)Lcom/miui/analytics/internal/f/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/f/u;->a()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_aaid_upload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v0, v1, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_aaid"

    .line 138
    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "device_id"

    .line 139
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "imei_list"

    .line 140
    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "meid_list"

    .line 141
    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 143
    invoke-static {}, Lcom/miui/analytics/internal/f/l;->a()Z

    invoke-static {}, Lcom/miui/analytics/Analytics;->getVersionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1.36.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_170

    .line 144
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->a(Lcom/miui/analytics/internal/a/b;)Lcom/miui/analytics/internal/f/u;

    move-result-object v0

    const-string v1, "force_upload_completed_flag"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/miui/analytics/internal/f/u;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_170

    .line 145
    iget-object v0, p0, Lcom/miui/analytics/internal/a/b$1;->a:Lcom/miui/analytics/internal/a/b;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/b;->a(Lcom/miui/analytics/internal/a/b;)Lcom/miui/analytics/internal/f/u;

    move-result-object v0

    const-string v1, "force_upload_completed_flag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/miui/analytics/internal/f/u;->a(Ljava/lang/String;Z)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_170} :catch_19e
    .catchall {:try_start_84 .. :try_end_170} :catchall_173

    .line 155
    :cond_170
    :goto_170
    :try_start_170
    monitor-exit v12

    goto/16 :goto_83

    :catchall_173
    move-exception v0

    monitor-exit v12
    :try_end_175
    .catchall {:try_start_170 .. :try_end_175} :catchall_173

    throw v0

    .line 150
    :cond_176
    :try_start_176
    const-string v0, "aaid"

    const-string v1, "upload new AAID failed, last: %s, current: %s,last deviceId:%s,current deviceId%s,last imei list:%s,current imei list:%s,last meid list:%s,current meid list:%s"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v9, 0x1

    aput-object v8, v10, v9

    const/4 v8, 0x2

    aput-object v3, v10, v8

    const/4 v3, 0x3

    aput-object v2, v10, v3

    const/4 v2, 0x4

    aput-object v5, v10, v2

    const/4 v2, 0x5

    aput-object v4, v10, v2

    const/4 v2, 0x6

    aput-object v7, v10, v2

    const/4 v2, 0x7

    aput-object v6, v10, v2

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_19d} :catch_19e
    .catchall {:try_start_176 .. :try_end_19d} :catchall_173

    goto :goto_170

    :catch_19e
    move-exception v0

    goto :goto_170
.end method
