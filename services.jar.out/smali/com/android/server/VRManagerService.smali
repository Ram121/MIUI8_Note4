.class public Lcom/android/server/VRManagerService;
.super Lcom/android/internal/app/IVRManagerService$Stub;
.source "VRManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VRManagerService$VRRecord;,
        Lcom/android/server/VRManagerService$DeviceEventHandler;
    }
.end annotation


# static fields
.field public static final ACTION_HMT_CONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_CONNECTED"

.field public static final ACTION_HMT_DISCONNECTED:Ljava/lang/String; = "com.samsung.intent.action.HMT_DISCONNECTED"

.field public static final ACTION_HMT_MOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_MOUNT"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITHOUT_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

.field public static final ACTION_HMT_SENSOR_BOOTING_WITH_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

.field public static final ACTION_HMT_SENSOR_CONNECTED_TA:Ljava/lang/String; = "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

.field public static final ACTION_HMT_UNMOUNT:Ljava/lang/String; = "com.samsung.intent.action.HMT_UNMOUNT"

.field private static final EPEN_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_epen/input/enabled"

.field private static final MESSAGE_DEVICE_EVENT:I = 0x1

.field private static final MESSAGE_UNBIND_VR_SERVICE:I = 0x0

.field private static final SCHED_RESET_ON_FORK:I = 0x40000000

.field private static final TAG:Ljava/lang/String; = "VRManagerService"

.field private static final TOUCHKEY_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/sec_touchkey/input/enabled"

.field private static final TSP_INPUT_ENABLED_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/input/enabled"

.field private static final VR_UNDOCK_TIMEOUT:I = 0xea60


# instance fields
.field private connectionCount:I

.field private mAfControl:Landroid/sec/performance/AffinityControl;

.field private mContext:Landroid/content/Context;

.field private mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

.field private mDeviceEventLooper:Landroid/os/Looper;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerLock:Ljava/lang/Object;

.field private mLock:Ljava/lang/Object;

.field private mVRRecord:Lcom/android/server/VRManagerService$VRRecord;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/internal/app/IVRManagerService$Stub;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mHandlerLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    .line 71
    new-instance v0, Lcom/android/server/VRManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VRManagerService$1;-><init>(Lcom/android/server/VRManagerService;)V

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    .line 110
    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService Constructor ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iput-object p1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VRManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VRManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->stopVR()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/VRManagerService;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/VRManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/VRManagerService;->handleDeviceEventChanged(III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/VRManagerService;)Lcom/android/server/VRManagerService$VRRecord;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/VRManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/VRManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelInit()V
    .locals 3

    .prologue
    .line 976
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 977
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    if-eqz v0, :cond_0

    .line 978
    const-string v0, "VRManagerService"

    const-string v2, "cancelInit() mDeviceEventHandler"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/VRManagerService$DeviceEventHandler;->removeMessages(I)V

    .line 980
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    .line 985
    :goto_0
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1

    .line 986
    const-string v0, "VRManagerService"

    const-string v2, "cancelInit() mDeviceEventLooper"

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 988
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    .line 992
    :goto_1
    monitor-exit v1

    .line 993
    return-void

    .line 982
    :cond_0
    const-string v0, "VRManagerService"

    const-string/jumbo v2, "mDeviceEventHandler=null ignored."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 992
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 990
    :cond_1
    :try_start_1
    const-string v0, "VRManagerService"

    const-string/jumbo v2, "mDeviceEventLooper=null ignored."

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static ensureNotOnMainThread(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 246
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_0
    return-void
.end method

.method private getService()Lcom/android/internal/app/IVRManagerService;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 253
    :try_start_0
    iget v1, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    .line 254
    iget v1, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 255
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many requests. connectionCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    :catch_0
    move-exception v1

    .line 276
    iget v1, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    .line 278
    :goto_0
    return-object v0

    .line 257
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    :try_start_2
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v1}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->stopVR()V

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v1, :cond_2

    .line 264
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->startVR()V

    .line 266
    :cond_2
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v1, :cond_3

    .line 268
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    iget v1, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    goto :goto_0

    .line 271
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v1}, Lcom/android/server/VRManagerService$VRRecord;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 276
    iget v0, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    move-object v0, v1

    goto :goto_0

    .line 273
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 276
    :catchall_1
    move-exception v0

    iget v1, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/VRManagerService;->connectionCount:I

    throw v0
