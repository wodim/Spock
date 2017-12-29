.class public Lcom/miui/analytics/internal/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Dispatcher"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 2003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/miui/analytics/internal/e/c;->b:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    .line 31
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 163
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 164
    const-string p0, "null"

    .line 166
    :cond_8
    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 2007
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 2008
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 2009
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 2014
    :goto_29
    return-object v0

    .line 2011
    :catch_2a
    move-exception v0

    .line 2012
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p1

    .line 2014
    goto :goto_29
.end method

.method private a(Ljava/util/List;Z)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    iget-object v0, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    const-string v1, "Dispatcher"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/l;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, v3

    .line 93
    :goto_10
    return-object v0

    .line 77
    :cond_11
    invoke-direct {p0, p1}, Lcom/miui/analytics/internal/e/c;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v4

    .line 80
    :try_start_1b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_23
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-virtual {v4}, Lcom/miui/analytics/internal/d/j;->b()Lcom/miui/analytics/internal/d/e;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/miui/analytics/internal/d/e;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 82
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_41
    :goto_41
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v1, p2}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 84
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_5c} :catch_5d

    goto :goto_41

    .line 88
    :catch_5d
    move-exception v0

    .line 89
    const-string v1, "Dispatcher"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dispatch exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    :cond_69
    const-string v0, "Dispatcher"

    const-string v1, "dispatch end."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 93
    goto :goto_10
.end method

.method private a(Ljava/util/List;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 97
    const-string v0, "Dispatcher"

    const-string v1, "joinEvents start."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 99
    iget-object v0, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/analytics/internal/d/j;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/d/j;

    move-result-object v5

    .line 100
    const/4 v0, 0x0

    move v2, v0

    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_bf

    .line 101
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 102
    invoke-virtual {v5, v0}, Lcom/miui/analytics/internal/d/j;->e(Lcom/miui/analytics/internal/h;)Lcom/miui/analytics/internal/d/k;

    move-result-object v1

    .line 103
    iget-object v3, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/miui/analytics/internal/d/k;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 106
    invoke-virtual {v5, v0}, Lcom/miui/analytics/internal/d/j;->d(Lcom/miui/analytics/internal/h;)Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v5, v0}, Lcom/miui/analytics/internal/d/j;->c(Lcom/miui/analytics/internal/h;)Z

    move-result v1

    .line 1148
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c7

    .line 1149
    const-string v6, "http"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b4

    .line 1150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_b1

    const-string v1, "https://"

    :goto_4b
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    :goto_57
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1163
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 1164
    const-string v1, "null"

    .line 112
    :cond_65
    sget-boolean v3, Lcom/miui/analytics/internal/g;->a:Z

    if-eqz v3, :cond_81

    .line 113
    const-string v3, "://api.xiaomi.com/"

    const-string v6, "://test.xiaomi.com/"

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    const-string v3, "://api.ad.xiaomi.com/"

    const-string v6, "://test.ad.xiaomi.com/"

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v3, "://log.ad.xiaomi.com/"

    const-string v6, "://test.log.ad.xiaomi.com/"

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    :cond_81
    const-string v3, "Dispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "url : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_a3

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_a3
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_ac
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_14

    .line 1150
    :cond_b1
    const-string v1, "http://"

    goto :goto_4b

    .line 1152
    :cond_b4
    if-eqz v1, :cond_c7

    .line 1153
    const-string v1, "http://"

    const-string v6, "https://"

    invoke-virtual {v3, v1, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_57

    .line 123
    :cond_bf
    const-string v0, "Dispatcher"

    const-string v1, "joinEvents end."

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-object v4

    :cond_c7
    move-object v1, v3

    goto :goto_57
.end method

.method private a(Ljava/lang/String;Ljava/util/List;Z)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 128
    if-eqz p2, :cond_10

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1171
    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 128
    if-eqz v0, :cond_12

    .line 129
    :cond_10
    const/4 v0, 0x1

    .line 151
    :goto_11
    return v0

    .line 131
    :cond_12
    const-string v0, "Dispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendEvents "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v0, Lcom/miui/analytics/internal/e/n;

    iget-object v1, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/miui/analytics/internal/e/n;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 133
    invoke-virtual {v0, p3}, Lcom/miui/analytics/internal/e/n;->a(Z)V

    .line 134
    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/n;->b()Lcom/miui/analytics/internal/e/i;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_76

    .line 136
    invoke-virtual {v0}, Lcom/miui/analytics/internal/e/i;->a()Z

    move-result v1

    .line 137
    if-eqz v1, :cond_5a

    .line 138
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 139
    iget-object v3, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/analytics/internal/c/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/c/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/analytics/internal/c/c;->a(Lcom/miui/analytics/internal/h;)V

    goto :goto_44

    .line 145
    :cond_5a
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 146
    iget-object v3, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/analytics/internal/c/c;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/c/c;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/miui/analytics/internal/c/c;->b(Lcom/miui/analytics/internal/h;)V

    goto :goto_5e

    :cond_74
    move v0, v1

    .line 149
    goto :goto_11

    .line 151
    :cond_76
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 2

    .prologue
    .line 171
    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 2018
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/miui/analytics/internal/e/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 34
    const-string v1, "Dispatcher"

    const-string v2, "dispatch start."

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/analytics/internal/f/o;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 36
    const-string v0, "Dispatcher"

    const-string v1, "network not accessible, stop dispatch"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    :goto_1c
    return-object v0

    .line 40
    :cond_1d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    :try_start_2c
    iget-object v2, p0, Lcom/miui/analytics/internal/e/c;->b:Ljava/util/List;

    if-eqz v2, :cond_87

    .line 45
    const-string v2, "Dispatcher"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "eventCount: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/miui/analytics/internal/e/c;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 47
    :goto_4b
    iget-object v0, p0, Lcom/miui/analytics/internal/e/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_87

    .line 48
    iget-object v0, p0, Lcom/miui/analytics/internal/e/c;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 49
    iget-object v5, p0, Lcom/miui/analytics/internal/e/c;->c:Landroid/content/Context;

    invoke-static {v5}, Lcom/miui/analytics/internal/f/e;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/f/e;

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/miui/analytics/internal/f/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    .line 50
    if-eqz v5, :cond_75

    .line 51
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    :goto_71
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4b

    .line 53
    :cond_75
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_78} :catch_79

    goto :goto_71

    .line 64
    :catch_79
    move-exception v0

    .line 65
    const-string v2, "Dispatcher"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Fail to dispatch: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_85
    move-object v0, v1

    .line 67
    goto :goto_1c

    .line 57
    :cond_87
    :try_start_87
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_95

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v4, v0}, Lcom/miui/analytics/internal/e/c;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_95
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_a3

    .line 61
    const/4 v0, 0x1

    invoke-direct {p0, v3, v0}, Lcom/miui/analytics/internal/e/c;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 63
    :cond_a3
    const-string v0, "Dispatcher"

    const-string v2, "eventsOffCount: %d,eventsOnCount: %d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v5, v6

    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v4

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_c7} :catch_79

    goto :goto_85
.end method
