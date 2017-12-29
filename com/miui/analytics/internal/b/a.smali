.class public final Lcom/miui/analytics/internal/b/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AnalyticsDB"

.field private static b:Ljava/lang/String; = "analytics.db"

.field private static c:Ljava/lang/String; = "analytics"

.field private static d:Ljava/lang/String; = "config_key"

.field private static e:Ljava/lang/String; = "event_time"

.field private static f:Ljava/lang/String; = "session_id"

.field private static g:Ljava/lang/String; = "app_id"

.field private static h:Ljava/lang/String; = "body"

.field private static i:Ljava/lang/String; = "sn"

.field private static j:Ljava/lang/String; = "header"

.field private static k:Ljava/lang/String; = "_id"

.field private static l:Ljava/lang/String; = "send_count"

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:Ljava/lang/String; = "create table %s(_id INTEGER PRIMARY KEY,config_key TEXT,event_time INT8, session_id TEXT,app_id TEXT,sn TEXT,body TEXT, header TEXT)"

.field private static final p:Ljava/lang/String; = "drop table if exists %s"

.field private static final q:Ljava/lang/String; = "delete from analytics where _id = %s"

.field private static final r:Ljava/lang/String; = "delete from analytics"

.field private static final s:Ljava/lang/String; = "insert into %s values(null, ?, ?, ?, ?, ?, ?, ?, ?)"

.field private static final t:Ljava/lang/String; = "delete from analytics where event_time < "


# instance fields
.field private u:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private v:Ljava/util/concurrent/locks/Lock;

.field private w:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 73
    const-string v0, "analytics.db"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 74
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->u:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    if-nez v0, :cond_22

    .line 75
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/miui/analytics/internal/b/a;->u:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 76
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->u:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    .line 77
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->u:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    .line 79
    :cond_22
    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 139
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 140
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b
    .catchall {:try_start_1 .. :try_end_9} :catchall_18

    move-result-object v0

    .line 145
    :goto_a
    return-object v0

    .line 141
    :catch_b
    move-exception v1

    .line 142
    :try_start_c
    const-string v2, "AnalyticsDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "rawQuery e:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_18

    goto :goto_a

    .line 143
    :catchall_18
    move-exception v0

    throw v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .prologue
    .line 117
    const-string v0, "create table %s(_id INTEGER PRIMARY KEY,config_key TEXT,event_time INT8, session_id TEXT,app_id TEXT,sn TEXT,body TEXT, header TEXT)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "analytics"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 128
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4
    .catchall {:try_start_0 .. :try_end_3} :catchall_11

    .line 132
    :goto_3
    return-void

    .line 129
    :catch_4
    move-exception v0

    .line 130
    :try_start_5
    const-string v1, "AnalyticsDB"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "exeSQL e:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_3

    .line 131
    :catchall_11
    move-exception v0

    throw v0
.end method

.method private a(Lcom/miui/analytics/internal/h;)Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    .line 213
    :try_start_1
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 214
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 215
    const-string v1, "insert into %s values(null, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "analytics"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 216
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    .line 217
    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->f()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->h()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x7

    invoke-virtual {p1}, Lcom/miui/analytics/internal/h;->i()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5f} :catch_69
    .catchall {:try_start_1 .. :try_end_5f} :catchall_7f

    .line 221
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_68

    .line 222
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 225
    :cond_68
    :goto_68
    return v6

    .line 218
    :catch_69
    move-exception v0

    .line 219
    :try_start_6a
    const-string v1, "AnalyticsDB"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "insert event e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_75
    .catchall {:try_start_6a .. :try_end_75} :catchall_7f

    .line 221
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_68

    .line 222
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_68

    .line 221
    :catchall_7f
    move-exception v0

    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v1, :cond_89

    .line 222
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_89
    throw v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5

    .prologue
    .line 122
    const-string v0, "drop table if exists %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "analytics"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private static c(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .prologue
    .line 151
    :try_start_0
    const-string v0, "delete from analytics"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_8
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    .line 154
    :goto_5
    return-void

    .line 153
    :catchall_6
    move-exception v0

    throw v0

    .line 154
    :catch_8
    move-exception v0

    goto :goto_5
.end method