.end method

.method private handleDeviceEventChanged(III)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .prologue
    .line 908
    const-string/jumbo v2, "handleDeviceEventChanged"

    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/VRManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    .line 909
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleDeviceEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 912
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 913
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->notifyDeviceEventChanged(I)V

    .line 920
    :goto_0
    return-void

    .line 915
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/VRManagerService;->handleDeviceEventChangedForFactory(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 917
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 918
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleDeviceEventChangedForFactory(I)V
    .locals 6
    .param p1, "event"    # I

    .prologue
    const/high16 v5, 0x20000000

    const/high16 v4, 0x40000000    # 2.0f

    .line 923
    const-string v1, "VRManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDeviceEventChangedForFactory  event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 925
    .local v0, "intent":Landroid/content/Intent;
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 926
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 927
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 928
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 953
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 954
    return-void

    .line 929
    :cond_1
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_2

    .line 930
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 931
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 932
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 933
    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    .line 934
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 935
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 936
    const-string v1, "android.intent.extra.DOCK_STATE"

    const/16 v2, 0x6a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 937
    :cond_3
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 938
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 939
    const-string v1, "com.samsung.intent.action.HMT_MOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 940
    :cond_4
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_5

    .line 941
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 942
    const-string v1, "com.samsung.intent.action.HMT_UNMOUNT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 943
    :cond_5
    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_6

    .line 944
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 945
    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITHOUT_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 946
    :cond_6
    and-int/lit16 v1, p1, 0x200

    if-eqz v1, :cond_7

    .line 947
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 948
    const-string v1, "com.samsung.intent.action.HMT_SENSOR_BOOTING_WITH_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 949
    :cond_7
    and-int/lit16 v1, p1, 0x400

    if-eqz v1, :cond_0

    .line 950
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 951
    const-string v1, "com.samsung.intent.action.HMT_SENSOR_CONNECTED_TA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private isSystemEPenEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 864
    const-string/jumbo v3, "isSystemEPenEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 866
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 867
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 870
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 867
    goto :goto_0

    .line 869
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "isSystemEPenEnabled() Unable to find /sys/class/sec/sec_epen/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 870
    goto :goto_0

    .line 872
    :catch_0
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 874
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 875
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSystemTouchKeyEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 835
    const-string/jumbo v3, "isSystemTouchKeyEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 837
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 838
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 841
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 838
    goto :goto_0

    .line 840
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "isSystemTouchKeyEnabled() Unable to find /sys/class/sec/sec_touchkey/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 841
    goto :goto_0

    .line 843
    :catch_0
    move-exception v0

    .line 844
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 845
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 846
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isSystemTouchSceenPanelEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 806
    const-string/jumbo v3, "isSystemTouchSceenPanelEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 808
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 809
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 812
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 809
    goto :goto_0

    .line 811
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "isSystemTouchSceenPanelEnabled() Unable to find /sys/class/sec/tsp/input/enabled file"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v2

    .line 812
    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 816
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 817
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private requestInit()V
    .locals 4

    .prologue
    .line 957
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 959
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    if-nez v1, :cond_0

    .line 960
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "requestInit()"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HMT VR DeviceEvent Handler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 963
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 965
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    .line 966
    iget-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    if-eqz v1, :cond_1

    .line 967
    new-instance v1, Lcom/android/server/VRManagerService$DeviceEventHandler;

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mDeviceEventLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v3}, Lcom/android/server/VRManagerService$DeviceEventHandler;-><init>(Lcom/android/server/VRManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    .line 972
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    :goto_0
    monitor-exit v2

    .line 973
    return-void

    .line 969
    .restart local v0    # "thread":Landroid/os/HandlerThread;
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v3, "mSensorLooper is null! ignored!"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 972
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private scheduleThreadFIFO(Ljava/lang/String;III)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 328
    const-string/jumbo v2, "scheduleThreadFIFO"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 330
    const/4 v1, 0x0

    .line 332
    .local v1, "result":Z
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- elevateProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const/4 v2, 0x3

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    .line 336
    const v2, 0x40000001    # 2.0000002f

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    const/4 v1, 0x1

    .line 342
    :goto_0
    return v1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleThreadOTHER(Ljava/lang/String;III)Z
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    .line 346
    const-string/jumbo v2, "scheduleThreadOTHER"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 348
    const/4 v1, 0x0

    .line 350
    .local v1, "result":Z
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---- demoteProcessThread \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' requestPriority(pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", prio="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v2, 0x3

    :try_start_0
    invoke-static {p3, v2}, Landroid/os/Process;->setThreadGroup(II)V

    .line 354
    const/4 v2, 0x0

    invoke-static {p3, v2, p4}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    const/4 v1, 0x1

    .line 360
    :goto_0
    return v1

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v2, "VRManagerService"

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSystemEPenEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 851
    const-string/jumbo v1, "setSystemEPenEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 853
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_epen/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 854
    const-string v2, "/sys/class/sec/sec_epen/input/enabled"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :goto_1
    return-void

    .line 854
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 856
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v2, "setSystemEPenEnabled() Unable to find /sys/class/sec/sec_epen/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 858
    :catch_0
    move-exception v0

    .line 859
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSystemMouseControlType(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 996
    const-string/jumbo v1, "setSystemMouseControlType"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 997
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .line 998
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseControlType(I)V

    .line 1001
    :cond_0
    return-void
.end method

.method private setSystemShowMouseEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 880
    const-string/jumbo v1, "setSystemShowMouseEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 881
    const-class v1, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    .line 882
    .local v0, "inputManagerInternal":Landroid/hardware/input/InputManagerInternal;
    if-eqz v0, :cond_0

    .line 883
    invoke-virtual {v0, p1}, Landroid/hardware/input/InputManagerInternal;->setMouseCursorVisibility(Z)V

    .line 885
    :cond_0
    return-void
.end method

.method private setSystemTouchKeyEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 822
    const-string/jumbo v1, "setSystemTouchKeyEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 824
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/sec_touchkey/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 825
    const-string v2, "/sys/class/sec/sec_touchkey/input/enabled"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :goto_1
    return-void

    .line 825
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 827
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v2, "setSystemTouchKeyEnabled() Unable to find /sys/class/sec/sec_touchkey/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setSystemTouchSceenPanelEnabled(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 792
    const-string/jumbo v1, "setSystemTouchSceenPanelEnabled"

    invoke-virtual {p0, v1}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 795
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/input/enabled"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    const-string v2, "/sys/class/sec/tsp/input/enabled"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-static {v2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    :goto_1
    return-void

    .line 796
    :cond_0
    const-string v1, "0"

    goto :goto_0

    .line 798
    :cond_1
    const-string v1, "VRManagerService"

    const-string/jumbo v2, "setSystemTouchSceenPanelEnabled() Unable to find /sys/class/sec/tsp/input/enabled file"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private startVR()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 119
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR()"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v6, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/VRManagerService;->ensureNotOnMainThread(Landroid/content/Context;)V

    .line 123
    new-instance v5, Lcom/android/server/VRManagerService$VRRecord;

    invoke-direct {v5, p0, v9}, Lcom/android/server/VRManagerService$VRRecord;-><init>(Lcom/android/server/VRManagerService;Lcom/android/server/VRManagerService$1;)V

    .line 125
    .local v5, "vrRecord":Lcom/android/server/VRManagerService$VRRecord;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 128
    .local v2, "ident":J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android"

    const-string v8, "com.samsung.android.hmt.vrsvc"

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 129
    .local v4, "result":I
    if-nez v4, :cond_0

    .line 130
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.android.hmt.vrsvc"

    const-string v7, "com.samsung.android.hmt.vrsvc.system.VRSystemService"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v6, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v6, v1, v5, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    iget-boolean v6, v5, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    if-nez v6, :cond_1

    .line 142
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR() Unable to bind VRSystemService"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-object v9, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    .line 159
    :goto_1
    return-void

    .line 135
    :cond_0
    :try_start_1
    const-string v6, "VRManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startVR() check signatures failed. result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    .end local v4    # "result":I
    :catchall_0
    move-exception v6

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6

    .line 145
    .restart local v4    # "result":I
    :cond_1
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR() Take iVRManagerService... start"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-object v5, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    .line 147
    iget-object v6, v5, Lcom/android/server/VRManagerService$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/IVRManagerService;

    # setter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v5, v6}, Lcom/android/server/VRManagerService$VRRecord;->access$402(Lcom/android/server/VRManagerService$VRRecord;Lcom/android/internal/app/IVRManagerService;)Lcom/android/internal/app/IVRManagerService;

    .line 148
    const-string v6, "VRManagerService"

    const-string/jumbo v7, "startVR() Take iVRManagerService... ok!"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :try_start_2
    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v5}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v6, "VRManagerService"

    const-string v7, "The VRConnection died unexpectedly."

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 155
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->stopVR()V

    goto :goto_1
.end method

.method private stopVR()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 162
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-nez v0, :cond_1

    .line 163
    const-string v0, "VRManagerService"

    const-string/jumbo v1, "stopVR() already stopped."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const-string v0, "VRManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopVR() mBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v2, v2, Lcom/android/server/VRManagerService$VRRecord;->mConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " iVRManagerService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v2}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->cancelInit()V

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IVRManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 178
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v0, v1}, Lcom/android/server/VRManagerService$VRRecord;->access$402(Lcom/android/server/VRManagerService$VRRecord;Lcom/android/internal/app/IVRManagerService;)Lcom/android/internal/app/IVRManagerService;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v0, v0, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 185
    iput-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public GetPowerLevelState()I
    .locals 4

    .prologue
    .line 518
    const-string v3, "GetPowerLevelState"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 519
    const/4 v1, -0x1

    .line 521
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 522
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 523
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->GetPowerLevelState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 529
    :cond_0
    return v1

    .line 525
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 526
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public SetVrClocks(Ljava/lang/String;II)[I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cpu"    # I
    .param p3, "gpu"    # I

    .prologue
    const/4 v4, 0x0

    .line 502
    const-string v3, "SetVrClocks"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 503
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 507
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 508
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 509
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->SetVrClocks(Ljava/lang/String;II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 514
    :cond_0
    return-object v1

    .line 511
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 512
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1025
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump VRManagerService(system_process) from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    :goto_0
    return-void

    .line 1030
    :cond_0
    const-string v2, "VR MANAGER (dumpsys vr)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    if-eqz v2, :cond_2

    .line 1033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/VRManagerService$VRRecord;->mBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1035
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-boolean v3, v3, Lcom/android/server/VRManagerService$VRRecord;->mConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.q.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    iget-object v3, v3, Lcom/android/server/VRManagerService$VRRecord;->q:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.iVRManagerService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->iVRManagerService:Lcom/android/internal/app/IVRManagerService;
    invoke-static {v3}, Lcom/android/server/VRManagerService$VRRecord;->access$400(Lcom/android/server/VRManagerService$VRRecord;)Lcom/android/internal/app/IVRManagerService;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1039
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mVRRecord:Lcom/android/server/VRManagerService$VRRecord;

    # getter for: Lcom/android/server/VRManagerService$VRRecord;->mBinder:Landroid/os/IBinder;
    invoke-static {v2}, Lcom/android/server/VRManagerService$VRRecord;->access$700(Lcom/android/server/VRManagerService$VRRecord;)Landroid/os/IBinder;

    move-result-object v0

    .line 1040
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 1042
    :try_start_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1043
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1044
    invoke-interface {v0, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1045
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  mVRRecord.mBinder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1049
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "  mVRRecord.mBinder=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1052
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_2
    const-string v2, "  mVRRecord=null"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public enforceCallingPermission(IILjava/lang/String;)V
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "method"    # Ljava/lang/String;

    .prologue
    .line 1014
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 1015
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 1016
    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->enforceCallingPermission(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :cond_0
    return-void

    .line 1018
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public enforceCallingSelfPermission(Ljava/lang/String;)V
    .locals 2
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 1007
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1008
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1009
    .local v1, "uid":I
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/VRManagerService;->enforceCallingPermission(IILjava/lang/String;)V

    .line 1010
    return-void
.end method

.method public getOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "optionName"    # Ljava/lang/String;

    .prologue
    .line 399
    const-string/jumbo v3, "getOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 400
    const/4 v1, 0x0

    .line 402
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 403
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 404
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 410
    :cond_0
    return-object v1

    .line 406
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 407
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "option"    # Ljava/lang/String;

    .prologue
    .line 588
    const-string/jumbo v3, "getSystemOption"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 589
    const/4 v1, 0x0

    .line 592
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 593
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 594
    const-string/jumbo v3, "tsp_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 595
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->isSystemTouchSceenPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "1"

    .line 608
    :cond_0
    :goto_0
    return-object v1

    .line 595
    :cond_1
    const-string v1, "0"

    goto :goto_0

    .line 596
    :cond_2
    const-string/jumbo v3, "touchkey_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 597
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->isSystemTouchKeyEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v1, "1"

    :goto_1
    goto :goto_0

    :cond_3
    const-string v1, "0"

    goto :goto_1

    .line 598
    :cond_4
    const-string/jumbo v3, "epen_enabled"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 599
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->isSystemEPenEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v1, "1"

    :goto_2
    goto :goto_0

    :cond_5
    const-string v1, "0"

    goto :goto_2

    .line 601
    :cond_6
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->getSystemOption(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 604
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 605
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRBright()I
    .locals 4

    .prologue
    .line 652
    const-string/jumbo v3, "getVRBright"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 653
    const/4 v1, 0x0

    .line 656
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 657
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 658
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRBright()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 664
    :cond_0
    return v1

    .line 660
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 661
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getVRColorTemperature()I
    .locals 4

    .prologue
    .line 680
    const-string/jumbo v3, "getVRColorTemperature"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 681
    const/4 v1, 0x0

    .line 684
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 685
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 686
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->getVRColorTemperature()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 692
    :cond_0
    return v1

    .line 688
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 689
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isConnected()Z
    .locals 4

    .prologue
    .line 282
    const-string/jumbo v3, "isConnected"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 286
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 287
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isConnected()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 293
    :cond_0
    return v1

    .line 289
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 290
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isDevelopermode()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 297
    iget-object v3, p0, Lcom/android/server/VRManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "vrmode_developer_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 298
    .local v0, "developerMode":I
    const-string v3, "VRManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDevelopermode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-ne v0, v1, :cond_0

    .line 302
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public isVRComfortableViewEnabled()Z
    .locals 4

    .prologue
    .line 736
    const-string/jumbo v3, "isVRComfortableViewEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 737
    const/4 v1, 0x0

    .line 740
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 741
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 742
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRComfortableViewEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 748
    :cond_0
    return v1

    .line 744
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 745
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRDarkAdaptationEnabled()Z
    .locals 4

    .prologue
    .line 708
    const-string/jumbo v3, "isVRDarkAdaptationEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 709
    const/4 v1, 0x0

    .line 712
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 713
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 714
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRDarkAdaptationEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 720
    :cond_0
    return v1

    .line 716
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 717
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRLowPersistenceEnabled()Z
    .locals 4

    .prologue
    .line 764
    const-string/jumbo v3, "isVRLowPersistenceEnabled"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 765
    const/4 v1, 0x0

    .line 768
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 769
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 770
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRLowPersistenceEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 776
    :cond_0
    return v1

    .line 772
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 773
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isVRMode()Z
    .locals 4

    .prologue
    .line 624
    const-string/jumbo v3, "isVRMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 625
    const/4 v1, 0x0

    .line 628
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 629
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 630
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->isVRMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 636
    :cond_0
    return v1

    .line 632
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 633
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public notifyDeviceEventChanged(I)V
    .locals 7
    .param p1, "event"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 889
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 890
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 892
    .local v1, "uid":I
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->requestInit()V

    .line 894
    const-string v2, "VRManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyDeviceEventChanged event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/VRManagerService$DeviceEventHandler;->removeMessages(I)V

    .line 897
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    iget-object v3, p0, Lcom/android/server/VRManagerService;->mDeviceEventHandler:Lcom/android/server/VRManagerService$DeviceEventHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v5, v0, v1, v4}, Lcom/android/server/VRManagerService$DeviceEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/VRManagerService$DeviceEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 899
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_1

    .line 900
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 901
    :cond_1
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_0

    .line 902
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 903
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public relFreq(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 472
    const-string/jumbo v3, "relFreq"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 473
    const/4 v1, 0x0

    .line 475
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 476
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 477
    invoke-interface {v2, p1}, Lcom/android/internal/app/IVRManagerService;->relFreq(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 482
    :cond_0
    return v1

    .line 479
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 480
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public releaseCPUMhz(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 432
    const-string/jumbo v2, "releaseCPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 434
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 435
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 436
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseCPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    return-void

    .line 438
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 439
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public releaseGPUMhz(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 460
    const-string/jumbo v2, "releaseGPUMhz"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 462
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 463
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 464
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->releaseGPUMhz(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :cond_0
    return-void

    .line 466
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 467
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public return2EnableFreqLev()[I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 486
    const-string/jumbo v3, "return2EnableFreqLev"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 487
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 491
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 492
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 493
    invoke-interface {v2}, Lcom/android/internal/app/IVRManagerService;->return2EnableFreqLev()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 498
    :cond_0
    return-object v1

    .line 495
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 496
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setAffinity(I[I)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "cpus"    # [I

    .prologue
    .line 364
    const-string/jumbo v2, "setAffinity"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 367
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 368
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 369
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setAffinity(I[I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_0
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-nez v2, :cond_1

    .line 376
    new-instance v2, Landroid/sec/performance/AffinityControl;

    invoke-direct {v2}, Landroid/sec/performance/AffinityControl;-><init>()V

    iput-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    .line 379
    :cond_1
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    if-eqz v2, :cond_2

    .line 380
    iget-object v2, p0, Lcom/android/server/VRManagerService;->mAfControl:Landroid/sec/performance/AffinityControl;

    invoke-virtual {v2, p1, p2}, Landroid/sec/performance/AffinityControl;->SetAffinity(I[I)I

    move-result v2

    .line 382
    :goto_0
    return v2

    .line 371
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 382
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCPUClockMhz(Ljava/lang/String;[II)[I
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # [I
    .param p3, "corenum"    # I

    .prologue
    const/4 v4, 0x0

    .line 414
    const-string/jumbo v3, "setCPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 415
    const/4 v3, 0x1

    new-array v1, v3, [I

    aput v4, v1, v4

    .line 420
    .local v1, "result":[I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 421
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 422
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setCPUClockMhz(Ljava/lang/String;[II)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 428
    :cond_0
    return-object v1

    .line 424
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 425
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setGPUClockMhz(Ljava/lang/String;I)I
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "mhz"    # I

    .prologue
    .line 444
    const-string/jumbo v3, "setGPUClockMhz"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 445
    const/4 v1, 0x0

    .line 448
    .local v1, "result":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 449
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 450
    invoke-interface {v2, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setGPUClockMhz(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 456
    :cond_0
    return v1

    .line 452
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 453
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "optionName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 386
    const-string/jumbo v2, "setOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 389
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 390
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :cond_0
    return-void

    .line 392
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 393
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "option"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 548
    const-string/jumbo v2, "setSystemOption"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 550
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 551
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 552
    const-string/jumbo v2, "tsp_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 553
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchSceenPanelEnabled(Z)V

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 555
    :cond_1
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 556
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchSceenPanelEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 582
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 583
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 558
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2
    :try_start_1
    const-string/jumbo v2, "touchkey_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 559
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 560
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchKeyEnabled(Z)V

    goto :goto_0

    .line 561
    :cond_3
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemTouchKeyEnabled(Z)V

    goto :goto_0

    .line 564
    :cond_4
    const-string/jumbo v2, "epen_enabled"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 565
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 566
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemEPenEnabled(Z)V

    goto :goto_0

    .line 567
    :cond_5
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemEPenEnabled(Z)V

    goto :goto_0

    .line 570
    :cond_6
    const-string/jumbo v2, "show_mouse_pointer"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 571
    const-string v2, "1"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 572
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemShowMouseEnabled(Z)V

    goto :goto_0

    .line 573
    :cond_7
    const-string v2, "0"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemShowMouseEnabled(Z)V

    goto :goto_0

    .line 576
    :cond_8
    const-string/jumbo v2, "mouse_control_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 577
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/VRManagerService;->setSystemMouseControlType(I)V

    goto/16 :goto_0

    .line 579
    :cond_9
    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IVRManagerService;->setSystemOption(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public setThreadSchedFifo(Ljava/lang/String;III)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "tid"    # I
    .param p4, "prio"    # I

    .prologue
    const/4 v2, 0x0

    .line 307
    const-string/jumbo v3, "setThreadSchedFifo"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 310
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 311
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 312
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IVRManagerService;->setThreadSchedFifo(Ljava/lang/String;III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :cond_0
    if-lez p4, :cond_2

    const/4 v3, 0x4

    if-gt p4, v3, :cond_2

    .line 319
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/VRManagerService;->scheduleThreadFIFO(Ljava/lang/String;III)Z

    move-result v2

    .line 324
    :cond_1
    :goto_0
    return v2

    .line 314
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 315
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 320
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :cond_2
    if-nez p4, :cond_1

    .line 321
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/server/VRManagerService;->scheduleThreadOTHER(Ljava/lang/String;III)Z

    move-result v2

    goto :goto_0
.end method

.method public setVRBright(I)V
    .locals 3
    .param p1, "bright"    # I

    .prologue
    .line 640
    const-string/jumbo v2, "setVRBright"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 642
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 643
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 644
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRBright(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_0
    return-void

    .line 646
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 647
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRColorTemperature(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 668
    const-string/jumbo v2, "setVRColorTemperature"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 670
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 671
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 672
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRColorTemperature(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :cond_0
    return-void

    .line 674
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 675
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRComfortableView(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 724
    const-string/jumbo v2, "setVRComfortableView"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 726
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 727
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 728
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRComfortableView(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :cond_0
    return-void

    .line 730
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 731
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRDarkAdaptation(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 696
    const-string/jumbo v2, "setVRDarkAdaptation"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 698
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 699
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 700
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRDarkAdaptation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 705
    :cond_0
    return-void

    .line 702
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 703
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRLowPersistence(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 752
    const-string/jumbo v2, "setVRLowPersistence"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 754
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 755
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 756
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRLowPersistence(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    :cond_0
    return-void

    .line 758
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 759
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 612
    const-string/jumbo v2, "setVRMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 614
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 615
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 616
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_0
    return-void

    .line 618
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 619
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVRPerformanceMode(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 780
    const-string/jumbo v2, "setVRPerformanceMode"

    invoke-virtual {p0, v2}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 782
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v1

    .line 783
    .local v1, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v1, :cond_0

    .line 784
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVRManagerService;->setVRPerformanceMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :cond_0
    return-void

    .line 786
    .end local v1    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 787
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setVideoMode(Ljava/lang/String;FZ)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "dutyCycle"    # F
    .param p3, "monoMode"    # Z

    .prologue
    .line 533
    const-string/jumbo v3, "setVideoMode"

    invoke-virtual {p0, v3}, Lcom/android/server/VRManagerService;->enforceCallingSelfPermission(Ljava/lang/String;)V

    .line 534
    const/4 v1, 0x0

    .line 536
    .local v1, "result":Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VRManagerService;->getService()Lcom/android/internal/app/IVRManagerService;

    move-result-object v2

    .line 537
    .local v2, "svc":Lcom/android/internal/app/IVRManagerService;
    if-eqz v2, :cond_0

    .line 538
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/app/IVRManagerService;->setVideoMode(Ljava/lang/String;FZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 544
    :cond_0
    return v1

    .line 540
    .end local v2    # "svc":Lcom/android/internal/app/IVRManagerService;
    :catch_0
    move-exception v0

    .line 541
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 115
    const-string v0, "VRManagerService"

    const-string v1, "---- VRManagerService systemReady ----"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method
