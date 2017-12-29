.class public Lcom/miui/analytics/internal/f/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "FileStoreHelper"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    invoke-direct {p0, p1, v0, p2}, Lcom/miui/analytics/internal/f/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/analytics/internal/f/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 35
    :try_start_0
    iput-object p1, p0, Lcom/miui/analytics/internal/f/h;->d:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/miui/analytics/internal/f/h;->c:Ljava/lang/String;

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 38
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/f/h;->b:Ljava/lang/String;

    .line 42
    :goto_16
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/analytics/internal/f/h;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_26

    .line 44
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 46
    :cond_26
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/analytics/internal/f/h;->c:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    .line 47
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_40

    .line 48
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 53
    :cond_40
    :goto_40
    return-void

    .line 40
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/analytics/internal/f/h;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/f/h;->b:Ljava/lang/String;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_64} :catch_65

    goto :goto_16

    .line 50
    :catch_65
    move-exception v0

    .line 51
    const-string v1, "FileStoreHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "constructor e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method

.method static synthetic a(Lcom/miui/analytics/internal/f/h;ZLjava/lang/String;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/f/h;->b(ZLjava/lang/String;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 5

    .prologue
    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_15

    .line 67
    sget-object v0, Lcom/miui/analytics/internal/f/z;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/analytics/internal/f/h$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/analytics/internal/f/h$1;-><init>(Lcom/miui/analytics/internal/f/h;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 76
    :goto_14
    return-void

    .line 74
    :cond_15
    invoke-direct {p0, p1, p2}, Lcom/miui/analytics/internal/f/h;->b(ZLjava/lang/String;)V

    goto :goto_14
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 62
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/miui/analytics/internal/f/h;->a(ZLjava/lang/String;)V

    .line 63
    return-void
.end method

.method private b(ZLjava/lang/String;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 79
    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_e

    .line 84
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 87
    :cond_e
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v3, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_8b
    .catchall {:try_start_1 .. :try_end_17} :catchall_71

    .line 88
    :try_start_17
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_8f
    .catchall {:try_start_17 .. :try_end_1a} :catchall_86

    move-result-object v2

    .line 92
    :goto_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_45
    .catchall {:try_start_1b .. :try_end_1e} :catchall_89

    move-result-object v1

    .line 99
    if-eqz v1, :cond_37

    :try_start_21
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 100
    if-eqz p1, :cond_30

    .line 101
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 103
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 105
    :cond_30
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_37} :catch_53
    .catchall {:try_start_21 .. :try_end_37} :catchall_89

    .line 111
    :cond_37
    if-eqz v1, :cond_3c

    .line 112
    :try_start_39
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 114
    :cond_3c
    if-eqz v2, :cond_41

    .line 115
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 118
    :cond_41
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_92

    .line 123
    :cond_44
    :goto_44
    return-void

    .line 95
    :catch_45
    move-exception v0

    :try_start_46
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\u6709\u5176\u4ed6\u7ebf\u7a0b\u6b63\u5728\u64cd\u4f5c\u8be5\u6587\u4ef6"

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_52} :catch_53
    .catchall {:try_start_46 .. :try_end_52} :catchall_89

    goto :goto_1b

    .line 107
    :catch_53
    move-exception v0

    .line 108
    :goto_54
    :try_start_54
    const-string v4, "FileStoreHelper"

    invoke-static {v4}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "save e"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5f
    .catchall {:try_start_54 .. :try_end_5f} :catchall_89

    .line 111
    if-eqz v1, :cond_64

    .line 112
    :try_start_61
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 114
    :cond_64
    if-eqz v2, :cond_69

    .line 115
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 117
    :cond_69
    if-eqz v3, :cond_44

    .line 118
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_6e} :catch_6f

    goto :goto_44

    .line 123
    :catch_6f
    move-exception v0

    goto :goto_44

    .line 110
    :catchall_71
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    .line 111
    :goto_74
    if-eqz v1, :cond_79

    .line 112
    :try_start_76
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 114
    :cond_79
    if-eqz v2, :cond_7e

    .line 115
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 117
    :cond_7e
    if-eqz v3, :cond_83

    .line 118
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_83} :catch_84

    .line 122
    :cond_83
    :goto_83
    throw v0

    :catch_84
    move-exception v1

    goto :goto_83

    .line 110
    :catchall_86
    move-exception v0

    move-object v2, v1

    goto :goto_74

    :catchall_89
    move-exception v0

    goto :goto_74

    .line 107
    :catch_8b
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_54

    :catch_8f
    move-exception v0

    move-object v2, v1

    goto :goto_54

    .line 123
    :catch_92
    move-exception v0

    goto :goto_44
