.class public Lcom/miui/analytics/internal/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/analytics/internal/a/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "UUsageHelper"

.field private static final b:Ljava/lang/String; = "usage_"

.field private static final c:Ljava/lang/String; = "usage_sequence_"

.field private static d:Ljava/lang/String; = "usage_sequence"

.field private static e:Ljava/lang/String; = "usage"

.field private static f:Ljava/lang/String; = "installed"

.field private static g:Ljava/lang/String; = "[]"

.field private static volatile h:Lcom/miui/analytics/internal/a/f;


# instance fields
.field private i:Landroid/content/Context;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    :try_start_3
    iput-object p1, p0, Lcom/miui/analytics/internal/a/f;->i:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/f;->b()Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    .line 61
    :goto_8
    return-void

    .line 58
    :catch_9
    move-exception v0

    .line 59
    const-string v1, "UUsageHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UploadUsageHelper exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;)Lcom/miui/analytics/internal/a/f;
    .registers 3

    .prologue
    .line 44
    sget-object v0, Lcom/miui/analytics/internal/a/f;->h:Lcom/miui/analytics/internal/a/f;

    if-nez v0, :cond_13

    .line 45
    const-class v1, Lcom/miui/analytics/internal/a/f;

    monitor-enter v1

    .line 46
    :try_start_7
    sget-object v0, Lcom/miui/analytics/internal/a/f;->h:Lcom/miui/analytics/internal/a/f;

    if-nez v0, :cond_12

    .line 47
    new-instance v0, Lcom/miui/analytics/internal/a/f;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/a/f;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/analytics/internal/a/f;->h:Lcom/miui/analytics/internal/a/f;

    .line 49
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 51
    :cond_13
    sget-object v0, Lcom/miui/analytics/internal/a/f;->h:Lcom/miui/analytics/internal/a/f;

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

.method private static a(Ljava/io/File;)Z
    .registers 4

    .prologue
    .line 261
    if-eqz p0, :cond_25

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 262
    const-string v0, "UUsageHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete file:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 265
    :goto_24
    return v0

    :cond_25
    const/4 v0, 0x0

    goto :goto_24
.end method

