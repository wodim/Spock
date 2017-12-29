.class final Lcom/miui/analytics/internal/a/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/a/e;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/a/e;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/a/e;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/miui/analytics/internal/a/e$2;->a:Lcom/miui/analytics/internal/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 146
    :try_start_0
    const-string v0, "UU"

    const-string v1, "enter saveInstallationList"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e$2;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/e;->d(Lcom/miui/analytics/internal/a/e;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/aa;->a(J)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-boolean v0, Lcom/miui/analytics/internal/a/e;->a:Z

    if-eqz v0, :cond_4c

    .line 148
    :cond_17
    iget-object v0, p0, Lcom/miui/analytics/internal/a/e$2;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/e;->e(Lcom/miui/analytics/internal/a/e;)Lorg/json/JSONArray;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/miui/analytics/internal/a/e$2;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v1}, Lcom/miui/analytics/internal/a/e;->f(Lcom/miui/analytics/internal/a/e;)Lcom/miui/analytics/internal/f/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/f/h;->a(Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/miui/analytics/internal/a/e$2;->a:Lcom/miui/analytics/internal/a/e;

    invoke-static {v1}, Lcom/miui/analytics/internal/a/e;->g(Lcom/miui/analytics/internal/a/e;)V

    .line 152
    const-string v1, "UU"

    const-string v2, "time: %s, installed: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_4b
    return-void

    .line 154
    :cond_4c
    const-string v0, "UU"

    const-string v1, "installation saved today, skip"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_53} :catch_54

    goto :goto_4b

    .line 156
    :catch_54
    move-exception v0

    .line 157
    const-string v1, "UU"

    const-string v2, "saveInstallationList task exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4b
.end method