.end method

.method private b()Z
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 178
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 180
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private c()J
    .registers 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 185
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 187
    :goto_12
    return-wide v0

    :cond_13
    const-wide/16 v0, 0x0

    goto :goto_12
.end method

.method private d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 192
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 194
    :goto_12
    return-object v0

    :cond_13
    const-string v0, ""

    goto :goto_12
.end method

.method private e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/miui/analytics/internal/f/h;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 128
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_16

    .line 129
    const-string v1, "FileStoreHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u60a8\u73b0\u5728\u5728\u4e3b\u7ebf\u7a0b\u8fdb\u884c\u4e86\u6587\u4ef6\u7684\u8bfb\u53d6\u64cd\u4f5c\uff0c\u8bf7\u5f02\u6b65\u6267\u884c\u8be5\u64cd\u4f5c\uff01\uff01\uff01"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_16
    :try_start_16
    new-instance v3, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/miui/analytics/internal/f/h;->e:Ljava/io/File;

    const-string v2, "rw"

    invoke-direct {v3, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_b1
    .catchall {:try_start_16 .. :try_end_1f} :catchall_8a

    .line 137
    :try_start_1f
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_b5
    .catchall {:try_start_1f .. :try_end_22} :catchall_a2

    move-result-object v2

    .line 140
    :goto_23
    :try_start_23
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->tryLock()Ljava/nio/channels/FileLock;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_26} :catch_54
    .catchall {:try_start_23 .. :try_end_26} :catchall_a8

    move-result-object v1

    .line 147
    if-eqz v1, :cond_7a

    :try_start_29
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 150
    :goto_34
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 151
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3d} :catch_3e
    .catchall {:try_start_29 .. :try_end_3d} :catchall_ad

    goto :goto_34

    :catch_3e
    move-exception v0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 159
    :goto_42
    if-eqz v0, :cond_47

    .line 160
    :try_start_44
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V

    .line 162
    :cond_47
    if-eqz v1, :cond_4c

    .line 163
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 165
    :cond_4c
    if-eqz v2, :cond_51

    .line 166
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_51} :catch_af

    .line 172
    :cond_51
    :goto_51
    const-string v0, ""

    :goto_53
    return-object v0

    .line 143
    :catch_54
    move-exception v1

    :try_start_55
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\u6709\u5176\u4ed6\u7ebf\u7a0b\u6b63\u5728\u64cd\u4f5c\u8be5\u6587\u4ef6\uff0c\u5f53\u524d\u7ebf\u7a0b\u4f11\u77201000\u6beb\u79d2"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_61} :catch_62
    .catchall {:try_start_55 .. :try_end_61} :catchall_a8

    goto :goto_23

    :catch_62
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_42

    .line 153
    :cond_66
    :try_start_66
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_3e
    .catchall {:try_start_66 .. :try_end_69} :catchall_ad

    move-result-object v0

    .line 159
    if-eqz v1, :cond_6f

    .line 160
    :try_start_6c
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 162
    :cond_6f
    if-eqz v2, :cond_74

    .line 163
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 166
    :cond_74
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_77} :catch_78

    goto :goto_53

    :catch_78
    move-exception v1

    goto :goto_53

    .line 159
    :cond_7a
    if-eqz v1, :cond_7f

    .line 160
    :try_start_7c
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 162
    :cond_7f
    if-eqz v2, :cond_84

    .line 163
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 166
    :cond_84
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_87} :catch_88

    goto :goto_51

    .line 171
    :catch_88
    move-exception v0

    goto :goto_51

    .line 158
    :catchall_8a
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 159
    :goto_90
    if-eqz v1, :cond_95

    .line 160
    :try_start_92
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V

    .line 162
    :cond_95
    if-eqz v2, :cond_9a

    .line 163
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 165
    :cond_9a
    if-eqz v3, :cond_9f

    .line 166
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9f} :catch_a0

    .line 170
    :cond_9f
    :goto_9f
    throw v0

    :catch_a0
    move-exception v1

    goto :goto_9f

    .line 158
    :catchall_a2
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_90

    :catchall_a8
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_90

    :catchall_ad
    move-exception v0

    goto :goto_90

    .line 171
    :catch_af
    move-exception v0

    goto :goto_51

    :catch_b1
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto :goto_42

    :catch_b5
    move-exception v1

    move-object v1, v0

    move-object v2, v3

    goto :goto_42
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/miui/analytics/internal/f/h;->a(ZLjava/lang/String;)V

    .line 58
    return-void
.end method
