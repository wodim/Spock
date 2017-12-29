.class public Lcom/miui/analytics/internal/b/b;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AppenderManagerDB"

.field private static final b:Ljava/lang/String; = "appenderManager.db"

.field private static final c:Ljava/lang/String; = "appenderManager"

.field private static final d:Ljava/lang/String; = "_package_name"

.field private static final e:Ljava/lang/String; = "value"

.field private static final f:Ljava/lang/String; = "create table %s(_package_name TEXT PRIMARY KEY,value TEXT)"

.field private static final g:Ljava/lang/String; = "drop table if exists %s"

.field private static final h:I = 0x1

.field private static final i:I = 0x1

.field private static volatile j:Lcom/miui/analytics/internal/b/b;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 47
    const-string v0, "appenderManager.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/b;
    .registers 3

    .prologue
    .line 36
    sget-object v0, Lcom/miui/analytics/internal/b/b;->j:Lcom/miui/analytics/internal/b/b;

    if-nez v0, :cond_13

    .line 37
    const-class v1, Lcom/miui/analytics/internal/b/b;

    monitor-enter v1

    .line 38
    :try_start_7
    sget-object v0, Lcom/miui/analytics/internal/b/b;->j:Lcom/miui/analytics/internal/b/b;

    if-nez v0, :cond_12

    .line 39
    new-instance v0, Lcom/miui/analytics/internal/b/b;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/b/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/b/b;->j:Lcom/miui/analytics/internal/b/b;

    .line 41
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 43
    :cond_13
    sget-object v0, Lcom/miui/analytics/internal/b/b;->j:Lcom/miui/analytics/internal/b/b;

    return-object v0

    .line 41
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .prologue
    .line 75
    const-string v0, "create table %s(_package_name TEXT PRIMARY KEY,value TEXT)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "appenderManager"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .prologue
    .line 79
    const-string v0, "drop table if exists %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "appenderManager"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v8, 0x0

    .line 102
    .line 105
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_57
    .catchall {:try_start_1 .. :try_end_4} :catchall_6f

    move-result-object v0

    .line 106
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 107
    const-string v1, "appenderManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const-string v3, "_package_name = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 108
    if-eqz v8, :cond_47

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 110
    const-string v1, "value"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    if-nez v1, :cond_3c

    .line 112
    const-string v1, ""
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_83
    .catchall {:try_start_5 .. :try_end_3c} :catchall_7c

    .line 121
    :cond_3c
    if-eqz v8, :cond_41

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_41
    if-eqz v0, :cond_46

    .line 125
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 128
    :cond_46
    :goto_46
    return-object v1

    .line 117
    :cond_47
    :try_start_47
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_83
    .catchall {:try_start_47 .. :try_end_4a} :catchall_7c

    .line 121
    if-eqz v8, :cond_4f

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_4f
    if-eqz v0, :cond_54

    .line 125
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 128
    :cond_54
    :goto_54
    const-string v1, ""

    goto :goto_46

    .line 118
    :catch_57
    move-exception v0

    move-object v1, v8

    .line 119
    :goto_59
    :try_start_59
    const-string v2, "AppenderManagerDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "query e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_81

    .line 121
    if-eqz v8, :cond_69

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_69
    if-eqz v1, :cond_54

    .line 125
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_54

    .line 121
    :catchall_6f
    move-exception v0

    move-object v1, v8

    :goto_71
    if-eqz v8, :cond_76

    .line 122
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_76
    if-eqz v1, :cond_7b

    .line 125
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_7b
    throw v0

    .line 121
    :catchall_7c
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_71

    :catchall_81
    move-exception v0

    goto :goto_71

    .line 118
    :catch_83
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_59
.end method

.method public final a()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 148
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 152
    :try_start_6
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/b;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_5d
    .catchall {:try_start_6 .. :try_end_9} :catchall_75

    move-result-object v0

    .line 153
    :try_start_a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 154
    const-string v1, "appenderManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_package_name"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 155
    if-eqz v8, :cond_4f

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 157
    :cond_2d
    const-string v1, "_package_name"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 159
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2d

    .line 163
    :cond_4f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_52} :catch_89
    .catchall {:try_start_a .. :try_end_52} :catchall_82

    .line 167
    if-eqz v8, :cond_57

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_57
    if-eqz v0, :cond_5c

    .line 171
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 174
    :cond_5c
    :goto_5c
    return-object v9

    .line 164
    :catch_5d
    move-exception v0

    move-object v1, v8

    .line 165
    :goto_5f
    :try_start_5f
    const-string v2, "AppenderManagerDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getAll e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6a
    .catchall {:try_start_5f .. :try_end_6a} :catchall_87

    .line 167
    if-eqz v8, :cond_6f

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_6f
    if-eqz v1, :cond_5c

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5c

    .line 167
    :catchall_75
    move-exception v0

    move-object v1, v8

    :goto_77
    if-eqz v8, :cond_7c

    .line 168
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_7c
    if-eqz v1, :cond_81

    .line 171
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_81
    throw v0

    .line 167
    :catchall_82
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_77

    :catchall_87
    move-exception v0

    goto :goto_77

    .line 164
    :catch_89
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_5f
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 83
    .line 85
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 87
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 88
    const-string v2, "_package_name"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v2, "value"

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v2, "appenderManager"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 91
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_20} :catch_26
    .catchall {:try_start_1 .. :try_end_20} :catchall_38

    .line 95
    if-eqz v1, :cond_25

    .line 96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 99
    :cond_25
    :goto_25
    return-void

    .line 92
    :catch_26
    move-exception v0

    .line 93
    :try_start_27
    const-string v2, "AppenderManagerDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "insert e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_38

    .line 95
    if-eqz v1, :cond_25

    .line 96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_25

    .line 95
    :catchall_38
    move-exception v0

    if-eqz v1, :cond_3e

    .line 96
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3e
    throw v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 134
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 136
    const-string v0, "appenderManager"

    const-string v2, "_package_name = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 137
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_18} :catch_1e
    .catchall {:try_start_1 .. :try_end_18} :catchall_30

    .line 141
    if-eqz v1, :cond_1d

    .line 142
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 145
    :cond_1d
    :goto_1d
    return-void

    .line 138
    :catch_1e
    move-exception v0

    .line 139
    :try_start_1f
    const-string v2, "AppenderManagerDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "delete e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_30

    .line 141
    if-eqz v1, :cond_1d

    .line 142
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1d

    .line 141
    :catchall_30
    move-exception v0

    if-eqz v1, :cond_36

    .line 142
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_36
    throw v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 52
    invoke-static {p1}, Lcom/miui/analytics/internal/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 53
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/analytics/internal/b/b;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 54
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 69
    .line 1079
    const-string v0, "drop table if exists %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "appenderManager"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lcom/miui/analytics/internal/b/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 71
    invoke-virtual {p0, p1, v4, p3}, Lcom/miui/analytics/internal/b/b;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 72
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 65
    return-void
.end method
