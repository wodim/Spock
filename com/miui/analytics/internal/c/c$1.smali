.class final Lcom/miui/analytics/internal/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/c/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/c/c;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/c/c;)V
    .registers 2

    .prologue
    .line 63
    iput-object p1, p0, Lcom/miui/analytics/internal/c/c$1;->a:Lcom/miui/analytics/internal/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 10

    .prologue
    .line 67
    :try_start_0
    new-instance v2, Lcom/miui/analytics/internal/f/u;

    iget-object v0, p0, Lcom/miui/analytics/internal/c/c$1;->a:Lcom/miui/analytics/internal/c/c;

    invoke-static {v0}, Lcom/miui/analytics/internal/c/c;->a(Lcom/miui/analytics/internal/c/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ReporterService"

    invoke-direct {v2, v0, v1}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v2}, Lcom/miui/analytics/internal/f/u;->b()Ljava/util/Map;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    .line 70
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 72
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 74
    iget-object v4, p0, Lcom/miui/analytics/internal/c/c$1;->a:Lcom/miui/analytics/internal/c/c;

    invoke-static {v4}, Lcom/miui/analytics/internal/c/c;->b(Lcom/miui/analytics/internal/c/c;)Lcom/miui/analytics/internal/b/c;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/miui/analytics/internal/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_21

    .line 100
    :catch_49
    move-exception v0

    .line 101
    const-string v1, "ReporterService"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "init e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 103
    :cond_55
    return-void

    .line 77
    :cond_56
    :try_start_56
    invoke-virtual {v2}, Lcom/miui/analytics/internal/f/u;->c()V

    .line 78
    iget-object v0, p0, Lcom/miui/analytics/internal/c/c$1;->a:Lcom/miui/analytics/internal/c/c;

    invoke-static {v0}, Lcom/miui/analytics/internal/c/c;->a(Lcom/miui/analytics/internal/c/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ReporterService"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    :cond_64
    iget-object v0, p0, Lcom/miui/analytics/internal/c/c$1;->a:Lcom/miui/analytics/internal/c/c;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/c/c;->a(Lcom/miui/analytics/internal/c/c;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v0, p0, Lcom/miui/analytics/internal/c/c$1;->a:Lcom/miui/analytics/internal/c/c;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/c/c;->a(Lcom/miui/analytics/internal/c/c;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 82
    iget-object v0, p0, Lcom/miui/analytics/internal/c/c$1;->a:Lcom/miui/analytics/internal/c/c;

    invoke-static {v0}, Lcom/miui/analytics/internal/c/c;->b(Lcom/miui/analytics/internal/c/c;)Lcom/miui/analytics/internal/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/c;->a()Ljava/util/List;

    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_94
    :goto_94
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 85
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 86
    if-eqz v1, :cond_de

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b2

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 88
    :cond_b2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 90
    invoke-virtual {v5, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 91
    iget-object v6, p0, Lcom/miui/analytics/internal/c/c$1;->a:Lcom/miui/analytics/internal/c/c;

    invoke-static {v6}, Lcom/miui/analytics/internal/c/c;->b(Lcom/miui/analytics/internal/c/c;)Lcom/miui/analytics/internal/b/c;

    move-result-object v6

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 92
    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 93
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    .line 94
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v6, v0, v1}, Lcom/miui/analytics/internal/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_94

    .line 96
    :cond_de
    iget-object v1, p0, Lcom/miui/analytics/internal/c/c$1;->a:Lcom/miui/analytics/internal/c/c;

    invoke-static {v1}, Lcom/miui/analytics/internal/c/c;->b(Lcom/miui/analytics/internal/c/c;)Lcom/miui/analytics/internal/b/c;

    move-result-object v5

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_e8} :catch_49

    .line 1132
    const/4 v1, 0x0

    .line 1134
    :try_start_e9
    invoke-virtual {v5}, Lcom/miui/analytics/internal/b/c;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1135
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1136
    const-string v5, "reportServiceDB"

    const-string v6, "_id = ? "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1137
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_e9 .. :try_end_100} :catch_106
    .catchall {:try_start_e9 .. :try_end_100} :catchall_119

    .line 1141
    if-eqz v1, :cond_94

    .line 1142
    :try_start_102
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_105} :catch_49

    goto :goto_94

    .line 1138
    :catch_106
    move-exception v0

    .line 1139
    :try_start_107
    const-string v5, "ReportServiceDB"

    invoke-static {v5}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "delete e"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_112
    .catchall {:try_start_107 .. :try_end_112} :catchall_119

    .line 1141
    if-eqz v1, :cond_94

    .line 1142
    :try_start_114
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_94

    .line 1141
    :catchall_119
    move-exception v0

    if-eqz v1, :cond_11f

    .line 1142
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_11f
    throw v0
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_120} :catch_49
.end method