.method private b()Ljava/lang/String;
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/miui/analytics/internal/a/f;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/miui/analytics/internal/a/f;->i:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/analytics/internal/a/f;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/f;->j:Ljava/lang/String;

    .line 67
    :cond_27
    iget-object v0, p0, Lcom/miui/analytics/internal/a/f;->j:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/analytics/internal/a/f;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/miui/analytics/internal/a/f;->i:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/analytics/internal/a/f;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usageSequence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/f;->k:Ljava/lang/String;

    .line 74
    :cond_27
    iget-object v0, p0, Lcom/miui/analytics/internal/a/f;->k:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/miui/analytics/internal/a/f;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/miui/analytics/internal/a/f;->i:Landroid/content/Context;

    if-eqz v0, :cond_27

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/miui/analytics/internal/a/f;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/installed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/analytics/internal/a/f;->l:Ljava/lang/String;

    .line 81
    :cond_27
    iget-object v0, p0, Lcom/miui/analytics/internal/a/f;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 225
    const/4 v1, 0x0

    .line 227
    :try_start_1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/miui/analytics/internal/a/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_13

    const-string v0, "[]"

    .line 251
    :goto_12
    return-object v0

    .line 229
    :cond_13
    new-instance v3, Ljava/io/File;

    const-string v2, "installed"

    invoke-direct {v3, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 230
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "[]"

    goto :goto_12

    .line 231
    :cond_23
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_a3
    .catchall {:try_start_1 .. :try_end_2d} :catchall_8c

    .line 233
    :try_start_2d
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 234
    :goto_32
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_51

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_3c
    .catchall {:try_start_2d .. :try_end_3b} :catchall_a0

    goto :goto_32

    .line 240
    :catch_3c
    move-exception v0

    move-object v1, v2

    .line 241
    :goto_3e
    :try_start_3e
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstalledPackages e"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_8c

    .line 243
    if-eqz v1, :cond_4e

    .line 245
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4e} :catch_7f

    .line 251
    :cond_4e
    :goto_4e
    const-string v0, "[]"

    goto :goto_12

    .line 237
    :cond_51
    :try_start_51
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6e

    const-string v0, "[]"
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5d} :catch_3c
    .catchall {:try_start_51 .. :try_end_5d} :catchall_a0

    .line 245
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_12

    .line 246
    :catch_61
    move-exception v1

    .line 247
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstalledPackages close bufferedReader e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 245
    :cond_6e
    :try_start_6e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_12

    .line 246
    :catch_72
    move-exception v1

    .line 247
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstalledPackages close bufferedReader e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 246
    :catch_7f
    move-exception v0

    .line 247
    const-string v1, "UUsageHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getInstalledPackages close bufferedReader e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4e

    .line 243
    :catchall_8c
    move-exception v0

    :goto_8d
    if-eqz v1, :cond_92

    .line 245
    :try_start_8f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_92} :catch_93

    .line 248
    :cond_92
    :goto_92
    throw v0

    .line 246
    :catch_93
    move-exception v1

    .line 247
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getInstalledPackages close bufferedReader e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_92

    .line 243
    :catchall_a0
    move-exception v0

    move-object v1, v2

    goto :goto_8d

    .line 240
    :catch_a3
    move-exception v0

    goto :goto_3e
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 132
    const/4 v2, 0x0

    .line 134
    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 158
    :cond_8
    :goto_8
    return v0

    .line 137
    :cond_9
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/miui/analytics/internal/a/f;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 139
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 141
    :cond_1b
    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const-string v3, "installed"

    invoke-direct {v4, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_49
    .catchall {:try_start_2 .. :try_end_31} :catchall_68

    .line 144
    :try_start_31
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_37} :catch_7f
    .catchall {:try_start_31 .. :try_end_37} :catchall_7c

    .line 152
    :try_start_37
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3c

    .line 146
    :goto_3a
    const/4 v0, 0x1

    goto :goto_8

    .line 153
    :catch_3c
    move-exception v0

    .line 154
    const-string v1, "UUsageHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "saveInstalledPackages close bufferedWriter exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3a

    .line 147
    :catch_49
    move-exception v1

    .line 148
    :goto_4a
    :try_start_4a
    const-string v3, "UUsageHelper"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "saveInstalledPackages e"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4a .. :try_end_55} :catchall_68

    .line 150
    if-eqz v2, :cond_8

    .line 152
    :try_start_57
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_8

    .line 153
    :catch_5b
    move-exception v1

    .line 154
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "saveInstalledPackages close bufferedWriter exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 150
    :catchall_68
    move-exception v0

    :goto_69
    if-eqz v2, :cond_6e

    .line 152
    :try_start_6b
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_6e} :catch_6f

    .line 155
    :cond_6e
    :goto_6e
    throw v0

    .line 153
    :catch_6f
    move-exception v1

    .line 154
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "saveInstalledPackages close bufferedWriter exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6e

    .line 150
    :catchall_7c
    move-exception v0

    move-object v2, v3

    goto :goto_69

    .line 147
    :catch_7f
    move-exception v1

    move-object v2, v3

    goto :goto_4a
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .prologue
    const/4 v0, 0x0

    .line 91
    const/4 v2, 0x0

    .line 93
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/miui/analytics/internal/a/f;->i:Landroid/content/Context;

    if-nez v1, :cond_d

    .line 128
    :cond_c
    :goto_c
    return v0

    .line 96
    :cond_d
    new-instance v3, Ljava/io/File;

    const-string v1, "usage_sequence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    invoke-direct {p0}, Lcom/miui/analytics/internal/a/f;->c()Ljava/lang/String;

    move-result-object v1

    :goto_1b
    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_27

    .line 98
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 100
    :cond_27
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v6, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-gt v1, v4, :cond_98

    .line 103
    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->d()J

    move-result-wide v4

    .line 107
    :goto_3c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usage_sequence"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    const-string v1, "usage_sequence_"

    :goto_4b
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v6, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 110
    const-string v3, "t"

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    const-string v3, "u"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    const/4 v5, 0x0

    invoke-direct {v4, v6, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_83} :catch_ad
    .catchall {:try_start_2 .. :try_end_83} :catchall_ce

    .line 114
    :try_start_83
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8d} :catch_e5
    .catchall {:try_start_83 .. :try_end_8d} :catchall_e2

    .line 122
    :try_start_8d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_90} :catch_a0

    .line 116
    :goto_90
    const/4 v0, 0x1

    goto/16 :goto_c

    .line 96
    :cond_93
    :try_start_93
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/f;->b()Ljava/lang/String;

    move-result-object v1

    goto :goto_1b

    .line 105
    :cond_98
    invoke-static {}, Lcom/miui/analytics/internal/f/aa;->a()J

    move-result-wide v4

    goto :goto_3c

    .line 107
    :cond_9d
    const-string v1, "usage_"
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_9f} :catch_ad
    .catchall {:try_start_93 .. :try_end_9f} :catchall_ce

    goto :goto_4b

    .line 123
    :catch_a0
    move-exception v0

    .line 124
    const-string v1, "UUsageHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "save close bufferedWriter exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_90

    .line 117
    :catch_ad
    move-exception v1

    .line 118
    :goto_ae
    :try_start_ae
    const-string v3, "UUsageHelper"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "save exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b9
    .catchall {:try_start_ae .. :try_end_b9} :catchall_ce

    .line 120
    if-eqz v2, :cond_c

    .line 122
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_c0

    goto/16 :goto_c

    .line 123
    :catch_c0
    move-exception v1

    .line 124
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "save close bufferedWriter exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 120
    :catchall_ce
    move-exception v0

    :goto_cf
    if-eqz v2, :cond_d4

    .line 122
    :try_start_d1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_d1 .. :try_end_d4} :catch_d5

    .line 125
    :cond_d4
    :goto_d4
    throw v0

    .line 123
    :catch_d5
    move-exception v1

    .line 124
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "save close bufferedWriter exception"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d4

    .line 120
    :catchall_e2
    move-exception v0

    move-object v2, v3

    goto :goto_cf

    .line 117
    :catch_e5
    move-exception v1

    move-object v2, v3

    goto :goto_ae
