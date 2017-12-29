.class public final Lcom/miui/analytics/internal/f/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .prologue
    .line 6
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method
