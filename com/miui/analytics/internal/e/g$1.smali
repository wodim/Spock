.class final Lcom/miui/analytics/internal/e/g$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 41
    const-string v0, "tracking.intl.miui.com"

    invoke-virtual {p0, v0}, Lcom/miui/analytics/internal/e/g$1;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v0, "sdkconfig.ad.intl.xiaomi.com"

    invoke-virtual {p0, v0}, Lcom/miui/analytics/internal/e/g$1;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method