# virtual methods
.method public final a()V
    .registers 4

    .prologue
    .line 158
    const-string v0, "AnalyticsDB"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ANALYTICS-DB-TRUNCATE] drop table analytics"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_b
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 162
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_13} :catch_25
    .catchall {:try_start_b .. :try_end_13} :catchall_3b

    move-result-object v0

    .line 2151
    :try_start_14
    const-string v1, "delete from analytics"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_46
    .catchall {:try_start_14 .. :try_end_19} :catchall_23

    .line 167
    :goto_19
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_22

    .line 168
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 171
    :cond_22
    :goto_22
    return-void

    .line 2153
    :catchall_23
    move-exception v0

    :try_start_24
    throw v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_25} :catch_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_3b

    .line 164
    :catch_25
    move-exception v0

    .line 165
    :try_start_26
    const-string v1, "AnalyticsDB"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteAllItemsInAnalyticsTable e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_26 .. :try_end_31} :catchall_3b

    .line 167
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_22

    .line 168
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_22

    .line 167
    :catchall_3b
    move-exception v0

    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v1, :cond_45

    .line 168
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_45
    throw v0

    .line 2154
    :catch_46
    move-exception v0

    goto :goto_19
.end method

.method public final a(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 208
    :cond_8
    :goto_8
    return-void

    .line 194
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 195
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 196
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_78

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 197
    const-string v3, "update %s set %s = %s + 1 where %s = %s"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "analytics"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "send_count"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "send_count"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    const-string v3, "AnalyticsDB"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "increaseRetryCountFromDB : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_61} :catch_62
    .catchall {:try_start_9 .. :try_end_61} :catchall_82

    goto :goto_16

    .line 201
    :catch_62
    move-exception v0

    .line 202
    :try_start_63
    const-string v1, "AnalyticsDB"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "increaseRetryCount e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6e
    .catchall {:try_start_63 .. :try_end_6e} :catchall_82

    .line 204
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_8

    .line 205
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8

    .line 204
    :cond_78
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_8

    .line 205
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_8

    .line 204
    :catchall_82
    move-exception v0

    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v1, :cond_8c

    .line 205
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_8c
    throw v0
.end method

.method public final a(J)Z
    .registers 6

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 304
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete from analytics where event_time < "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_26
    .catchall {:try_start_0 .. :try_end_1b} :catchall_3d

    .line 310
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_24

    .line 311
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 314
    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    .line 306
    :catch_26
    move-exception v0

    .line 307
    :try_start_27
    const-string v1, "AnalyticsDB"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteByTime e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_3d

    .line 310
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_3b

    .line 311
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 308
    :cond_3b
    const/4 v0, 0x0

    goto :goto_25

    .line 310
    :catchall_3d
    move-exception v0

    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v1, :cond_47

    .line 311
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_47
    throw v0
.end method

.method public final b()V
    .registers 7

    .prologue
    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 177
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 178
    const-string v1, "analytics"

    const-string v2, "send_count >= ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Lcom/miui/analytics/App;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/miui/analytics/internal/f/e;->a(Landroid/content/Context;)Lcom/miui/analytics/internal/f/e;

    invoke-static {}, Lcom/miui/analytics/internal/f/e;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 179
    const-string v1, "AnalyticsDB"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleteEventRetryExpired deleteCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_44
    .catchall {:try_start_0 .. :try_end_3a} :catchall_5a

    .line 183
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_43

    .line 184
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 187
    :cond_43
    :goto_43
    return-void

    .line 180
    :catch_44
    move-exception v0

    .line 181
    :try_start_45
    const-string v1, "AnalyticsDB"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "deleteEventRetryExpired e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_45 .. :try_end_50} :catchall_5a

    .line 183
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_43

    .line 184
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_43

    .line 183
    :catchall_5a
    move-exception v0

    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v1, :cond_64

    .line 184
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_64
    throw v0
.end method

.method public final b(Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 229
    const-string v0, "InsertEvents"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ab;->a(Ljava/lang/String;)V

    .line 230
    const-string v0, "AnalyticsDB"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "insert events "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const/4 v1, 0x0

    .line 233
    :try_start_1f
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 234
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 235
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 237
    const-string v3, "insert into %s values(null, ?, ?, ?, ?, ?, ?, ?, ?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "analytics"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 238
    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 239
    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->d()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 240
    const/4 v4, 0x3

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 241
    const/4 v4, 0x4

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 242
    const/4 v4, 0x5

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 243
    const/4 v4, 0x6

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 244
    const/4 v4, 0x7

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 245
    const/16 v4, 0x8

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->i()I

    move-result v0

    int-to-long v6, v0

    invoke-virtual {v3, v4, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 246
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 247
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_95} :catch_96
    .catchall {:try_start_1f .. :try_end_95} :catchall_c9

    goto :goto_2f

    .line 254
    :catch_96
    move-exception v0

    .line 255
    :try_start_97
    const-string v2, "AnalyticsDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "insert event list e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_c9

    .line 257
    if-eqz v1, :cond_a7

    .line 259
    :try_start_a4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a7} :catch_de

    .line 263
    :cond_a7
    :goto_a7
    invoke-static {}, Lcom/miui/analytics/internal/f/ab;->a()V

    .line 264
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_b3

    .line 265
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 268
    :cond_b3
    :goto_b3
    return v8

    .line 253
    :cond_b4
    :try_start_b4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b7} :catch_96
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_c9

    .line 257
    if-eqz v1, :cond_bc

    .line 259
    :try_start_b9
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_dc

    .line 263
    :cond_bc
    :goto_bc
    invoke-static {}, Lcom/miui/analytics/internal/f/ab;->a()V

    .line 264
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_b3

    .line 265
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_b3

    .line 257
    :catchall_c9
    move-exception v0

    if-eqz v1, :cond_cf

    .line 259
    :try_start_cc
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_cf
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_cf} :catch_e0

    .line 263
    :cond_cf
    :goto_cf
    invoke-static {}, Lcom/miui/analytics/internal/f/ab;->a()V

    .line 264
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v1, :cond_db

    .line 265
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_db
    throw v0

    :catch_dc
    move-exception v0

    goto :goto_bc

    :catch_de
    move-exception v0

    goto :goto_a7

    :catch_e0
    move-exception v1

    goto :goto_cf
