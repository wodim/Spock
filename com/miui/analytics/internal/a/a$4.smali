.class final Lcom/miui/analytics/internal/a/a$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/a/a;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/miui/analytics/internal/a/a;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/a/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 218
    iput-object p1, p0, Lcom/miui/analytics/internal/a/a$4;->b:Lcom/miui/analytics/internal/a/a;

    iput-object p2, p0, Lcom/miui/analytics/internal/a/a$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 222
    const-wide/16 v2, 0x2710

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 223
    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$4;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v2}, Lcom/miui/analytics/internal/a/a;->a(Lcom/miui/analytics/internal/a/a;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/analytics/internal/a/a$4;->a:Ljava/lang/String;

    .line 1091
    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1092
    if-eqz v2, :cond_33

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_33

    .line 223
    :goto_1a
    if-eqz v0, :cond_35

    .line 224
    const-string v0, "AppenderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "package upgrading, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_32
    return-void

    :cond_33
    move v0, v1

    .line 1092
    goto :goto_1a

    .line 227
    :cond_35
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$4;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/a;->c(Lcom/miui/analytics/internal/a/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/a/a$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 228
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$4;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/a;->c(Lcom/miui/analytics/internal/a/a;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/a/a$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_4e
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$4;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/a;->b(Lcom/miui/analytics/internal/a/a;)Lcom/miui/analytics/internal/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$4;->a:Ljava/lang/String;
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_56} :catch_d8

    .line 1132
    const/4 v1, 0x0

    .line 1134
    :try_start_57
    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1135
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1136
    const-string v0, "appenderManager"

    const-string v3, "_package_name = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v1, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1137
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_6e} :catch_e6
    .catchall {:try_start_57 .. :try_end_6e} :catchall_f9

    .line 1141
    if-eqz v1, :cond_73

    .line 1142
    :try_start_70
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 231
    :cond_73
    :goto_73
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 232
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$4;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v1, "action"

    const-string v2, "Uninstalled"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v1, "ex"

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$4;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v2}, Lcom/miui/analytics/internal/a/a;->c(Lcom/miui/analytics/internal/a/a;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/analytics/internal/a/a$4;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 236
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$4;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v2}, Lcom/miui/analytics/internal/a/a;->a(Lcom/miui/analytics/internal/a/a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.miui.spock"

    const-string v4, "spock_appstats"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$4;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/a;->a(Lcom/miui/analytics/internal/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 238
    const-string v0, "AppenderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "record uninstall event, pkg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$4;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_d6} :catch_d8

    goto/16 :goto_32

    .line 240
    :catch_d8
    move-exception v0

    .line 241
    const-string v1, "AppenderManager"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recordAppUninstalledAction exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 1138
    :catch_e6
    move-exception v0

    .line 1139
    :try_start_e7
    const-string v2, "AppenderManagerDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "delete e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f2
    .catchall {:try_start_e7 .. :try_end_f2} :catchall_f9

    .line 1141
    if-eqz v1, :cond_73

    .line 1142
    :try_start_f4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_73

    .line 1141
    :catchall_f9
    move-exception v0

    if-eqz v1, :cond_ff

    .line 1142
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_ff
    throw v0
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_100} :catch_d8
.end method
