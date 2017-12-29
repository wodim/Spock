.class public final enum Lcom/miui/analytics/internal/h$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/analytics/internal/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/analytics/internal/h$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/miui/analytics/internal/h$a;

.field public static final enum b:Lcom/miui/analytics/internal/h$a;

.field private static final synthetic d:[Lcom/miui/analytics/internal/h$a;


# instance fields
.field private c:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/miui/analytics/internal/h$a;

    const-string v1, "TYPE_EVENT"

    invoke-direct {v0, v1, v2, v2}, Lcom/miui/analytics/internal/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/analytics/internal/h$a;->a:Lcom/miui/analytics/internal/h$a;

    new-instance v0, Lcom/miui/analytics/internal/h$a;

    const-string v1, "TYPE_AD"

    invoke-direct {v0, v1, v3, v3}, Lcom/miui/analytics/internal/h$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/miui/analytics/internal/h$a;->b:Lcom/miui/analytics/internal/h$a;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/miui/analytics/internal/h$a;

    sget-object v1, Lcom/miui/analytics/internal/h$a;->a:Lcom/miui/analytics/internal/h$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/analytics/internal/h$a;->b:Lcom/miui/analytics/internal/h$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/analytics/internal/h$a;->d:[Lcom/miui/analytics/internal/h$a;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/analytics/internal/h$a;->c:I

    .line 33
    iput p3, p0, Lcom/miui/analytics/internal/h$a;->c:I

    .line 34
    return-void
.end method

.method public static a(I)Lcom/miui/analytics/internal/h$a;
    .registers 2

    .prologue
    .line 37
    packed-switch p0, :pswitch_data_a

    .line 41
    sget-object v0, Lcom/miui/analytics/internal/h$a;->a:Lcom/miui/analytics/internal/h$a;

    :goto_5
    return-object v0

    .line 39
    :pswitch_6
    sget-object v0, Lcom/miui/analytics/internal/h$a;->b:Lcom/miui/analytics/internal/h$a;

    goto :goto_5

    .line 37
    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method private static a(Ljava/lang/String;)Lcom/miui/analytics/internal/h$a;
    .registers 2

    .prologue
    .line 27
    const-class v0, Lcom/miui/analytics/internal/h$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h$a;

    return-object v0
.end method

.method private static b()[Lcom/miui/analytics/internal/h$a;
    .registers 1

    .prologue
    .line 27
    sget-object v0, Lcom/miui/analytics/internal/h$a;->d:[Lcom/miui/analytics/internal/h$a;

    invoke-virtual {v0}, [Lcom/miui/analytics/internal/h$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/analytics/internal/h$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/miui/analytics/internal/h$a;->c:I

    return v0
.end method