.end method

.method public final c()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 320
    const/4 v1, 0x0

    .line 322
    :try_start_6
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 323
    const-string v0, "select * from analytics"

    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/b/a;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_27

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 326
    :cond_19
    new-instance v0, Lcom/miui/analytics/internal/h;

    invoke-direct {v0, v1}, Lcom/miui/analytics/internal/h;-><init>(Landroid/database/Cursor;)V

    .line 327
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_24} :catch_4f
    .catchall {:try_start_6 .. :try_end_24} :catchall_6a

    move-result v0

    if-nez v0, :cond_19

    .line 333
    :cond_27
    if-eqz v1, :cond_2c

    .line 334
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_2c
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_35

    .line 337
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 340
    :cond_35
    :goto_35
    const-string v0, "AnalyticsDB"

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

    .line 341
    return-object v2

    .line 330
    :catch_4f
    move-exception v0

    .line 331
    :try_start_50
    const-string v3, "AnalyticsDB"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "queryEvents e"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5b
    .catchall {:try_start_50 .. :try_end_5b} :catchall_6a

    .line 333
    if-eqz v1, :cond_60

    .line 334
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_60
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_35

    .line 337
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_35

    .line 333
    :catchall_6a
    move-exception v0

    if-eqz v1, :cond_70

    .line 334
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_70
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    if-eqz v1, :cond_79

    .line 337
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_79
    throw v0
.end method

