.class public Lcom/miui/analytics/internal/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/h$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/String;

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v2, p0, Lcom/miui/analytics/internal/h;->b:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->e:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->h:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/analytics/internal/h;->j:I

    .line 24
    iput-wide v2, p0, Lcom/miui/analytics/internal/h;->k:J

    .line 25
    iput-object v1, p0, Lcom/miui/analytics/internal/h;->a:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/analytics/internal/h;->f:J

    .line 81
    iput-object p2, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    .line 82
    iput-object p4, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/miui/analytics/internal/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->h:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/miui/analytics/internal/f/e;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/f/e;

    invoke-static {p2, p3}, Lcom/miui/analytics/internal/f/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 86
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/a/f$a;->a(Landroid/content/Context;Ljava/lang/Boolean;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_79

    .line 88
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/analytics/internal/h;->k:J

    .line 90
    :cond_79
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 91
    iget-wide v0, p0, Lcom/miui/analytics/internal/h;->k:J

    iget-object v2, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/analytics/internal/h;->k:J

    .line 93
    :cond_8e
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v2, p0, Lcom/miui/analytics/internal/h;->b:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->e:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->h:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/analytics/internal/h;->j:I

    .line 24
    iput-wide v2, p0, Lcom/miui/analytics/internal/h;->k:J

    .line 25
    iput-object v1, p0, Lcom/miui/analytics/internal/h;->a:Ljava/lang/String;

    .line 51
    const-string v0, "analytics.db"

    invoke-direct {p0, p1, v0}, Lcom/miui/analytics/internal/h;->a(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method private constructor <init>(Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 7

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide v2, p0, Lcom/miui/analytics/internal/h;->b:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->e:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->h:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/analytics/internal/h;->j:I

    .line 24
    iput-wide v2, p0, Lcom/miui/analytics/internal/h;->k:J

    .line 25
    iput-object v1, p0, Lcom/miui/analytics/internal/h;->a:Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/h;->a(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method private a(Landroid/database/Cursor;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "analytics.db"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 60
    :cond_e
    const-string v0, "config_key"

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/h;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    .line 61
    const-string v0, "_id"

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/h;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/analytics/internal/h;->b:J

    .line 62
    const-string v0, "event_time"

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/h;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/analytics/internal/h;->f:J

    .line 63
    const-string v0, "session_id"

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/h;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->e:Ljava/lang/String;

    .line 64
    const-string v0, "app_id"

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/h;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    .line 65
    const-string v0, "body"

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/h;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    .line 66
    const-string v0, "sn"

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/h;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->h:Ljava/lang/String;

    .line 67
    const-string v0, "header"

    invoke-static {p1, v0}, Lcom/miui/analytics/internal/h;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    .line 68
    const-string v0, "send_count"

    .line 1104
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1105
    if-ltz v0, :cond_8a

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_8a

    .line 1106
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 68
    :goto_60
    iput v0, p0, Lcom/miui/analytics/internal/h;->j:I

    .line 69
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 70
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/miui/analytics/internal/h;->k:J

    .line 72
    :cond_74
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    .line 73
    iget-wide v0, p0, Lcom/miui/analytics/internal/h;->k:J

    iget-object v2, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/miui/analytics/internal/h;->k:J

    .line 76
    :cond_89
    return-void

    .line 1108
    :cond_8a
    const/4 v0, 0x0

    goto :goto_60
.end method

.method private static b(Landroid/database/Cursor;Ljava/lang/String;)J
    .registers 4

    .prologue
    .line 96
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 97
    if-ltz v0, :cond_11

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 98
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 100
    :goto_10
    return-wide v0

    :cond_11
    const-wide/16 v0, 0x0

    goto :goto_10
.end method

.method private b(J)V
    .registers 4

    .prologue
    .line 172
    iput-wide p1, p0, Lcom/miui/analytics/internal/h;->b:J

    .line 173
    return-void
.end method

.method private static c(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 104
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 105
    if-ltz v0, :cond_11

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 106
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 108
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 160
    iput-object p1, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    .line 161
    return-void
.end method

.method private static d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 112
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 113
    if-ltz v0, :cond_11

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 114
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 116
    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 180
    iput-object p1, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    .line 181
    return-void
.end method

.method private l()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private n()Z
    .registers 2

    .prologue
    .line 192
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 144
    iput-wide p1, p0, Lcom/miui/analytics/internal/h;->f:J

    .line 145
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/miui/analytics/internal/h;->e:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/analytics/internal/h;->a:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .registers 3

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/miui/analytics/internal/h;->f:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final g()J
    .registers 3

    .prologue
    .line 168
    iget-wide v0, p0, Lcom/miui/analytics/internal/h;->b:J

    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/analytics/internal/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i()I
    .registers 2

    .prologue
    .line 184
    iget v0, p0, Lcom/miui/analytics/internal/h;->j:I

    return v0
.end method

.method public final j()V
    .registers 2

    .prologue
    .line 188
    iget v0, p0, Lcom/miui/analytics/internal/h;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/analytics/internal/h;->j:I

    .line 189
    return-void
.end method

.method public final k()J
    .registers 3

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/miui/analytics/internal/h;->k:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "configKey = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/analytics/internal/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sessionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/h;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", logSN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/h;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/miui/analytics/internal/h;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSendCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/miui/analytics/internal/h;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
