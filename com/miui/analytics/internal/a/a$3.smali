.class final Lcom/miui/analytics/internal/a/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/a/a;->a(Ljava/lang/String;)V
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
    .line 176
    iput-object p1, p0, Lcom/miui/analytics/internal/a/a$3;->b:Lcom/miui/analytics/internal/a/a;

    iput-object p2, p0, Lcom/miui/analytics/internal/a/a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$3;->b:Lcom/miui/analytics/internal/a/a;

    iget-object v1, p0, Lcom/miui/analytics/internal/a/a$3;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/a/a;->a(Lcom/miui/analytics/internal/a/a;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 182
    const-string v1, "pkg"

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$3;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v1, "action"

    const-string v2, "Installed"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v1, "ex"

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$3;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v2}, Lcom/miui/analytics/internal/a/a;->c(Lcom/miui/analytics/internal/a/a;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/analytics/internal/a/a$3;->a:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 186
    iget-object v1, p0, Lcom/miui/analytics/internal/a/a$3;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v1}, Lcom/miui/analytics/internal/a/a;->a(Lcom/miui/analytics/internal/a/a;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$3;->a:Ljava/lang/String;

    const/16 v3, 0x4000

    invoke-static {v1, v2, v3}, Lcom/miui/analytics/internal/d/o;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 187
    iget-wide v2, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 188
    const-string v4, "fit"

    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v0, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 190
    const-wide/32 v4, 0x2bf20

    invoke-static {v2, v3, v4, v5}, Lcom/miui/analytics/internal/f/aa;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 191
    const-string v0, "AppenderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "installation expired, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_6a
    return-void

    .line 195
    :cond_6b
    new-instance v1, Lcom/miui/analytics/internal/h;

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$3;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v2}, Lcom/miui/analytics/internal/a/a;->a(Lcom/miui/analytics/internal/a/a;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.miui.spock"

    const-string v4, "spock_appstats"

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/miui/analytics/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$3;->b:Lcom/miui/analytics/internal/a/a;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/a;->a(Lcom/miui/analytics/internal/a/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/analytics/internal/k;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/k;->a(Lcom/miui/analytics/internal/h;)V

    .line 197
    const-string v0, "AppenderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "record install event, pkg: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/miui/analytics/internal/a/a$3;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a1} :catch_a2

    goto :goto_6a

    .line 198
    :catch_a2
    move-exception v0

    .line 199
    const-string v1, "AppenderManager"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "recordAppInstalledAction task exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6a
.end method
