.class public Lcom/miui/analytics/internal/b/e;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "StoreLocationDB"

.field private static final b:Ljava/lang/String; = "storeLocation.db"

.field private static final c:Ljava/lang/String; = "storeLocation"

.field private static final d:Ljava/lang/String; = "store_id"

.field private static final e:Ljava/lang/String; = "longitude"

.field private static final f:Ljava/lang/String; = "latitude"

.field private static final g:I = 0x1

.field private static final h:I = 0x1

.field private static final i:Ljava/lang/String; = "create table %s(store_id INTEGER PRIMARY KEY,longitude REAL, latitude REAL)"

.field private static final j:Ljava/lang/String; = "drop table if exists %s"

.field private static final k:Ljava/lang/String; = "delete from storeLocation where %s = %s"

.field private static volatile l:Lcom/miui/analytics/internal/b/e;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 40
    const-string v0, "storeLocation.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 41
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 86
    .line 88
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_16
    .catchall {:try_start_1 .. :try_end_4} :catchall_2a

    move-result-object v2

    .line 89
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 90
    const/4 v0, 0x0

    invoke-virtual {v2, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 91
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_34
    .catchall {:try_start_5 .. :try_end_10} :catchall_32

    .line 96
    if-eqz v2, :cond_15

    .line 97
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 100
    :cond_15
    :goto_15
    return-object v0

    .line 93
    :catch_16
    move-exception v0

    move-object v2, v1

    .line 94
    :goto_18
    :try_start_18
    const-string v3, "StoreLocationDB"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rawQuery e"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_23
    .catchall {:try_start_18 .. :try_end_23} :catchall_32

    .line 96
    if-eqz v2, :cond_28

    .line 97
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_28
    move-object v0, v1

    .line 100
    goto :goto_15

    .line 96
    :catchall_2a
    move-exception v0

    move-object v2, v1

    :goto_2c
    if-eqz v2, :cond_31

    .line 97
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_31
    throw v0

    .line 96
    :catchall_32
    move-exception v0

    goto :goto_2c

    .line 93
    :catch_34
    move-exception v0

    goto :goto_18
.end method

.method private static a(Landroid/content/Context;)Lcom/miui/analytics/internal/b/e;
    .registers 3

    .prologue
    .line 44
    sget-object v0, Lcom/miui/analytics/internal/b/e;->l:Lcom/miui/analytics/internal/b/e;

    if-nez v0, :cond_13

    .line 45
    const-class v1, Lcom/miui/analytics/internal/b/e;

    monitor-enter v1

    .line 46
    :try_start_7
    sget-object v0, Lcom/miui/analytics/internal/b/e;->l:Lcom/miui/analytics/internal/b/e;

    if-nez v0, :cond_12

    .line 47
    new-instance v0, Lcom/miui/analytics/internal/b/e;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/b/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/b/e;->l:Lcom/miui/analytics/internal/b/e;

    .line 49
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 51
    :cond_13
    sget-object v0, Lcom/miui/analytics/internal/b/e;->l:Lcom/miui/analytics/internal/b/e;

    return-object v0

    .line 49
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private static a(Landroid/database/Cursor;)Lcom/miui/analytics/internal/b/f;
    .registers 5

    .prologue
    .line 178
    new-instance v0, Lcom/miui/analytics/internal/b/f;

    invoke-direct {v0}, Lcom/miui/analytics/internal/b/f;-><init>()V

    .line 179
    const-string v1, "store_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/analytics/internal/b/f;->a:I

    .line 180
    const-string v1, "longitude"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/analytics/internal/b/f;->b:D

    .line 181
    const-string v1, "latitude"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/miui/analytics/internal/b/f;->c:D

    .line 182
    return-object v0
.end method

.method private a()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/b/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    const/4 v1, 0x0

    .line 159
    :try_start_6
    const-string v0, "select * from storeLocation"

    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/b/e;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 160
    if-eqz v1, :cond_46

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 1178
    :cond_14
    new-instance v0, Lcom/miui/analytics/internal/b/f;

    invoke-direct {v0}, Lcom/miui/analytics/internal/b/f;-><init>()V

    .line 1179
    const-string v3, "store_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v0, Lcom/miui/analytics/internal/b/f;->a:I

    .line 1180
    const-string v3, "longitude"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/analytics/internal/b/f;->b:D

    .line 1181
    const-string v3, "latitude"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/miui/analytics/internal/b/f;->c:D

    .line 163
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_43} :catch_65
    .catchall {:try_start_6 .. :try_end_43} :catchall_77

    move-result v0

    if-nez v0, :cond_14

    .line 169
    :cond_46
    if-eqz v1, :cond_4b

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_4b
    :goto_4b
    const-string v0, "StoreLocationDB"

    const-string v1, "queryEvents %d events from db. "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    return-object v2

    .line 166
    :catch_65
    move-exception v0

    .line 167
    :try_start_66
    const-string v3, "StoreLocationDB"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "queryStoreLocations e"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_77

    .line 169
    if-eqz v1, :cond_4b

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_4b

    .line 169
    :catchall_77
    move-exception v0

    if-eqz v1, :cond_7d

    .line 170
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .prologue
    .line 78
    const-string v0, "create table %s(store_id INTEGER PRIMARY KEY,longitude REAL, latitude REAL)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "storeLocation"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method private a(Lcom/miui/analytics/internal/b/f;)V
    .registers 8

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 108
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 109
    const-string v2, "store_id"

    iget v3, p1, Lcom/miui/analytics/internal/b/f;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v2, "latitude"

    iget-wide v4, p1, Lcom/miui/analytics/internal/b/f;->c:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 111
    const-string v2, "longitude"

    iget-wide v4, p1, Lcom/miui/analytics/internal/b/f;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 112
    const-string v2, "storeLocation"

    const-string v3, "store_id"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_3e
    .catchall {:try_start_1 .. :try_end_38} :catchall_50

    .line 117
    if-eqz v1, :cond_3d

    .line 118
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    :cond_3d
    :goto_3d
    return-void

    .line 114
    :catch_3e
    move-exception v0

    .line 115
    :try_start_3f
    const-string v2, "StoreLocationDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "insertOrReplace e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_50

    .line 117
    if-eqz v1, :cond_3d

    .line 118
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3d

    .line 117
    :catchall_50
    move-exception v0

    if-eqz v1, :cond_56

    .line 118
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_56
    throw v0
