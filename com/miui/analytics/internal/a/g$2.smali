.class final Lcom/miui/analytics/internal/a/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/a/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/a/g;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/a/g;)V
    .registers 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/miui/analytics/internal/a/g$2;->a:Lcom/miui/analytics/internal/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 162
    :try_start_0
    const-string v0, "UUV2"

    const-string v1, "enter saveInstallationList"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/miui/analytics/internal/a/g$2;->a:Lcom/miui/analytics/internal/a/g;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/g;->d(Lcom/miui/analytics/internal/a/g;)Lorg/json/JSONArray;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g$2;->a:Lcom/miui/analytics/internal/a/g;

    invoke-static {v1}, Lcom/miui/analytics/internal/a/g;->e(Lcom/miui/analytics/internal/a/g;)Lcom/miui/analytics/internal/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/analytics/internal/a/f;->a(Ljava/lang/String;)Z

    .line 166
    iget-object v1, p0, Lcom/miui/analytics/internal/a/g$2;->a:Lcom/miui/analytics/internal/a/g;

    invoke-static {v1}, Lcom/miui/analytics/internal/a/g;->f(Lcom/miui/analytics/internal/a/g;)V

    .line 167
    const-string v1, "UUV2"

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
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 171
    :goto_3b
    return-void

    .line 168
    :catch_3c
    move-exception v0

    .line 169
    const-string v1, "UUV2"

    const-string v2, "saveInstallationList task exception: "

    invoke-static {v1, v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3b
.end method
