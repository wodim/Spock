.class public final Lcom/miui/analytics/internal/f/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "FD"

.field private static final b:Ljava/lang/String; = "com.xiaomi.finddevice.provider"

.field private static final c:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-string v0, "content://com.xiaomi.finddevice.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/miui/analytics/internal/f/j;->c:Landroid/net/Uri;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    .prologue
    .line 100
    sget-object v0, Lcom/miui/analytics/internal/f/j;->c:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 15
    .line 17
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isOpen"

    .line 1100
    sget-object v2, Lcom/miui/analytics/internal/f/j;->c:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 17
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_29
    .catchall {:try_start_2 .. :try_end_15} :catchall_39

    move-result-object v1

    .line 19
    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 20
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_43
    .catchall {:try_start_16 .. :try_end_1d} :catchall_41

    move-result v0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    .line 24
    :goto_21
    if-eqz v1, :cond_26

    .line 25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 28
    :cond_26
    :goto_26
    return v0

    :cond_27
    move v0, v6

    .line 20
    goto :goto_21

    .line 21
    :catch_29
    move-exception v0

    move-object v1, v7

    .line 22
    :goto_2b
    :try_start_2b
    const-string v2, "FD"

    const-string v3, "FindDeviceStatusManagerProvider isOpen Exception: "

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_41

    .line 24
    if-eqz v1, :cond_37

    .line 25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_37
    move v0, v6

    .line 28
    goto :goto_26

    .line 24
    :catchall_39
    move-exception v0

    move-object v1, v7

    :goto_3b
    if-eqz v1, :cond_40

    .line 25
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v0

    .line 24
    :catchall_41
    move-exception v0

    goto :goto_3b

    .line 21
    :catch_43
    move-exception v0

    goto :goto_2b
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 32
    .line 34
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isLastStatusOpen"

    .line 2100
    sget-object v2, Lcom/miui/analytics/internal/f/j;->c:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 34
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_29
    .catchall {:try_start_2 .. :try_end_15} :catchall_39

    move-result-object v1

    .line 36
    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 37
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_43
    .catchall {:try_start_16 .. :try_end_1d} :catchall_41

    move-result v0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    .line 41
    :goto_21
    if-eqz v1, :cond_26

    .line 42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 45
    :cond_26
    :goto_26
    return v0

    :cond_27
    move v0, v6

    .line 37
    goto :goto_21

    .line 38
    :catch_29
    move-exception v0

    move-object v1, v7

    .line 39
    :goto_2b
    :try_start_2b
    const-string v2, "FD"

    const-string v3, "FindDeviceStatusManagerProvider isLastStatusOpen Exception: "

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_41

    .line 41
    if-eqz v1, :cond_37

    .line 42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_37
    move v0, v6

    .line 45
    goto :goto_26

    .line 41
    :catchall_39
    move-exception v0

    move-object v1, v7

    :goto_3b
    if-eqz v1, :cond_40

    .line 42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v0

    .line 41
    :catchall_41
    move-exception v0

    goto :goto_3b

    .line 38
    :catch_43
    move-exception v0

    goto :goto_2b
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 49
    .line 51
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isLocked"

    .line 3100
    sget-object v2, Lcom/miui/analytics/internal/f/j;->c:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 51
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_29
    .catchall {:try_start_2 .. :try_end_15} :catchall_39

    move-result-object v1

    .line 53
    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_43
    .catchall {:try_start_16 .. :try_end_1d} :catchall_41

    move-result v0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    .line 58
    :goto_21
    if-eqz v1, :cond_26

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 62
    :cond_26
    :goto_26
    return v0

    :cond_27
    move v0, v6

    .line 54
    goto :goto_21

    .line 55
    :catch_29
    move-exception v0

    move-object v1, v7

    .line 56
    :goto_2b
    :try_start_2b
    const-string v2, "FD"

    const-string v3, "FindDeviceStatusManagerProvider isLocked Exception: "

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_41

    .line 58
    if-eqz v1, :cond_37

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_37
    move v0, v6

    .line 62
    goto :goto_26

    .line 58
    :catchall_39
    move-exception v0

    move-object v1, v7

    :goto_3b
    if-eqz v1, :cond_40

    .line 59
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v0

    .line 58
    :catchall_41
    move-exception v0

    goto :goto_3b

    .line 55
    :catch_43
    move-exception v0

    goto :goto_2b
.end method

.method private static d(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 66
    .line 68
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "isLastStatusLocked"

    .line 4100
    sget-object v2, Lcom/miui/analytics/internal/f/j;->c:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 68
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_29
    .catchall {:try_start_2 .. :try_end_15} :catchall_39

    move-result-object v1

    .line 70
    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 71
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1d} :catch_43
    .catchall {:try_start_16 .. :try_end_1d} :catchall_41

    move-result v0

    if-lez v0, :cond_27

    const/4 v0, 0x1

    .line 75
    :goto_21
    if-eqz v1, :cond_26

    .line 76
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_26
    :goto_26
    return v0

    :cond_27
    move v0, v6

    .line 71
    goto :goto_21

    .line 72
    :catch_29
    move-exception v0

    move-object v1, v7

    .line 73
    :goto_2b
    :try_start_2b
    const-string v2, "FD"

    const-string v3, "FindDeviceStatusManagerProvider isLastStatusLocked Exception: "

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_41

    .line 75
    if-eqz v1, :cond_37

    .line 76
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_37
    move v0, v6

    .line 79
    goto :goto_26

    .line 75
    :catchall_39
    move-exception v0

    move-object v1, v7

    :goto_3b
    if-eqz v1, :cond_40

    .line 76
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_40
    throw v0

    .line 75
    :catchall_41
    move-exception v0

    goto :goto_3b

    .line 72
    :catch_43
    move-exception v0

    goto :goto_2b
.end method

.method private static e(Landroid/content/Context;)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 83
    .line 85
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lastSessionUserId"

    .line 5100
    sget-object v2, Lcom/miui/analytics/internal/f/j;->c:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 85
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_23
    .catchall {:try_start_1 .. :try_end_14} :catchall_34

    move-result-object v1

    .line 87
    :try_start_15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 88
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_3e
    .catchall {:try_start_15 .. :try_end_1c} :catchall_3c

    move-result-object v0

    .line 92
    if-eqz v1, :cond_22

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_22
    :goto_22
    return-object v0

    .line 89
    :catch_23
    move-exception v0

    move-object v1, v6

    .line 90
    :goto_25
    :try_start_25
    const-string v2, "FD"

    const-string v3, "FindDeviceStatusManagerProvider getLastUserIdLocked Exception: "

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3c

    .line 92
    if-eqz v1, :cond_31

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 96
    :cond_31
    const-string v0, ""

    goto :goto_22

    .line 92
    :catchall_34
    move-exception v0

    move-object v1, v6

    :goto_36
    if-eqz v1, :cond_3b

    .line 93
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3b
    throw v0

    .line 92
    :catchall_3c
    move-exception v0

    goto :goto_36

    .line 89
    :catch_3e
    move-exception v0

    goto :goto_25
.end method
