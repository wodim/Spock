.class public Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

.field private static final KEY_TYPE_FINANCIAL:I = 0x0

.field private static final KEY_TYPE_ORDINARY:I = 0x1

.field private static final RETRY_GET_SERVICE_INTERVAL_MILLISEC:J = 0x1f4L

.field private static final RETRY_ON_HARDWARE_SERVICE_NOT_AVAILABLE_INTERVAL_MILLISEC:J = 0x1f4L

.field public static final SERVICE_NAME:Ljava/lang/String; = "miui.sedc"

.field private static final TAG:Ljava/lang/String; = "SecurityDeviceCredentialManager"

.field public static final TRANSACTION_forceReload:I = 0x4

.field public static final TRANSACTION_getSecurityDeviceId:I = 0x2

.field public static final TRANSACTION_isThisDeviceSupported:I = 0x1

.field public static final TRANSACTION_sign:I = 0x3

.field private static sService:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static forceReload()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v1

    .line 158
    :goto_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 161
    :try_start_c
    const-string v0, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 162
    const/4 v0, 0x4

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 163
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 164
    invoke-static {v3}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->readResultCode(Landroid/os/Parcel;)V
    :try_end_1c
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_c .. :try_end_1c} :catch_23
    .catchall {:try_start_c .. :try_end_1c} :catchall_2b

    .line 171
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 166
    :catch_23
    move-exception v0

    .line 167
    :try_start_24
    iget v4, v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v5, -0x65

    if-eq v4, v5, :cond_33

    .line 168
    throw v0
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_2b

    .line 171
    :catchall_2b
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 171
    :cond_33
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 172
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 175
    const-string v0, "SecurityDeviceCredentialManager"

    const-string v2, "forceReload: Hardware service not ready, retry..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_4
.end method

.method public static getSecurityDeviceId()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v1

    .line 77
    :goto_4
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 80
    :try_start_c
    const-string v0, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x2

    const/4 v4, 0x0

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 82
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 83
    invoke-static {v3}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->readResultCode(Landroid/os/Parcel;)V

    .line 84
    invoke-virtual {v3}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1f
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_c .. :try_end_1f} :catch_27
    .catchall {:try_start_c .. :try_end_1f} :catchall_2f

    move-result-object v0

    .line 90
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 91
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    return-object v0

    .line 85
    :catch_27
    move-exception v0

    .line 86
    :try_start_28
    iget v4, v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v5, -0x65

    if-eq v4, v5, :cond_37

    .line 87
    throw v0
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_2f

    .line 90
    :catchall_2f
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 91
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 90
    :cond_37
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 91
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 94
    const-string v0, "SecurityDeviceCredentialManager"

    const-string v2, "getSecurityDeviceId: Hardware service not ready, retry..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_4
.end method

.method private static declared-synchronized getService()Landroid/os/IBinder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 184
    const-class v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;

    monitor-enter v1

    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_14

    .line 185
    new-instance v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    const/16 v2, -0x64

    invoke-direct {v0, v2}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_11

    .line 184
    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0

    .line 188
    :cond_14
    const/4 v0, 0x0

    .line 189
    :try_start_15
    sget-object v2, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;

    if-eqz v2, :cond_46

    .line 190
    const-string v0, "SecurityDeviceCredentialManager"

    const-string v2, "getService: sService != null. "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    sget-object v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    .line 196
    :goto_26
    if-nez v0, :cond_4e

    .line 197
    const-string v0, "SecurityDeviceCredentialManager"

    const-string v2, "getService: binder not alive. "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_2f
    const-string v0, "miui.sedc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 201
    sput-object v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;

    if-nez v0, :cond_55

    .line 202
    const-string v0, "SecurityDeviceCredentialManager"

    const-string v2, "getService: NULL binder, retry..."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_2f

    .line 193
    :cond_46
    const-string v2, "SecurityDeviceCredentialManager"

    const-string v3, "getService: sService == null. "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 207
    :cond_4e
    const-string v0, "SecurityDeviceCredentialManager"

    const-string v2, "getService: binder alive. "

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_55
    sget-object v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sService:Landroid/os/IBinder;
    :try_end_57
    .catchall {:try_start_15 .. :try_end_57} :catchall_11

    monitor-exit v1

    return-object v0
.end method

.method public static isThisDeviceSupported()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 55
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v2

    .line 57
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 60
    :try_start_e
    const-string v5, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 61
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 62
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 63
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_2a

    move-result v2

    if-eqz v2, :cond_28

    .line 65
    :goto_21
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 66
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_28
    move v0, v1

    .line 63
    goto :goto_21

    .line 65
    :catchall_2a
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 66
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method private static readResultCode(Landroid/os/Parcel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 215
    if-nez v0, :cond_7

    return-void

    .line 216
    :cond_7
    new-instance v1, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;

    invoke-direct {v1, v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;-><init>(I)V

    throw v1
.end method

.method public static sign(I[BZ)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/InterruptedException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-static {}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->getService()Landroid/os/IBinder;

    move-result-object v2

    .line 106
    :goto_5
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 109
    :try_start_d
    const-string v0, "com.xiaomi.security.devicecredential.ISecurityDeviceCredentialManager"

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 112
    if-eqz p2, :cond_34

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {v3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v0, 0x3

    const/4 v5, 0x0

    invoke-interface {v2, v0, v3, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 114
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 115
    invoke-static {v4}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->readResultCode(Landroid/os/Parcel;)V

    .line 116
    invoke-virtual {v4}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_2c
    .catch Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException; {:try_start_d .. :try_end_2c} :catch_36
    .catchall {:try_start_d .. :try_end_2c} :catchall_3e

    move-result-object v0

    .line 122
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :cond_34
    move v0, v1

    .line 112
    goto :goto_1b

    .line 117
    :catch_36
    move-exception v0

    .line 118
    :try_start_37
    iget v5, v0, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;->errorCode:I

    const/16 v6, -0x65

    if-eq v5, v6, :cond_46

    .line 119
    throw v0
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_3e

    .line 122
    :catchall_3e
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 122
    :cond_46
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 123
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 126
    const-string v0, "SecurityDeviceCredentialManager"

    const-string v3, "sign: Hardware service not ready, retry..."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_5
.end method

.method public static signWithDeviceCredential([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sign(I[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static signWithDeviceCredential([BZ)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sign(I[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static signWithFinancialCredential([B)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 143
    invoke-static {v0, p0, v0}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sign(I[BZ)[B

    move-result-object v0

    return-object v0
.end method

.method public static signWithFinancialCredential([BZ)[B
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Landroid/os/RemoteException;,
            Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager$OperationFailedException;
        }
    .end annotation

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/xiaomi/security/devicecredential/SecurityDeviceCredentialManager;->sign(I[BZ)[B

    move-result-object v0

    return-object v0
.end method
