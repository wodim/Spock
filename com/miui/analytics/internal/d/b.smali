.class public final Lcom/miui/analytics/internal/d/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "privacy_policy"

.field private static b:Ljava/lang/String; = "privacy_no"

.field private static c:Ljava/lang/String; = "privacy_user"

.field private static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/miui/analytics/internal/d/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/miui/analytics/internal/d/k;
    .registers 2

    .prologue
    .line 26
    sget-object v0, Lcom/miui/analytics/internal/d/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "privacy_policy"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 27
    sget-object v0, Lcom/miui/analytics/internal/d/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "privacy_policy"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 28
    const-string v1, "privacy_no"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 29
    new-instance v0, Lcom/miui/analytics/internal/d/a/d;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/a/d;-><init>()V

    .line 32
    :goto_21
    return-object v0

    :cond_22
    new-instance v0, Lcom/miui/analytics/internal/d/a/k;

    invoke-direct {v0}, Lcom/miui/analytics/internal/d/a/k;-><init>()V

    goto :goto_21
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 20
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    sget-object v0, Lcom/miui/analytics/internal/d/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :cond_b
    return-void
.end method
