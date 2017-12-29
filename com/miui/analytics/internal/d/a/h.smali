.class public Lcom/miui/analytics/internal/d/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/analytics/internal/d/n;


# static fields
.field private static A:Ljava/lang/String; = "mctt"

.field private static B:Ljava/lang/String; = "mcfd"

.field private static C:Ljava/lang/String; = "last_aaid"

.field private static D:Ljava/lang/String; = "device_id"

.field private static E:Ljava/lang/String; = "imei_list"

.field private static F:Ljava/lang/String; = "meid_list"

.field private static G:Ljava/lang/String; = "last_aaid_upload_time"

.field private static H:Ljava/lang/String; = "force_upload_completed_flag"

.field private static I:Ljava/lang/String; = "wcd"

.field private static J:Ljava/lang/String; = "wcs"

.field private static K:Ljava/lang/String; = "wct"

.field private static L:Ljava/lang/String; = "luat"

.field private static M:Ljava/lang/String; = "imei"

.field private static N:Ljava/lang/String; = "mac"

.field private static O:Ljava/lang/String; = "stable_imei"

.field private static P:Ljava/lang/String; = "updateTime"

.field private static Q:Ljava/lang/String; = "time"

.field private static R:Ljava/lang/String; = "version"

.field private static S:Ljava/lang/String; = "screen_off_ts"

.field private static T:Ljava/lang/String; = "state"

.field private static final a:Ljava/lang/String; = "TriggerByCount"

.field private static c:Ljava/lang/String; = "appender"

.field private static d:Ljava/lang/String; = "ddm"

.field private static e:Ljava/lang/String; = "ReporterService"

.field private static f:Ljava/lang/String; = "co"

.field private static g:Ljava/lang/String; = "analyticsapp"

.field private static h:Ljava/lang/String; = "updater"

.field private static i:Ljava/lang/String; = "music"

.field private static j:Ljava/lang/String; = "heartbeat"

.field private static k:Ljava/lang/String; = "_m_rec"

.field private static l:Ljava/lang/String; = "aaid"

.field private static m:Ljava/lang/String; = "sluuds"

.field private static n:Ljava/lang/String; = "lrilt"

.field private static o:Ljava/lang/String; = "sluut"

.field private static p:Ljava/lang/String; = "luut"

.field private static q:Ljava/lang/String; = "luust"

.field private static r:Ljava/lang/String; = "sluudsv2"

.field private static s:Ljava/lang/String; = "lriltv2"

.field private static t:Ljava/lang/String; = "sluutv2"

.field private static u:Ljava/lang/String; = "luutv2"

.field private static v:Ljava/lang/String; = "luustv2"

.field private static w:Ljava/lang/String; = "cmilrt"

.field private static x:Ljava/lang/String; = "fmlrt"

.field private static y:Ljava/lang/String; = "mlmt"

.field private static z:Ljava/lang/String; = "mlut"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/miui/analytics/internal/d/a/h;->b:I

    .line 15
    return-void
.end method


# virtual methods
.method public final a(Lcom/miui/analytics/internal/b/d;)Z
    .registers 6

    .prologue
    .line 19
    const-string v0, "TriggerByCount"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "check trigger , threshold = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/miui/analytics/internal/d/a/h;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    if-eqz p1, :cond_23

    invoke-interface {p1}, Lcom/miui/analytics/internal/b/d;->a()J

    move-result-wide v0

    iget v2, p0, Lcom/miui/analytics/internal/d/a/h;->b:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 21
    :cond_23
    const/4 v0, 0x1

    .line 23
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method
