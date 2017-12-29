.class public Lcom/miui/analytics/internal/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static A:Ljava/lang/String; = "t"

.field private static B:Ljava/lang/String; = "miui_register_device"

.field private static C:Ljava/lang/String; = "miui_active_user"

.field private static D:Ljava/lang/String; = "[]"

.field private static E:I = 0x1

.field private static final F:Ljava/lang/String; = "DiscardPolicy"

.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String; = "0.0.0"

.field private static c:Ljava/lang/String; = "0.0.0"

.field private static d:Ljava/lang/String; = "com.miui.spock"

.field private static e:Ljava/lang/String; = "spock_appstats"

.field private static f:Ljava/lang/String; = "spock_active"

.field private static g:Ljava/lang/String; = "spock_usage"

.field private static h:Ljava/lang/String; = "spock_sequence"

.field private static i:Ljava/lang/String; = "spock_usagev2"

.field private static j:Ljava/lang/String; = "spock_sequencev2"

.field private static k:Ljava/lang/String; = "spock_monitor"

.field private static l:Ljava/lang/String; = "spock_aaid"

.field private static m:Ljava/lang/String; = "spock_bugreport"

.field private static n:Ljava/lang/String; = "spock_exception"

.field private static o:Ljava/lang/String; = "sa"

.field private static p:Ljava/lang/String; = "ea"

.field private static q:Ljava/lang/String; = "ss"

.field private static r:Ljava/lang/String; = "es"

.field private static s:Ljava/lang/String; = "sm"

.field private static t:Ljava/lang/String; = "em"

.field private static u:Ljava/lang/String; = "pkg"

.field private static v:Ljava/lang/String; = "vc"

.field private static w:Ljava/lang/String; = "vn"

.field private static x:Ljava/lang/String; = "es"

.field private static y:Ljava/lang/String; = "msg"

.field private static z:Ljava/lang/String; = "ds"


# instance fields
.field private G:Lcom/miui/analytics/internal/d/o;

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/analytics/internal/d/o;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/analytics/internal/d/o;",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/d/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/e;->H:Ljava/util/List;

    .line 1019
    iput-object p1, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    .line 1020
    if-eqz p2, :cond_13

    .line 1021
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->H:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1023
    :cond_13
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->H:Ljava/util/List;

    new-instance v1, Lcom/miui/analytics/internal/d/a/c;

    invoke-direct {v1}, Lcom/miui/analytics/internal/d/a/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    if-nez v0, :cond_5

    .line 1041
    :cond_4
    return-void

    .line 1030
    :cond_5
    invoke-static {p1}, Lcom/miui/analytics/internal/b/g;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/g;

    move-result-object v1

    .line 1031
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/d/o;->a(Lcom/miui/analytics/internal/b/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1032
    const-string v0, "DiscardPolicy"

    const-string v2, "discard is triggered."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->H:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/d/c;

    .line 1034
    iget-object v3, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    invoke-interface {v0, p1, v3}, Lcom/miui/analytics/internal/d/c;->a(Landroid/content/Context;Lcom/miui/analytics/internal/d/o;)V

    .line 1035
    iget-object v0, p0, Lcom/miui/analytics/internal/e;->G:Lcom/miui/analytics/internal/d/o;

    invoke-virtual {v0, v1}, Lcom/miui/analytics/internal/d/o;->a(Lcom/miui/analytics/internal/b/d;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1e
.end method
