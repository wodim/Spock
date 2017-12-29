.class public final Lcom/miui/analytics/internal/e/e$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/analytics/internal/e/e$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field private static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 105
    const/4 v0, 0x1

    sput v0, Lcom/miui/analytics/internal/e/e$b;->a:I

    .line 106
    sput v1, Lcom/miui/analytics/internal/e/e$b;->b:I

    .line 104
    new-array v0, v1, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/miui/analytics/internal/e/e$b;->c:[I

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :array_e
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a()[I
    .registers 1

    .prologue
    .line 104
    sget-object v0, Lcom/miui/analytics/internal/e/e$b;->c:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