.end method

.method public final b(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/analytics/internal/a/f$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v0, "usage_sequence"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0}, Lcom/miui/analytics/internal/a/f;->c()Ljava/lang/String;

    move-result-object v0

    :goto_e
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    .line 221
    :cond_18
    :goto_18
    return-object v0

    .line 168
    :cond_19
    invoke-direct {p0}, Lcom/miui/analytics/internal/a/f;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 170
    :cond_1e
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    .line 171
    if-eqz v5, :cond_27

    array-length v0, v5

    if-nez v0, :cond_29

    :cond_27
    const/4 v0, 0x0

    goto :goto_18

    .line 172
    :cond_29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    array-length v6, v5

    const/4 v1, 0x0

    move v4, v1

    :goto_31
    if-ge v4, v6, :cond_18

    aget-object v7, v5, v4

    .line 174
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_7d

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_81

    const/4 v1, 0x1

    move v2, v1

    :goto_43
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_a1

    move-result v1

    if-nez v1, :cond_84

    const/4 v1, 0x1

    :goto_4a
    or-int/2addr v1, v2

    if-nez v1, :cond_7d

    .line 175
    const/4 v3, 0x0

    .line 177
    :try_start_4e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_58} :catch_15f
    .catchall {:try_start_4e .. :try_end_58} :catchall_148

    .line 178
    :try_start_58
    new-instance v1, Lcom/miui/analytics/internal/a/f$a;

    invoke-direct {v1, p0}, Lcom/miui/analytics/internal/a/f$a;-><init>(Lcom/miui/analytics/internal/a/f;)V

    .line 180
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 181
    :goto_62
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_86

    .line 182
    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_6b} :catch_6c
    .catchall {:try_start_58 .. :try_end_6b} :catchall_15d

    goto :goto_62

    .line 205
    :catch_6c
    move-exception v1

    .line 206
    :goto_6d
    :try_start_6d
    const-string v3, "UUsageHelper"

    invoke-static {v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "getNotUploadUsageExceptToday exception"

    invoke-static {v3, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_78
    .catchall {:try_start_6d .. :try_end_78} :catchall_15d

    .line 208
    if-eqz v2, :cond_7d

    .line 210
    :try_start_7a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_13a

    .line 173
    :cond_7d
    :goto_7d
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_31

    .line 174
    :cond_81
    const/4 v1, 0x0

    move v2, v1

    goto :goto_43

    :cond_84
    const/4 v1, 0x0

    goto :goto_4a

    .line 184
    :cond_86
    :try_start_86
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8d} :catch_6c
    .catchall {:try_start_86 .. :try_end_8d} :catchall_15d

    move-result v8

    if-eqz v8, :cond_b0

    .line 210
    :try_start_90
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_93} :catch_94

    goto :goto_7d

    .line 211
    :catch_94
    move-exception v1

    .line 212
    :try_start_95
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getNotUploadUsageExceptToday close bufferedReader e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_a0} :catch_a1

    goto :goto_7d

    .line 218
    :catch_a1
    move-exception v0

    .line 219
    const-string v1, "UUsageHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getNotUploadUsageExceptToday exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    const/4 v0, 0x0

    goto/16 :goto_18

    .line 188
    :cond_b0
    :try_start_b0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    const-string v3, "t"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 191
    invoke-static {v10, v11}, Lcom/miui/analytics/internal/f/aa;->a(J)Z
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_be} :catch_6c
    .catchall {:try_start_b0 .. :try_end_be} :catchall_15d

    move-result v3

    if-eqz v3, :cond_d2

    .line 210
    :try_start_c1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c4} :catch_c5

    goto :goto_7d

    .line 211
    :catch_c5
    move-exception v1

    .line 212
    :try_start_c6
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getNotUploadUsageExceptToday close bufferedReader e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d1} :catch_a1

    goto :goto_7d

    .line 194
    :cond_d2
    :try_start_d2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long v10, v12, v10

    .line 196
    const v3, 0x5265c00

    invoke-static {}, Lcom/miui/analytics/internal/f/e;->c()I

    move-result v9

    mul-int/2addr v3, v9

    int-to-long v12, v3

    cmp-long v3, v10, v12

    if-lez v3, :cond_113

    .line 197
    invoke-static {v7}, Lcom/miui/analytics/internal/a/f;->a(Ljava/io/File;)Z

    .line 198
    const-string v1, "UUsageHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "\u914d\u7f6e\u7684\u4e22\u5f03\u5929\u6570\uff08\u9ed8\u8ba43\u5929\uff09\u4ee5\u524d\u7684usage\u6570\u636e\uff0c\u76f4\u63a5\u5220\u9664\u4e0d\u518d\u4e0a\u62a5:"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_100
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_100} :catch_6c
    .catchall {:try_start_d2 .. :try_end_100} :catchall_15d

    .line 210
    :try_start_100
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_103} :catch_105

    goto/16 :goto_7d

    .line 211
    :catch_105
    move-exception v1

    .line 212
    :try_start_106
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getNotUploadUsageExceptToday close bufferedReader e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_111} :catch_a1

    goto/16 :goto_7d

    .line 201
    :cond_113
    :try_start_113
    const-string v3, "u"

    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/analytics/internal/a/f$a;->c:Ljava/lang/String;

    .line 202
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 203
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/miui/analytics/internal/a/f$a;->b:Ljava/lang/String;

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_127} :catch_6c
    .catchall {:try_start_113 .. :try_end_127} :catchall_15d

    .line 210
    :try_start_127
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_12a
    .catch Ljava/lang/Exception; {:try_start_127 .. :try_end_12a} :catch_12c

    goto/16 :goto_7d

    .line 211
    :catch_12c
    move-exception v1

    .line 212
    :try_start_12d
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getNotUploadUsageExceptToday close bufferedReader e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7d

    .line 211
    :catch_13a
    move-exception v1

    .line 212
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getNotUploadUsageExceptToday close bufferedReader e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_146} :catch_a1

    goto/16 :goto_7d

    .line 208
    :catchall_148
    move-exception v0

    move-object v2, v3

    :goto_14a
    if-eqz v2, :cond_14f

    .line 210
    :try_start_14c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_14f
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_14f} :catch_150

    .line 213
    :cond_14f
    :goto_14f
    :try_start_14f
    throw v0

    .line 211
    :catch_150
    move-exception v1

    .line 212
    const-string v2, "UUsageHelper"

    invoke-static {v2}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getNotUploadUsageExceptToday close bufferedReader e"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_15c} :catch_a1

    goto :goto_14f

    .line 208
    :catchall_15d
    move-exception v0

    goto :goto_14a

    .line 205
    :catch_15f
    move-exception v1

    move-object v2, v3

    goto/16 :goto_6d
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 269
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 270
    invoke-static {v0}, Lcom/miui/analytics/internal/a/f;->a(Ljava/io/File;)Z

    move-result v0

    return v0
.end method
