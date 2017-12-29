.class public final Lcom/miui/analytics/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AlarmClock"

.field private static final b:Ljava/lang/String; = "GMT+0"

.field private static final c:I = 0x0

.field private static final d:I = 0x1

.field private static final e:I = 0x2

.field private static final f:I = 0x3

.field private static final g:I = 0x4

.field private static final h:I = 0x5

.field private static final i:I = 0x7

.field private static final j:I = 0x8

.field private static final k:I = 0x9

.field private static final l:I = 0x384

.field private static final m:I = 0xa

.field private static final n:I = 0x3e8

.field private static final o:I = 0x17

.field private static final p:I = 0xb

.field private static final q:I = 0xc

.field private static final r:I = 0xd

.field private static final s:I = 0xea60


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(J)J
    .registers 6

    .prologue
    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, p0, v0

    if-lez v0, :cond_9

    .line 365
    :goto_8
    return-wide p0

    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long p0, v0, v2

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;)V
    .registers 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 111
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_81

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_81

    .line 112
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 113
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    const-string v2, "command"

    const-string v3, "usage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/4 v2, 0x3

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 119
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 120
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 121
    const/16 v3, 0xb

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 122
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v8}, Ljava/util/Calendar;->set(II)V

    .line 123
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/32 v6, 0x124f80

    rem-long/2addr v4, v6

    .line 124
    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    .line 125
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 127
    invoke-static {v2, v3}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v4

    invoke-virtual {v0, v8, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 128
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "set next day alarm"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_81
    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;I)Z
    .registers 4

    .prologue
    .line 358
    const/high16 v0, 0x20000000

    invoke-static {p0, p2, p1, v0}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private static a([I)[I
    .registers 6

    .prologue
    const/16 v4, 0x17

    const/4 v0, 0x0

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_29

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_29

    .line 136
    array-length v2, p0

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_1b

    aget v3, p0, v1

    .line 137
    if-ne v3, v4, :cond_18

    .line 138
    const/4 v0, 0x1

    .line 136
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 141
    :cond_1b
    if-nez v0, :cond_29

    .line 142
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    .line 143
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aput v4, p0, v0

    .line 146
    :cond_29
    return-object p0
.end method

.method public static b(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 221
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_31

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_31

    .line 222
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 223
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    const-string v2, "command"

    const-string v3, "usagev2"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const/16 v2, 0x3ff

    invoke-static {p0, v1, v2}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 227
    const-string v0, "AlarmClock"

    const-string v1, "setNextDayExactAlarmToUploadUsageV2, Exist alarm clock for usagev2, skip"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_31
    :goto_31
    return-void

    .line 230
    :cond_32
    const/16 v2, 0x3ff

    const/high16 v3, 0x10000000

    invoke-static {p0, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 232
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 233
    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 234
    const/16 v3, 0xb

    const/16 v4, 0x17

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 235
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 236
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/32 v6, 0x124f80

    rem-long/2addr v4, v6

    .line 237
    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    .line 238
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    .line 239
    const/4 v4, 0x0

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 240
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "setNextDayExactAlarmToUploadUsageV2 next day alarm"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_93} :catch_94

    goto :goto_31

    .line 242
    :catch_94
    move-exception v0

    .line 243
    const-string v1, "AlarmClock"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setNextDayExactAlarmToUploadUsageV2 e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_31
.end method

.method private static d(Landroid/content/Context;)V
    .registers 11

    .prologue
    const-wide/32 v6, 0x2932e00

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 48
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 49
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 50
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    rem-long/2addr v2, v6

    .line 51
    add-long/2addr v2, v6

    .line 52
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long v8, v4, v2

    .line 53
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 54
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v3, "command"

    const-string v4, "active"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const/high16 v3, 0x8000000

    invoke-static {p0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 57
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 58
    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1b77400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 59
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set alarm clock for active, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .registers 12

    .prologue
    const/16 v10, 0x13

    const/16 v8, 0xc

    const/16 v7, 0xb

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 63
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 64
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    const-string v3, "command"

    const-string v4, "usage"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v10, :cond_89

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-gt v3, v4, :cond_89

    .line 69
    const/high16 v3, 0x10000000

    invoke-static {p0, v5, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 77
    :goto_2e
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 80
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 82
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-gt v3, v4, :cond_aa

    .line 86
    const/16 v3, 0x17

    invoke-virtual {v2, v7, v3}, Ljava/util/Calendar;->set(II)V

    .line 87
    invoke-virtual {v2, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 88
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/32 v8, 0x124f80

    rem-long/2addr v4, v8

    .line 89
    const-wide/32 v8, 0x1b7740

    add-long/2addr v4, v8

    .line 90
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long v8, v2, v4

    .line 92
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v10, :cond_9e

    .line 93
    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    move-wide v0, v8

    .line 106
    :goto_70
    const-string v2, "AlarmClock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set alarm clock for usage "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :goto_88
    return-void

    .line 71
    :cond_89
    invoke-static {p0, v2, v5}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    if-eqz v3, :cond_97

    .line 72
    const-string v0, "AlarmClock"

    const-string v1, "setUploadUsageAlarm, Exist alarm clock for usage, skip"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_88

    .line 75
    :cond_97
    const/high16 v3, 0x8000000

    invoke-static {p0, v5, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    goto :goto_2e

    .line 95
    :cond_9e
    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    move-wide v0, v8

    .line 97
    goto :goto_70

    .line 99
    :cond_aa
    invoke-virtual {v2, v7, v1}, Ljava/util/Calendar;->set(II)V

    .line 100
    invoke-virtual {v2, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 101
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/32 v8, 0x1499700

    rem-long/2addr v4, v8

    .line 102
    const-wide/32 v8, 0x1499700

    add-long/2addr v4, v8

    .line 103
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long v8, v2, v4

    .line 104
    const/4 v1, 0x1

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    move-wide v0, v8

    goto :goto_70
.end method

.method private f(Landroid/content/Context;)V
    .registers 15

    .prologue
    const/4 v1, 0x0

    .line 151
    :try_start_1
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 152
    new-instance v8, Landroid/content/Intent;

    const-class v2, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v8, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    const-string v2, "command"

    const-string v3, "usagev2"

    invoke-virtual {v8, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v9

    .line 158
    invoke-static {}, Lcom/miui/analytics/internal/f/e;->b()[I

    move-result-object v2

    .line 159
    if-eqz v2, :cond_da

    array-length v3, v2

    if-lez v3, :cond_da

    .line 160
    invoke-static {v2}, Lcom/miui/analytics/internal/b;->a([I)[I

    move-result-object v10

    array-length v11, v10

    move v7, v1

    :goto_30
    if-ge v7, v11, :cond_d1

    aget v12, v10, v7

    .line 161
    add-int/lit16 v1, v12, 0x3e8

    .line 162
    invoke-static {p1, v8, v1}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 163
    const-string v1, "AlarmClock"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setUploadUsageAlarmV2, Exist alarm clock for usagev2, skip time"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :goto_50
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_30

    .line 166
    :cond_54
    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v8, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 167
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 168
    const/16 v1, 0xb

    invoke-virtual {v9, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 169
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 170
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    rem-long/2addr v2, v4

    .line 171
    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    .line 172
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 174
    const/16 v1, 0x17

    if-ne v12, v1, :cond_d2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_d2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-gt v1, v4, :cond_d2

    .line 175
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 176
    const-string v1, "AlarmClock"

    const-string v4, "4.4 <= \u5b89\u5353\u7248\u672c <= 5.1,\u9700\u8981\u6dfb\u52a0\u4e00\u4e2a23\u70b9\u7684\u5fc5\u987b\u91c7\u96c6\u7684\u95f9\u949f"

    invoke-static {v1, v4}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :goto_9d
    const-string v1, "AlarmClock"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "set alarm clock for usagev2 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff0ctime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_c4} :catch_c5

    goto :goto_50

    .line 214
    :catch_c5
    move-exception v0

    .line 215
    const-string v1, "AlarmClock"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "setUploadUsageAlarmV2 e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_d1
    :goto_d1
    return-void

    .line 178
    :cond_d2
    const/4 v1, 0x1

    const-wide/32 v4, 0x5265c00

    :try_start_d6
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_9d

    .line 183
    :cond_da
    const-string v1, "AlarmClock"

    const-string v2, "usagev2 upload times is empty"

    invoke-static {v1, v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const/16 v1, 0xa

    invoke-static {p1, v8, v1}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 185
    const-string v0, "AlarmClock"

    const-string v1, "setUploadUsageAlarmV2, Exist alarm clock for usagev2, skip"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d1

    .line 188
    :cond_f1
    const/16 v1, 0xa

    const/high16 v2, 0x8000000

    invoke-static {p1, v1, v8, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 189
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 190
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-gt v1, v2, :cond_144

    .line 194
    const/16 v1, 0xb

    const/16 v2, 0x17

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 195
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 196
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    rem-long/2addr v2, v4

    .line 197
    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    .line 198
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 199
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_138

    .line 200
    const/4 v1, 0x0

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_d1

    .line 202
    :cond_138
    const/4 v1, 0x0

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_d1

    .line 206
    :cond_144
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 207
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v9, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 208
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    rem-long/2addr v2, v4

    .line 209
    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    .line 210
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 211
    const/4 v1, 0x1

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_175} :catch_c5

    goto/16 :goto_d1
.end method

.method private static g(Landroid/content/Context;)V
    .registers 16

    .prologue
    const/16 v5, 0x17

    const/16 v14, 0xc

    const/16 v13, 0xb

    const/16 v4, 0x9

    const/4 v1, 0x0

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v5, :cond_e

    .line 292
    :cond_d
    :goto_d
    return-void

    .line 251
    :cond_e
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 252
    new-instance v10, Landroid/content/Intent;

    const-class v2, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v10, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 253
    const-string v2, "command"

    const-string v3, "installationv2"

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-static {}, Lcom/miui/analytics/internal/f/e;->b()[I

    move-result-object v11

    .line 256
    if-eqz v11, :cond_2d

    array-length v2, v11

    if-nez v2, :cond_9a

    .line 257
    :cond_2d
    const-string v2, "AlarmClock"

    const-string v3, "installationv2 upload times is empty"

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {p0, v10, v4}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 259
    const-string v0, "AlarmClock"

    const-string v1, "Exist alarm clock for installationv2, skip"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 262
    :cond_42
    const/high16 v2, 0x8000000

    invoke-static {p0, v4, v10, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 263
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 264
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 265
    invoke-virtual {v2, v13, v5}, Ljava/util/Calendar;->set(II)V

    .line 266
    invoke-virtual {v2, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 267
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/32 v8, 0x124f80

    rem-long/2addr v4, v8

    .line 268
    const-wide/32 v8, 0x1b7740

    add-long/2addr v4, v8

    .line 269
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long v8, v2, v4

    .line 270
    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 271
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set alarm clock for installationv2, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_9a
    move v9, v1

    .line 273
    :goto_9b
    array-length v2, v11

    if-ge v9, v2, :cond_d

    .line 274
    aget v12, v11, v9

    .line 275
    add-int/lit16 v2, v12, 0x384

    .line 276
    invoke-static {p0, v10, v2}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 277
    const-string v2, "AlarmClock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exist alarm clock for installationv2, skip "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :goto_bc
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_9b

    .line 280
    :cond_c0
    const/high16 v3, 0x8000000

    invoke-static {p0, v2, v10, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 281
    invoke-virtual {v0, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 282
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 283
    invoke-virtual {v2, v13, v12}, Ljava/util/Calendar;->set(II)V

    .line 284
    invoke-virtual {v2, v14, v1}, Ljava/util/Calendar;->set(II)V

    .line 285
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/32 v6, 0x124f80

    rem-long/2addr v4, v6

    .line 286
    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    .line 287
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long/2addr v4, v2

    .line 288
    const/4 v3, 0x1

    const-wide/32 v6, 0x5265c00

    move-object v2, v0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 289
    const-string v2, "AlarmClock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "set alarm clock for installationv2, "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bc
.end method

.method private static h(Landroid/content/Context;)V
    .registers 11

    .prologue
    const/16 v7, 0x17

    const/4 v5, 0x5

    const/4 v1, 0x0

    .line 295
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v7, :cond_9

    .line 318
    :goto_8
    return-void

    .line 298
    :cond_9
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 299
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    const-string v3, "command"

    const-string v4, "installation"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    invoke-static {p0, v2, v5}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 302
    const-string v0, "AlarmClock"

    const-string v1, "Exist alarm clock for installation, skip"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 306
    :cond_2d
    const/high16 v3, 0x8000000

    invoke-static {p0, v5, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 307
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 309
    const-string v2, "GMT+0"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .line 310
    const/16 v3, 0xb

    invoke-virtual {v2, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 311
    const/16 v3, 0xc

    invoke-virtual {v2, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 312
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    const-wide/32 v8, 0x124f80

    rem-long/2addr v4, v8

    .line 313
    const-wide/32 v8, 0x1b7740

    add-long/2addr v4, v8

    .line 314
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    add-long v8, v2, v4

    .line 316
    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 317
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set alarm clock for installation, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .registers 12

    .prologue
    .line 322
    .line 1047
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1048
    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1049
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1050
    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x2932e00

    rem-long/2addr v2, v4

    .line 1051
    const-wide/32 v4, 0x2932e00

    add-long/2addr v2, v4

    .line 1052
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    add-long v8, v0, v2

    .line 1053
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1054
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1055
    const-string v2, "command"

    const-string v3, "active"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const/4 v2, 0x1

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1057
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1058
    const/4 v1, 0x1

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1b77400

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1059
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set alarm clock for active, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v0, "spock_usage"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    const-string v0, "spock_sequence"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133

    .line 1063
    :cond_7e
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1064
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1065
    const-string v2, "command"

    const-string v3, "usage"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1068
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_14a

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v2, v3, :cond_14a

    .line 1069
    const/4 v2, 0x3

    const/high16 v3, 0x10000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1077
    :goto_a7
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1080
    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 1082
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v2, v3, :cond_179

    .line 1086
    const/16 v2, 0xb

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1087
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1088
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    rem-long/2addr v2, v4

    .line 1089
    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    .line 1090
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long v8, v4, v2

    .line 1092
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_16b

    .line 1093
    const/4 v1, 0x0

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    move-wide v0, v8

    .line 1106
    :goto_f1
    const-string v2, "AlarmClock"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set alarm clock for usage "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    :goto_109
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_133

    .line 1298
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 1299
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/analytics/internal/WakeupService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1300
    const-string v2, "command"

    const-string v3, "installation"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    const/4 v2, 0x5

    invoke-static {p1, v1, v2}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_1ae

    .line 1302
    const-string v0, "AlarmClock"

    const-string v1, "Exist alarm clock for installation, skip"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_133
    :goto_133
    const-string v0, "spock_usagev2"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_143

    const-string v0, "spock_sequencev2"

    invoke-static {v0}, Lcom/miui/analytics/Analytics;->enableAppCollectUpload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 341
    :cond_143
    invoke-direct {p0, p1}, Lcom/miui/analytics/internal/b;->f(Landroid/content/Context;)V

    .line 342
    invoke-static {p1}, Lcom/miui/analytics/internal/b;->g(Landroid/content/Context;)V

    .line 355
    :cond_149
    :goto_149
    return-void

    .line 1071
    :cond_14a
    const/4 v2, 0x3

    invoke-static {p1, v1, v2}, Lcom/miui/analytics/internal/b;->a(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_162

    .line 1072
    const-string v0, "AlarmClock"

    const-string v1, "setUploadUsageAlarm, Exist alarm clock for usage, skip"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_158} :catch_159

    goto :goto_109

    .line 352
    :catch_159
    move-exception v0

    .line 353
    const-string v1, "AlarmClock"

    const-string v2, "setupAlarms exception: "

    invoke-static {p1, v1, v2, v0}, Lcom/miui/analytics/internal/f/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_149

    .line 1075
    :cond_162
    const/4 v2, 0x3

    const/high16 v3, 0x8000000

    :try_start_165
    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    goto/16 :goto_a7

    .line 1095
    :cond_16b
    const/4 v1, 0x0

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    move-wide v0, v8

    .line 1097
    goto/16 :goto_f1

    .line 1099
    :cond_179
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1100
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1101
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    rem-long/2addr v2, v4

    .line 1102
    const-wide/32 v4, 0x1499700

    add-long/2addr v2, v4

    .line 1103
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long v8, v4, v2

    .line 1104
    const/4 v1, 0x1

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    move-wide v0, v8

    goto/16 :goto_f1

    .line 1306
    :cond_1ae
    const/4 v2, 0x5

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 1307
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1309
    const-string v1, "GMT+0"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 1310
    const/16 v2, 0xb

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1311
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1312
    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    const-wide/32 v4, 0x124f80

    rem-long/2addr v2, v4

    .line 1313
    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    .line 1314
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    add-long v8, v4, v2

    .line 1316
    const/4 v1, 0x0

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1317
    const-string v0, "AlarmClock"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "set alarm clock for installation, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/miui/analytics/internal/b;->a(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20d
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_20d} :catch_159

    goto/16 :goto_133
.end method
