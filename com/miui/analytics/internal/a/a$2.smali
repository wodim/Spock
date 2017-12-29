.class final Lcom/miui/analytics/internal/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/a/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/a/a;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/a/a;)V
    .registers 2

    .prologue
    .line 91
    iput-object p1, p0, Lcom/miui/analytics/internal/a/a$2;->a:Lcom/miui/analytics/internal/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    .line 95
    :try_start_0
    new-instance v2, Lcom/miui/analytics/internal/f/u;

    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$2;->a:Lcom/miui/analytics/internal/a/a;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/a;->a(Lcom/miui/analytics/internal/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "appender"

    invoke-direct {v2, v0, v1}, Lcom/miui/analytics/internal/f/u;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v2}, Lcom/miui/analytics/internal/f/u;->b()Ljava/util/Map;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_64

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_64

    .line 98
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

    .line 99
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 100
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 102
    iget-object v4, p0, Lcom/miui/analytics/internal/a/a$2;->a:Lcom/miui/analytics/internal/a/a;

    invoke-static {v4}, Lcom/miui/analytics/internal/a/a;->b(Lcom/miui/analytics/internal/a/a;)Lcom/miui/analytics/internal/b/b;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/miui/analytics/internal/b/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49

    goto :goto_21

    .line 116
    :catch_49
    move-exception v0

    .line 117
    const-string v1, "AppenderManager"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdatePackageExtraInfoMapping task exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 119
    :goto_55
    return-void

    .line 105
    :cond_56
    :try_start_56
    invoke-virtual {v2}, Lcom/miui/analytics/internal/f/u;->c()V

    .line 106
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$2;->a:Lcom/miui/analytics/internal/a/a;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/a;->a(Lcom/miui/analytics/internal/a/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "appender"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/u;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    :cond_64
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$2;->a:Lcom/miui/analytics/internal/a/a;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/a;->b(Lcom/miui/analytics/internal/a/a;)Lcom/miui/analytics/internal/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/analytics/internal/b/b;->a()Ljava/util/List;

    move-result-object v0

    .line 109
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_72
    :goto_72
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 110
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 112
    iget-object v3, p0, Lcom/miui/analytics/internal/a/a$2;->a:Lcom/miui/analytics/internal/a/a;

    invoke-static {v3}, Lcom/miui/analytics/internal/a/a;->c(Lcom/miui/analytics/internal/a/a;)Ljava/util/Map;

    move-result-object v3

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_72

    .line 115
    :cond_94
    iget-object v0, p0, Lcom/miui/analytics/internal/a/a$2;->a:Lcom/miui/analytics/internal/a/a;

    invoke-static {v0}, Lcom/miui/analytics/internal/a/a;->d(Lcom/miui/analytics/internal/a/a;)V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_99} :catch_49

    goto :goto_55
.end method