.end method

.method private a(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/b/f;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 124
    const-string v0, "StoreLocationDB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert storeLocationInfos "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :try_start_18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/b/f;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_28} :catch_66

    .line 1104
    const/4 v1, 0x0

    .line 1106
    :try_start_29
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1107
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1108
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1109
    const-string v4, "store_id"

    iget v5, v0, Lcom/miui/analytics/internal/b/f;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1110
    const-string v4, "latitude"

    iget-wide v6, v0, Lcom/miui/analytics/internal/b/f;->c:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1111
    const-string v4, "longitude"

    iget-wide v6, v0, Lcom/miui/analytics/internal/b/f;->b:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1112
    const-string v0, "storeLocation"

    const-string v4, "store_id"

    invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1113
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_60} :catch_74
    .catchall {:try_start_29 .. :try_end_60} :catchall_86

    .line 1117
    if-eqz v1, :cond_1c

    .line 1118
    :try_start_62
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_1c

    .line 129
    :catch_66
    move-exception v0

    .line 130
    const-string v1, "StoreLocationDB"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "insertOrReplace e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :cond_72
    const/4 v0, 0x1

    return v0

    .line 1114
    :catch_74
    move-exception v0

    .line 1115
    :try_start_75
    const-string v3, "StoreLocationDB"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "insertOrReplace e"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_80
    .catchall {:try_start_75 .. :try_end_80} :catchall_86

    .line 1117
    if-eqz v1, :cond_1c

    .line 1118
    :try_start_82
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1c

    .line 1117
    :catchall_86
    move-exception v0

    if-eqz v1, :cond_8c

    .line 1118
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8c
    throw v0
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8d} :catch_66
.end method

.method private b()J
    .registers 7

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 189
    :try_start_1
    const-string v0, "select count(*) from storeLocation"

    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/b/e;->a(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_3b
    .catchall {:try_start_1 .. :try_end_6} :catchall_4d

    move-result-object v2

    .line 190
    if-eqz v2, :cond_33

    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 191
    const-string v0, "StoreLocationDB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "db count is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_5a
    .catchall {:try_start_9 .. :try_end_2c} :catchall_55

    move-result-wide v0

    .line 197
    if-eqz v2, :cond_32

    .line 198
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_32
    :goto_32
    return-wide v0

    .line 197
    :cond_33
    if-eqz v2, :cond_38

    .line 198
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 201
    :cond_38
    :goto_38
    const-wide/16 v0, 0x0

    goto :goto_32

    .line 194
    :catch_3b
    move-exception v0

    .line 195
    :goto_3c
    :try_start_3c
    const-string v2, "StoreLocationDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCount e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_57

    .line 197
    if-eqz v1, :cond_38

    .line 198
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_38

    .line 197
    :catchall_4d
    move-exception v0

    move-object v2, v1

    :goto_4f
    if-eqz v2, :cond_54

    .line 198
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_54
    throw v0

    .line 197
    :catchall_55
    move-exception v0

    goto :goto_4f

    :catchall_57
    move-exception v0

    move-object v2, v1

    goto :goto_4f

    .line 194
    :catch_5a
    move-exception v0

    move-object v1, v2

    goto :goto_3c
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .prologue
    .line 82
    const-string v0, "drop table if exists %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "storeLocation"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method private b(Ljava/util/List;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/b/f;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 136
    const/4 v1, 0x0

    .line 138
    :try_start_2
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/e;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/b/f;

    .line 141
    const-string v3, "delete from storeLocation where %s = %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "store_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/miui/analytics/internal/b/f;->a:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3c} :catch_3d
    .catchall {:try_start_2 .. :try_end_3c} :catchall_58

    goto :goto_d

    .line 144
    :catch_3d
    move-exception v0

    .line 145
    :try_start_3e
    const-string v2, "StoreLocationDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "delete e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_58

    .line 147
    if-eqz v1, :cond_4e

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 151
    :cond_4e
    :goto_4e
    return v7

    .line 143
    :cond_4f
    :try_start_4f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_3d
    .catchall {:try_start_4f .. :try_end_52} :catchall_58

    .line 147
    if-eqz v1, :cond_4e

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4e

    .line 147
    :catchall_58
    move-exception v0

    if-eqz v1, :cond_5e

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_5e
    throw v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/e;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_b

    .line 207
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 209
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-static {p1}, Lcom/miui/analytics/internal/b/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 57
    invoke-virtual {p0, p1, v0, v0}, Lcom/miui/analytics/internal/b/e;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 58
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 72
    .line 1082
    const-string v0, "drop table if exists %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "storeLocation"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 73
    invoke-static {p1}, Lcom/miui/analytics/internal/b/e;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    invoke-virtual {p0, p1, v4, p3}, Lcom/miui/analytics/internal/b/e;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 75
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    .prologue
    .line 68
    return-void
.end method
