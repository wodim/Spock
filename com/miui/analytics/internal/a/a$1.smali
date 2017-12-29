.class final Lcom/miui/analytics/internal/a/a$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 70
    const-string v0, "com.baidu.input_mi"

    const-string v1, "c2b0b497d0389e6de1505e7fd8f4d539"

    invoke-virtual {p0, v0, v1}, Lcom/miui/analytics/internal/a/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "com.example.analyticsdemo"

    const-string v1, "443477abb7aebcc8ca41230297fd5c9c"

    invoke-virtual {p0, v0, v1}, Lcom/miui/analytics/internal/a/a$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method