.method public final c(Ljava/util/List;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/miui/analytics/internal/h;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 272
    const-string v0, "DeleteEvents"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/ab;->a(Ljava/lang/String;)V

    .line 273
    const-string v0, "AnalyticsDB"

    const-string v1, "delete "

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x0

    .line 276
    :try_start_e
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 277
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_69

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/analytics/internal/h;

    .line 280
    const-string v3, "delete from analytics where _id = %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/miui/analytics/internal/h;->g()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_4a} :catch_4b
    .catchall {:try_start_e .. :try_end_4a} :catchall_7e

    goto :goto_1e

    .line 283
    :catch_4b
    move-exception v0

    .line 284
    :try_start_4c
    const-string v2, "AnalyticsDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "delete event list e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_7e

    .line 286
    if-eqz v1, :cond_5c

    .line 288
    :try_start_59
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_93

    .line 292
    :cond_5c
    :goto_5c
    invoke-static {}, Lcom/miui/analytics/internal/f/ab;->a()V

    .line 293
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_68

    .line 294
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 297
    :cond_68
    :goto_68
    return v7

    .line 282
    :cond_69
    :try_start_69
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_4b
    .catchall {:try_start_69 .. :try_end_6c} :catchall_7e

    .line 286
    if-eqz v1, :cond_71

    .line 288
    :try_start_6e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_91

    .line 292
    :cond_71
    :goto_71
    invoke-static {}, Lcom/miui/analytics/internal/f/ab;->a()V

    .line 293
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_68

    .line 294
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_68

    .line 286
    :catchall_7e
    move-exception v0

    if-eqz v1, :cond_84

    .line 288
    :try_start_81
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_95

    .line 292
    :cond_84
    :goto_84
    invoke-static {}, Lcom/miui/analytics/internal/f/ab;->a()V

    .line 293
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    if-eqz v1, :cond_90

    .line 294
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->w:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_90
    throw v0

    :catch_91
    move-exception v0

    goto :goto_71

    :catch_93
    move-exception v0

    goto :goto_5c

    :catch_95
    move-exception v1

    goto :goto_84
.end method

.method public final d()J
    .registers 7

    .prologue
    .line 346
    const/4 v1, 0x0

    .line 348
    :try_start_1
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 349
    const-string v0, "select count(*) from analytics"

    invoke-direct {p0, v0}, Lcom/miui/analytics/internal/b/a;->a(Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_52
    .catchall {:try_start_1 .. :try_end_b} :catchall_6d

    move-result-object v2

    .line 350
    if-eqz v2, :cond_41

    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 351
    const-string v0, "AnalyticsDB"

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

    .line 352
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_31} :catch_83
    .catchall {:try_start_e .. :try_end_31} :catchall_7e

    move-result-wide v0

    .line 357
    if-eqz v2, :cond_37

    .line 358
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_37
    iget-object v2, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    if-eqz v2, :cond_40

    .line 361
    iget-object v2, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    :cond_40
    :goto_40
    return-wide v0

    .line 357
    :cond_41
    if-eqz v2, :cond_46

    .line 358
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_46
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_4f

    .line 361
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 364
    :cond_4f
    :goto_4f
    const-wide/16 v0, 0x0

    goto :goto_40

    .line 354
    :catch_52
    move-exception v0

    .line 355
    :goto_53
    :try_start_53
    const-string v2, "AnalyticsDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getCount e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5e
    .catchall {:try_start_53 .. :try_end_5e} :catchall_80

    .line 357
    if-eqz v1, :cond_63

    .line 358
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_63
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_4f

    .line 361
    iget-object v0, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4f

    .line 357
    :catchall_6d
    move-exception v0

    move-object v2, v1

    :goto_6f
    if-eqz v2, :cond_74

    .line 358
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 360
    :cond_74
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    if-eqz v1, :cond_7d

    .line 361
    iget-object v1, p0, Lcom/miui/analytics/internal/b/a;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_7d
    throw v0

    .line 357
    :catchall_7e
    move-exception v0

    goto :goto_6f

    :catchall_80
    move-exception v0

    move-object v2, v1

    goto :goto_6f

    .line 354
    :catch_83
    move-exception v0

    move-object v1, v2

    goto :goto_53
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 368
    invoke-virtual {p0}, Lcom/miui/analytics/internal/b/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_b

    .line 370
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 372
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public final onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    .prologue
    .line 83
    invoke-static {p1}, Lcom/miui/analytics/internal/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 84
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/analytics/internal/b/a;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 85
    return-void
.end method

.method public final onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    const-string v0, "AnalyticsDB"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "drop & create table when upgrade, db:%s, oldVersion:%d, newVersion:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "analytics.db"

    aput-object v3, v2, v5

    .line 108
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 107
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    const-string v0, "drop table if exists %s"

    new-array v1, v6, [Ljava/lang/Object;

    const-string v2, "analytics"

    aput-object v2, v1, v5

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    invoke-static {p1}, Lcom/miui/analytics/internal/b/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 113
    return-void
.end method

.method public final onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 13

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 89
    const-string v0, "AnalyticsDB"

    invoke-static {v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "upgrade db:%s, oldVersion:%d, newVersion:%d"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "analytics.db"

    aput-object v3, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    add-int/lit8 v0, p2, 0x1

    :goto_27
    if-gt v0, p3, :cond_74

    .line 91
    packed-switch v0, :pswitch_data_76

    .line 90
    :goto_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 95
    :pswitch_2f
    const-string v1, "alter table %s add column %s %s"

    new-array v2, v8, [Ljava/lang/Object;

    const-string v3, "analytics"

    aput-object v3, v2, v5

    const-string v3, "send_count"

    aput-object v3, v2, v6

    const-string v3, " INT DEFAULT(0)"

    aput-object v3, v2, v7

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 96
    const-string v2, "AnalyticsDB"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onUpgrade version "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :try_start_61
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_64} :catch_65
    .catchall {:try_start_61 .. :try_end_64} :catchall_72

    goto :goto_2c

    .line 1129
    :catch_65
    move-exception v1

    .line 1130
    :try_start_66
    const-string v2, "AnalyticsDB"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "exeSQL e:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_66 .. :try_end_71} :catchall_72

    goto :goto_2c

    .line 1131
    :catchall_72
    move-exception v0

    throw v0

    .line 103
    :cond_74
    return-void

    .line 91
    nop

    :pswitch_data_76
    .packed-switch 0x2
        :pswitch_2f
    .end packed-switch
.end method
