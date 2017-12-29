.class public Lcom/miui/analytics/internal/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Ljava/lang/String; = "ObjectStore"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/io/InputStream;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILjava/io/InputStream;)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/analytics/internal/e/f;->b:I

    .line 14
    iput p1, p0, Lcom/miui/analytics/internal/e/f;->a:I

    .line 15
    iput-object p3, p0, Lcom/miui/analytics/internal/e/f;->c:Ljava/io/InputStream;

    .line 16
    iput p2, p0, Lcom/miui/analytics/internal/e/f;->b:I

    .line 17
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 1013
    .line 1015
    :try_start_1
    new-instance v2, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_2d

    .line 1016
    :try_start_b
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_36
    .catchall {:try_start_b .. :try_end_e} :catchall_34

    move-result-object v0

    .line 1020
    invoke-static {v2}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 1022
    :goto_12
    return-object v0

    .line 1017
    :catch_13
    move-exception v1

    move-object v2, v0

    .line 1018
    :goto_15
    :try_start_15
    const-string v3, "ObjectStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "failed to read object from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_34

    .line 1020
    invoke-static {v2}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_12

    :catchall_2d
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_30
    invoke-static {v2}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_34
    move-exception v0

    goto :goto_30

    .line 1017
    :catch_36
    move-exception v1

    goto :goto_15
.end method

.method public static a(Ljava/lang/String;Ljava/io/Serializable;)Z
    .registers 7

    .prologue
    .line 1026
    const/4 v2, 0x0

    .line 1028
    :try_start_1
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_13
    .catchall {:try_start_1 .. :try_end_b} :catchall_2e

    .line 1029
    :try_start_b
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_36
    .catchall {:try_start_b .. :try_end_e} :catchall_34

    .line 1034
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 1030
    const/4 v0, 0x1

    .line 1036
    :goto_12
    return v0

    .line 1031
    :catch_13
    move-exception v0

    move-object v1, v2

    .line 1032
    :goto_15
    :try_start_15
    const-string v2, "ObjectStore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to write object to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_29
    .catchall {:try_start_15 .. :try_end_29} :catchall_34

    .line 1034
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    .line 1036
    const/4 v0, 0x0

    goto :goto_12

    .line 1034
    :catchall_2e
    move-exception v0

    move-object v1, v2

    :goto_30
    invoke-static {v1}, Lcom/miui/analytics/internal/d/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_34
    move-exception v0

    goto :goto_30

    .line 1031
    :catch_36
    move-exception v0

    goto :goto_15
.end method

.method private b()Z
    .registers 3

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/analytics/internal/e/f;->a:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private c()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/miui/analytics/internal/e/f;->b:I

    return v0
.end method


# virtual methods
.method public final a()Ljava/io/InputStream;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/miui/analytics/internal/e/f;->c:Ljava/io/InputStream;

    return-object v0
.end method
