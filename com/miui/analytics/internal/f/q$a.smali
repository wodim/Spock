.class final Lcom/miui/analytics/internal/f/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/f/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private synthetic a:Lcom/miui/analytics/internal/f/q;


# direct methods
.method private constructor <init>(Lcom/miui/analytics/internal/f/q;)V
    .registers 2

    .prologue
    .line 90
    iput-object p1, p0, Lcom/miui/analytics/internal/f/q$a;->a:Lcom/miui/analytics/internal/f/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/analytics/internal/f/q;B)V
    .registers 3

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/miui/analytics/internal/f/q$a;-><init>(Lcom/miui/analytics/internal/f/q;)V

    return-void
.end method


# virtual methods
.method public final onLocationChanged(Landroid/location/Location;)V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q$a;->a:Lcom/miui/analytics/internal/f/q;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/q;->a(Lcom/miui/analytics/internal/f/q;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 97
    :goto_8
    return-void

    .line 96
    :cond_9
    iget-object v0, p0, Lcom/miui/analytics/internal/f/q$a;->a:Lcom/miui/analytics/internal/f/q;

    invoke-static {v0, p1}, Lcom/miui/analytics/internal/f/q;->a(Lcom/miui/analytics/internal/f/q;Landroid/location/Location;)V

    goto :goto_8
.end method

.method public final onProviderDisabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 109
    return-void
.end method

.method public final onProviderEnabled(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 105
    return-void
.end method

.method public final onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 101
    return-void
.end method
