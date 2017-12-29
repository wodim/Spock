.class public final Lcom/miui/analytics/internal/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/e/e$b;,
        Lcom/miui/analytics/internal/e/e$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcom/miui/analytics/internal/e/e$b;->b:I

    iput v0, p0, Lcom/miui/analytics/internal/e/e;->a:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/e/e;->c:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/e/e;->d:Ljava/util/List;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget v0, Lcom/miui/analytics/internal/e/e$b;->b:I

    iput v0, p0, Lcom/miui/analytics/internal/e/e;->a:I

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/e/e;->c:Ljava/util/List;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/e/e;->d:Ljava/util/List;

    .line 27
    iput-object p1, p0, Lcom/miui/analytics/internal/e/e;->b:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/miui/analytics/internal/e/e;I)I
    .registers 2

    .prologue
    .line 15
    iput p1, p0, Lcom/miui/analytics/internal/e/e;->a:I

    return p1
.end method

.method static synthetic a(Lcom/miui/analytics/internal/e/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 15
    iput-object p1, p0, Lcom/miui/analytics/internal/e/e;->b:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 35
    iput-object p1, p0, Lcom/miui/analytics/internal/e/e;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/miui/analytics/internal/e/e;->a:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 51
    iput p1, p0, Lcom/miui/analytics/internal/e/e;->a:I

    .line 52
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e;->c:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e;->c:Ljava/util/List;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e;->d:Ljava/util/List;

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 63
    iget v0, p0, Lcom/miui/analytics/internal/e/e;->a:I

    sget v1, Lcom/miui/analytics/internal/e/e$b;->b:I

    if-ne v0, v1, :cond_3d

    .line 64
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e;->c:Ljava/util/List;

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e;->b:Ljava/lang/String;

    .line 66
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_3c
    return-object v0

    :cond_3d
    iget-object v0, p0, Lcom/miui/analytics/internal/e/e;->b:Ljava/lang/String;

    goto :goto_3c
.end method
