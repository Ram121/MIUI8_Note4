.class public Lcom/android/server/SdpManagerService;
.super Lcom/sec/sdp/ISdpManagerService$Stub;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$1;,
        Lcom/android/server/SdpManagerService$EngineMonitor;,
        Lcom/android/server/SdpManagerService$SdpHandler;,
        Lcom/android/server/SdpManagerService$SecureFileSystemManager;,
        Lcom/android/server/SdpManagerService$ActionReceiver;,
        Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;,
        Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    }
.end annotation


# static fields
.field private static final BASE_DIR:Ljava/lang/String; = "/data/system/users"

.field private static final CMK_DEBUG:Z = false

.field private static final DEFAULT_USER_ENGINE_ID:I = 0x0

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final ENABLE_ENGINE_MONITOR:Z = false

.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final KEK_LEN:I = 0x20

.field private static final KEYMGNT_DEBUG:Z = false

.field private static final KNOX_SENS_COLUMNS:Ljava/lang/String; = "/system/etc/knox_sensitive_columns.xml"

.field private static final MSG_LOCK:I = 0x2

.field private static final MSG_SYSTEM_READY:I = 0x1

.field private static final MSG_UNLOCK:I = 0x3

.field public static final SDK_CURRENT_VERSION:D = 1.1

.field public static final SDK_NOT_SUPPORTED:D = 0.0

.field public static final SDK_VERSION_1_0:D = 1.0

.field public static final SDK_VERSION_1_1:D = 1.1

.field public static final SDPK_PWD_LEN:I = 0x20

.field public static final SDP_ACTIVE:I = 0x1

.field public static final SDP_BOOTED:I = 0x1

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_INACTIVE:I = 0x2

.field public static final SDP_LATEST_VERSION:I = 0x4

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_VERSION_1:I = 0x1

.field public static final SDP_VERSION_2:I = 0x2

.field public static final SDP_VERSION_3:I = 0x3

.field public static final SDP_VERSION_4:I = 0x4

.field public static final SDP_VERSION_DISABLED:I = 0x0

.field public static final STATE_ERROR:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SdpManagerService"

.field private static sContext:Landroid/content/Context;


# instance fields
.field private bootComplete:Z

.field private handlerThread:Landroid/os/HandlerThread;

.field private final mBinderListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCMKMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

.field private mEnginState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mPolicyManager:Lcom/android/server/SdpPolicyManager;

.field private mResetPwdKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

.field private final mSdpEngineDbLock:Ljava/lang/Object;

.field private mSdpEngineMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

.field private mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

.field private mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

.field mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimaHelper:Lcom/android/server/pm/TimaHelper;

.field private mUM:Landroid/os/UserManager;

.field private mWaitForPassword:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    .line 262
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    .line 264
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 252
    invoke-direct {p0}, Lcom/sec/sdp/ISdpManagerService$Stub;-><init>()V

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mStateMap:Ljava/util/HashMap;

    .line 155
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mPolicyManager:Lcom/android/server/SdpPolicyManager;

    .line 173
    iput-boolean v2, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    .line 178
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    .line 179
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    .line 180
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 228
    iput-boolean v2, p0, Lcom/android/server/SdpManagerService;->bootComplete:Z

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mEnginState:Ljava/util/Map;

    .line 231
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    .line 234
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    .line 235
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 237
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .line 238
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    .line 239
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mEngineMonitor:Lcom/android/server/SdpManagerService$EngineMonitor;

    .line 242
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 243
    iput-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 2483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    .line 253
    sput-object p1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    .line 254
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SdpManagerService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    .line 256
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v0, Lcom/android/server/SdpManagerService$SdpHandler;

    iget-object v1, p0, Lcom/android/server/SdpManagerService;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/SdpManagerService$SdpHandler;-><init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    .line 258
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    .line 259
    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/SdpManagerService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/SdpManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserAdded(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/SdpManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->handleUserRemoved(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/SdpManagerService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->handlePkgRemoved(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-static {p0}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpServiceKeeper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpServiceKeeper;)Lcom/android/server/SdpServiceKeeper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/SdpServiceKeeper;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    return-object p1
.end method

.method static synthetic access$2900()Landroid/content/Context;
    .locals 1

    .prologue
    .line 146
    sget-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/SdpManagerService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/server/SdpManagerService;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/SdpManagerService;)Lcom/android/server/pm/TimaHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/server/SdpManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/pm/TimaHelper;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/server/SdpManagerService;Lcom/sec/knox/container/util/EnterprisePartitionManager;)Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/knox/container/util/EnterprisePartitionManager;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/SdpManagerService;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootInternal(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p5, "x5"    # [B

    .prologue
    .line 146
    invoke-direct/range {p0 .. p5}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v0

    return v0
.end method

.method static synthetic access$4500(Lcom/android/server/SdpManagerService;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # [B

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/SdpManagerService;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/SdpManagerService;I)Landroid/content/pm/UserInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/SdpManagerService;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SdpManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "pid"    # I
    .param p3, "uid"    # I
    .param p4, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p5, "cmk"    # [B

    .prologue
    .line 839
    const/4 v5, 0x0

    .line 841
    .local v5, "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    if-nez p4, :cond_1

    .line 843
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .restart local v5    # "privilegedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;>;"
    :goto_0
    if-eqz p5, :cond_2

    .line 856
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-virtual {p0, v0, v1, p5}, Lcom/android/server/SdpManagerService;->addEngineNative(II[B)Z

    move-result v0

    if-nez v0, :cond_3

    .line 857
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error to handle addEngineNative ::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const/16 v6, -0xc

    .line 879
    :goto_1
    return v6

    .line 846
    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngineInternalLocked :: custom engine requires creation parameter"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/16 v6, -0xb

    goto :goto_1

    .line 852
    :cond_1
    invoke-virtual {p4}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getPrivilegedApps()Ljava/util/ArrayList;

    move-result-object v5

    goto :goto_0

    .line 861
    :cond_2
    const-string v0, "SdpManagerService"

    const-string v1, "No cmk for adding engine. :: this must be migration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_3
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    move v2, p2

    move v3, p3

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/util/List;)I

    move-result v6

    .line 867
    .local v6, "ret":I
    if-nez v6, :cond_4

    .line 868
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setState(I)V

    .line 869
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 871
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 872
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 873
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "engine added! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 876
    :cond_4
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngineInternalLocked :: failed ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private assignEngineId(Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1001
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->extractAndroidDefaultUserId(Ljava/lang/String;)I

    move-result v1

    .line 1003
    .local v1, "id":I
    if-gez v1, :cond_1

    .line 1004
    const/16 v0, 0x3e8

    .line 1005
    .local v0, "candidateId":I
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "custom engine. assign custom engine id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1007
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1008
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1011
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "custom engine : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id assigned. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    .end local v0    # "candidateId":I
    :goto_1
    return v0

    .line 1009
    .restart local v0    # "candidateId":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .end local v0    # "candidateId":I
    :cond_1
    move v0, v1

    .line 1014
    goto :goto_1
.end method

.method private bootInternal(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1059
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bootInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(I)I

    move-result v0

    return v0
.end method

.method private bootNative(I)I
    .locals 12
    .param p1, "id"    # I

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v4, 0x1

    .line 2309
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2310
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 2317
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2318
    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2319
    if-eqz v0, :cond_0

    .line 2320
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2321
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2322
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 2324
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2327
    :cond_1
    if-nez v0, :cond_4

    .line 2335
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2336
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not knox container! boot failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    const/16 v8, -0xb

    .line 2394
    :goto_0
    return v8

    .line 2324
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2340
    :cond_2
    const-string v2, "SdpManagerService"

    const-string v3, "Migration from SDP v1(TMR)."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2341
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2342
    .local v1, "alias":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 2343
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootInternal :: migration attempt failed. unknown userid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    const/16 v8, -0xa

    goto :goto_0

    .line 2347
    :cond_3
    const-string v2, "SdpManagerService"

    const-string v3, "bootInternal :: SDP user is there but no SdpEngineInfo. This must be SDP v1 -> v1.1 migration"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    move v2, p1

    move v3, p1

    move v5, v4

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2359
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2361
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v8

    .line 2363
    .local v8, "ret":I
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2365
    if-eqz v8, :cond_4

    .line 2366
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2363
    .end local v8    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2371
    .end local v1    # "alias":Ljava/lang/String;
    :cond_4
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/SdpManagerService;->nativeOnBoot(II)I

    move-result v2

    if-eqz v2, :cond_5

    .line 2372
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootNative :: failed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    const/16 v8, -0xc

    goto/16 :goto_0

    .line 2376
    :cond_5
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2377
    const/4 v2, 0x1

    :try_start_4
    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2378
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2380
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v2

    if-eq v2, v11, :cond_6

    .line 2381
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bootInternal :: upgrade detected. ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] -> ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    invoke-direct {p0, v0, v10}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I

    move-result v2

    const/16 v3, -0xd

    if-ne v2, v3, :cond_6

    .line 2385
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2386
    const/4 v2, 0x1

    :try_start_5
    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setIsMigrating(Z)V

    .line 2387
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2388
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2389
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 2390
    const/4 v8, -0x4

    goto/16 :goto_0

    .line 2378
    :catchall_2
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    .line 2389
    :catchall_3
    move-exception v2

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v2

    .line 2394
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method private cacheMasterKey(ILjava/lang/String;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "cmk"    # Ljava/lang/String;

    .prologue
    .line 1614
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheMasterKey :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1618
    :cond_0
    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 267
    const-string v1, "SdpManagerService"

    .line 268
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, "e":Ljava/lang/SecurityException;
    throw v0

    .line 274
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private clearCachedMasterKey(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1594
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1595
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1597
    .local v0, "cmk":Ljava/lang/String;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearCachedMasterKey (CMK) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1599
    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    .end local v0    # "cmk":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private clearResetPasswordKey(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1604
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1605
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1607
    .local v0, "resetPwdKey":Ljava/lang/String;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearResetPasswordKey "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1609
    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mResetPwdKeyMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    .end local v0    # "resetPwdKey":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "resetToken"    # Ljava/lang/String;

    .prologue
    .line 883
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 974
    :goto_0
    return-object v1

    .line 885
    :cond_0
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onUserAdded :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/system/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 888
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 889
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    .line 890
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "baseDir exists but not a directory! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v1, 0x0

    goto :goto_0

    .line 894
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_2

    .line 895
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "couldn\'t create directory "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 900
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 901
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object p3

    .line 902
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 904
    .local v3, "entry":[B
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 905
    .local v4, "token":J
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8, v3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v6

    if-nez v6, :cond_3

    .line 906
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "error in addEngine failed to store resetToken "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 910
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 912
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 913
    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 921
    .end local v3    # "entry":[B
    .end local v4    # "token":J
    :cond_4
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 925
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 926
    :cond_5
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "no password given. #1"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 932
    .local v1, "cmk":Ljava/lang/String;
    :goto_1
    if-nez v1, :cond_8

    .line 933
    const-string v6, "SdpManagerService"

    const-string v7, "can\'t generate CMK"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 915
    .end local v1    # "cmk":Ljava/lang/String;
    :cond_6
    if-nez p3, :cond_4

    .line 916
    const-string v6, "SdpManagerService"

    const-string v7, "can\'t create keys for MDPFF SDP without RST_TOKEN"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 929
    :cond_7
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, p2}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateCMK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "cmk":Ljava/lang/String;
    goto :goto_1

    .line 937
    :cond_8
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 938
    :cond_9
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "no password given. #2"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_a
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v1, p3, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d

    .line 947
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "storeCMK(RST_TOKEN) failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 940
    :cond_b
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v1, p2, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_a

    .line 941
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "storeCMK(PW) failed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 952
    .end local v1    # "cmk":Ljava/lang/String;
    :cond_c
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    invoke-virtual {v6, v7, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generateAndStoreCMK(ILjava/lang/String;Ljava/lang/String;)Z

    .line 957
    :cond_d
    const/4 v2, 0x0

    .line 958
    .local v2, "encodedCmk":Ljava/lang/String;
    if-nez p2, :cond_e

    .line 959
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x2

    const/16 v9, 0x20

    invoke-virtual {v6, v7, p3, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    .line 966
    :goto_2
    if-nez v2, :cond_f

    .line 967
    const-string v6, "SdpManagerService"

    const-string/jumbo v7, "internal error!, can\'t retrieve CMK"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 962
    :cond_e
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v7

    const/4 v8, 0x1

    const/16 v9, 0x20

    invoke-virtual {v6, v7, p2, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 971
    :cond_f
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 972
    .local v1, "cmk":[B
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private deleteTokenInternal(ILjava/lang/String;)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 3683
    const/4 v0, 0x0

    .line 3684
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3685
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->checkEntry(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3686
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/TimaHelper;->deleteEntry(ILjava/lang/String;)V

    .line 3687
    const/4 v0, 0x1

    .line 3689
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3690
    return v0
.end method

.method private dumpCache()V
    .locals 0

    .prologue
    .line 1630
    return-void
.end method

.method private enrollInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    .line 3801
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    .line 3802
    .local v1, "engineId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v4

    if-eq v4, v6, :cond_0

    .line 3804
    const/4 v3, -0x5

    .line 3833
    :goto_0
    return v3

    .line 3806
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3807
    const/4 v3, -0x2

    goto :goto_0

    .line 3809
    :cond_1
    const/4 v0, 0x0

    .line 3810
    .local v0, "cmk":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3811
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cmk":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 3812
    .restart local v0    # "cmk":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1, v0, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3813
    const/4 v3, 0x0

    goto :goto_0

    .line 3815
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3816
    const/4 v3, -0x1

    .line 3817
    .local v3, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v2

    .line 3819
    .local v2, "resetToken":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 3820
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v5, 0x20

    invoke-virtual {v4, v1, v2, v6, v5}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 3822
    if-eqz v0, :cond_3

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1, v0, p2, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3824
    const/4 v3, 0x0

    .line 3827
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 3828
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    goto :goto_0

    .line 3831
    .end local v2    # "resetToken":Ljava/lang/String;
    .end local v3    # "ret":I
    :cond_4
    const-string v4, "SdpManagerService"

    const-string/jumbo v5, "enrollInternal :: Master key is not found in the map"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3833
    :cond_5
    const/16 v3, -0x63

    goto :goto_0
.end method

.method private getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 1514
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1516
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_0

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "engine map doesn\'t have engine info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_0
    return-object v0
.end method

.method private getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 8
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1487
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1488
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1489
    .local v5, "userId":I
    invoke-static {v5}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v1, v6

    .line 1510
    .end local v5    # "userId":I
    :cond_1
    :goto_0
    return-object v1

    .line 1492
    .restart local v5    # "userId":I
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1493
    .local v4, "ui":Landroid/content/pm/UserInfo;
    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v2, 0x1

    .line 1495
    .local v2, "isMP":Z
    :goto_1
    if-eqz v2, :cond_5

    .line 1496
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->getManagedProfileAlias(I)Ljava/lang/String;

    move-result-object p1

    .line 1502
    .end local v2    # "isMP":Z
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    :cond_3
    :goto_2
    if-eqz p1, :cond_6

    .line 1503
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "nsize":I
    :goto_3
    if-ge v0, v3, :cond_6

    .line 1504
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .line 1506
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1503
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1493
    .end local v0    # "i":I
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v3    # "nsize":I
    .restart local v4    # "ui":Landroid/content/pm/UserInfo;
    .restart local v5    # "userId":I
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1498
    .restart local v2    # "isMP":Z
    :cond_5
    invoke-static {v5}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .end local v2    # "isMP":Z
    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "userId":I
    :cond_6
    move-object v1, v6

    .line 1510
    goto :goto_0
.end method

.method private getManagedProfileAlias(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1474
    const/4 v1, 0x0

    .line 1475
    .local v1, "ret":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1476
    .local v0, "parent":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 1477
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 1479
    :cond_0
    return-object v1
.end method

.method private getPadded([BI)[B
    .locals 3
    .param p1, "pw"    # [B
    .param p2, "totalLen"    # I

    .prologue
    const/4 v2, 0x0

    .line 296
    new-array v0, p2, [B

    .line 297
    .local v0, "padded":[B
    invoke-static {v0, v2, p2, v2}, Ljava/util/Arrays;->fill([BIIB)V

    .line 299
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 301
    return-object v0
.end method

.method private getProfileParent(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1463
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1465
    .local v2, "pi":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1466
    return-object v2

    .line 1463
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1259
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    if-nez v4, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 1272
    :goto_0
    return-object v1

    .line 1260
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1261
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getResetTokenTimaAlias()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v0

    .line 1263
    .local v0, "entry":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1264
    const/4 v1, 0x0

    .line 1265
    .local v1, "resetToken":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1266
    new-instance v1, Ljava/lang/String;

    .end local v1    # "resetToken":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1267
    .restart local v1    # "resetToken":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    goto :goto_0

    .line 1269
    :cond_2
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getRstTokenFromTima :: entry not found. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1454
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1455
    .local v0, "identity":J
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 1457
    .local v2, "ui":Landroid/content/pm/UserInfo;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1458
    return-object v2

    .line 1455
    .end local v2    # "ui":Landroid/content/pm/UserInfo;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private handlePkgRemoved(ILjava/lang/String;)V
    .locals 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3045
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->removePkgDir(ILjava/lang/String;)Z
    invoke-static {v6, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$2000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    .line 3048
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3049
    :try_start_0
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$2100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v0

    .line 3051
    .local v0, "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 3052
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 3053
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3055
    .local v3, "id":I
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    invoke-static {v6, v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1500(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 3057
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3058
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FOUND PACKAGE handlePkgRemoved :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3059
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/system/users/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3061
    .local v1, "file":Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v8, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v6, v8, v9, v10, v4}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v5

    .line 3062
    .local v5, "ret":I
    if-nez v5, :cond_1

    .line 3063
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3064
    :try_start_1
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v9

    invoke-virtual {v6, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 3065
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v6, v4}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3066
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v6}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 3068
    invoke-direct {p0, v4}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3069
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3070
    :try_start_2
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v8

    invoke-direct {p0, v6, v8}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v5

    .line 3077
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved engine removed! "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3082
    :goto_1
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removing dir :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 3091
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v5    # "ret":I
    :cond_0
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3092
    return-void

    .line 3069
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "id":I
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v5    # "ret":I
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 3091
    .end local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "id":I
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v5    # "ret":I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6

    .line 3079
    .restart local v0    # "engineList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "i":I
    .restart local v3    # "id":I
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v5    # "ret":I
    :cond_1
    :try_start_5
    const-string v6, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePkgRemoved removeEngine :: failed ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3087
    .end local v1    # "file":Ljava/io/File;
    .end local v5    # "ret":I
    :cond_2
    const-string v8, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can\'t find engine info ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "]"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3052
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method private handleUserAdded(I)V
    .locals 13
    .param p1, "userId"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2934
    if-nez p1, :cond_1

    .line 3000
    :cond_0
    :goto_0
    return-void

    .line 2937
    :cond_1
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2938
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2939
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    if-nez v0, :cond_0

    .line 2947
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    .line 2948
    .local v11, "ui":Landroid/content/pm/UserInfo;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2949
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserAdded :: do not handle for knox user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2939
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v11    # "ui":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2952
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .restart local v11    # "ui":Landroid/content/pm/UserInfo;
    :cond_2
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2953
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is identified as managed profile..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    if-nez v2, :cond_3

    move v8, v7

    .line 2956
    .local v8, "res":Z
    :goto_1
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Base directory has been set up... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2957
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded :: Managed profile is not appicable to engine creation... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2954
    .end local v8    # "res":Z
    :cond_3
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->setBaseDataUserDir(I)Z
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    move-result v8

    goto :goto_1

    .line 2961
    :cond_4
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleUserAdded for SDP "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2963
    .local v1, "alias":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2967
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const/4 v6, 0x4

    move v2, p1

    move v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2976
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object v10

    .line 2977
    .local v10, "rstToken":Ljava/lang/String;
    invoke-direct {p0, v0, v12, v10}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v7

    .line 2978
    .local v7, "cmk":[B
    if-nez v7, :cond_5

    .line 2979
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create keys for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2984
    :cond_5
    iget-object v12, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2986
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v9

    .line 2988
    .local v9, "ret":I
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2990
    invoke-direct {p0, v7}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2992
    if-eqz v9, :cond_6

    .line 2993
    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2994
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserAdded failed to create engine info/creation for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2988
    .end local v9    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2998
    .restart local v9    # "ret":I
    :cond_6
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady(I)Z
    invoke-static {v2, p1}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;I)Z

    goto/16 :goto_0
.end method

.method private handleUserRemoved(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 3003
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3004
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :goto_0
    return-void

    .line 3008
    :cond_0
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3009
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3010
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3012
    if-nez v0, :cond_1

    .line 3013
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "handleUserRemoved removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3010
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 3017
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "inside handleUserRemoved "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 3020
    .local v1, "ret":I
    if-nez v1, :cond_2

    .line 3021
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3022
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 3023
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3024
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 3026
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 3027
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3028
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    .line 3035
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3027
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 3037
    :cond_2
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleUserRemoved removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1677
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isEngineOwner(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isLicensed()Z
    .locals 4

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/SdpServiceKeeper;->isLicensed(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method private isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isPrivileged(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private isPwdChangeRequested()Z
    .locals 6

    .prologue
    .line 3617
    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    const-string/jumbo v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 3619
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    .line 3621
    .local v2, "mPwdPolicy":Landroid/app/enterprise/PasswordPolicy;
    const/4 v1, 0x0

    .line 3622
    .local v1, "isPwdChangeRequested":Z
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v3

    if-lez v3, :cond_0

    .line 3624
    const/4 v1, 0x1

    .line 3626
    :cond_0
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPwdChangeRequested :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    return v1
.end method

.method private isSdpUserZeroSupported()Z
    .locals 1

    .prologue
    .line 1639
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureUnlockRequired(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1127
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1128
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Not a default engine... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :goto_0
    return v3

    .line 1132
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v2

    .line 1133
    .local v2, "userId":I
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureUnlock :: User : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    if-nez p2, :cond_1

    move v0, v4

    .line 1136
    .local v0, "noCredential":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 1140
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1141
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Lowest security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1142
    goto :goto_0

    .end local v0    # "noCredential":Z
    :cond_1
    move v0, v3

    .line 1135
    goto :goto_1

    .line 1147
    .restart local v0    # "noCredential":Z
    :cond_2
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 1149
    .local v1, "quality":I
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureUnlock :: Quality for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    if-nez v1, :cond_3

    .line 1151
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Very low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1152
    goto/16 :goto_0

    .line 1157
    :cond_3
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v2}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1158
    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Low security level found...!!! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1159
    goto/16 :goto_0

    .line 1162
    .end local v1    # "quality":I
    :cond_4
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SecureUnlock :: Not applicable... Skip secure unlock... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isSupportedDevice()Z
    .locals 1

    .prologue
    .line 1693
    sget-boolean v0, Lcom/android/server/SdpManagerService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    .line 1695
    const/4 v0, 0x1

    .line 1697
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z
    .locals 4
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 1650
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/SdpServiceKeeper;->isSystemComponent(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v0

    return v0
.end method

.method private lockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    .locals 12
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    const/4 v7, 0x0

    const/16 v6, -0xe

    const/4 v8, 0x1

    .line 1068
    if-nez p1, :cond_0

    const/4 v6, -0x7

    .line 1123
    :goto_0
    return v6

    .line 1070
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    .line 1071
    .local v0, "engineId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v5

    .line 1072
    .local v5, "userId":I
    const-string v9, "SdpManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "lockInternal "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-direct {p0, v0, v5}, Lcom/android/server/SdpManagerService;->lockNative(II)I

    move-result v3

    .line 1080
    .local v3, "ret":I
    if-eqz v3, :cond_1

    .line 1081
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockInternal :: native failed ret "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lockInternal :: native failed :: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    const/16 v6, -0xc

    goto :goto_0

    .line 1085
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    .line 1086
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->clearResetPasswordKey(I)V

    .line 1088
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1089
    const/4 v10, 0x1

    :try_start_0
    invoke-direct {p0, p1, v10}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1090
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1095
    const/4 v1, 0x0

    .line 1096
    .local v1, "quality":I
    const-string/jumbo v9, "lock_settings"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lcom/android/server/LockSettingsService;

    .line 1097
    .local v4, "service":Lcom/android/server/LockSettingsService;
    if-eqz v4, :cond_2

    .line 1099
    :try_start_1
    const-string/jumbo v9, "lockscreen.password_type"

    const-wide/16 v10, 0x0

    invoke-virtual {v4, v9, v10, v11, v0}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v10

    long-to-int v1, v10

    .line 1105
    :cond_2
    :goto_1
    const v9, 0x61000

    if-eq v1, v9, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move v2, v8

    .line 1108
    .local v2, "qualityNoPassword":Z
    :goto_2
    if-eqz v2, :cond_6

    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1110
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1111
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1090
    .end local v1    # "quality":I
    .end local v2    # "qualityNoPassword":Z
    .end local v4    # "service":Lcom/android/server/LockSettingsService;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1    # "quality":I
    .restart local v4    # "service":Lcom/android/server/LockSettingsService;
    :cond_4
    move v2, v7

    .line 1105
    goto :goto_2

    .line 1115
    .restart local v2    # "qualityNoPassword":Z
    :cond_5
    iget-object v9, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v10

    invoke-virtual {v9, v10, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1116
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "couldn\'t remove KEK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1    # "quality":I
    .end local v2    # "qualityNoPassword":Z
    .end local v4    # "service":Lcom/android/server/LockSettingsService;
    :cond_6
    move v6, v7

    .line 1123
    goto/16 :goto_0

    .line 1101
    .restart local v1    # "quality":I
    .restart local v4    # "service":Lcom/android/server/LockSettingsService;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method private lockNative(II)I
    .locals 3
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .prologue
    .line 2406
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceLocked(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2407
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "lockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    const/16 v0, -0xc

    .line 2411
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static native nativeMemGetSensitiveProcess()[I
.end method

.method static native nativeMemSetProcessSensitive(I)I
.end method

.method static native nativeOnBoot(II)I
.end method

.method static native nativeOnChangePassword(I[B[B)I
.end method

.method static native nativeOnDeviceLocked(II)I
.end method

.method static native nativeOnDeviceUnlocked(I[B)I
.end method

.method static native nativeOnMigration(IIII[B)I
.end method

.method static native nativeOnUserAdded(II[B)I
.end method

.method static native nativeOnUserRemoved(II)I
.end method

.method private onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 2591
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    .line 2592
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2595
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v3, :cond_0

    monitor-exit v6

    .line 2609
    :goto_0
    return-void

    .line 2597
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 2598
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2600
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/sec/sdp/ISdpListener;->onEngineRemoved()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2597
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2601
    :catch_0
    move-exception v4

    .line 2602
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SdpManagerService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2603
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2608
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2604
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catch_1
    move-exception v1

    .line 2605
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "SdpManagerService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2608
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I
    .locals 13
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "cmk"    # [B

    .prologue
    const/4 v12, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 2146
    if-nez p1, :cond_0

    const/16 v10, -0xb

    .line 2259
    :goto_0
    return v10

    .line 2148
    :cond_0
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2149
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v7

    .line 2151
    .local v7, "currentVersion":I
    if-ne v7, v12, :cond_1

    .line 2152
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: already up to date. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2153
    goto :goto_0

    .line 2156
    :cond_1
    if-nez v7, :cond_2

    .line 2157
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: SDP previously disabled. version : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2158
    goto :goto_0

    .line 2166
    :cond_2
    if-ne v7, v3, :cond_3

    .line 2167
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: MIGRATE from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    sget-object v0, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v8

    .line 2170
    .local v8, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    new-array v6, v5, [Ljava/lang/String;

    const-string v0, "/data/user/$/com.android.email/databases/EmailProviderBody.db"

    aput-object v0, v6, v11

    const-string v0, "Body"

    aput-object v0, v6, v3

    const-string/jumbo v0, "htmlContent,textContent"

    aput-object v0, v6, v4

    .line 2176
    .local v6, "args":[Ljava/lang/String;
    aget-object v0, v6, v11

    const-string v1, "$"

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v11

    .line 2177
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v6, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    const-string/jumbo v1, "sdp_db"

    const-string/jumbo v2, "set_sensitive_from_db1"

    invoke-virtual {v8, v0, v1, v2, v6}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->migration(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    .line 2184
    .local v10, "ret":I
    if-nez v10, :cond_4

    .line 2185
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2187
    add-int/lit8 v7, v7, 0x1

    .line 2188
    :try_start_0
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2189
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2190
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2207
    .end local v6    # "args":[Ljava/lang/String;
    .end local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v10    # "ret":I
    :cond_3
    :goto_1
    if-ne v7, v4, :cond_6

    .line 2208
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 2 -> 3 not implemented (this is targeted for TMR/KMR)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    if-nez p2, :cond_5

    .line 2210
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: failed, CMK required!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const/16 v10, -0xd

    goto/16 :goto_0

    .line 2190
    .restart local v6    # "args":[Ljava/lang/String;
    .restart local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .restart local v10    # "ret":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2192
    :cond_4
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: Failed in 1st stage... Skip remaining steps other than termination"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: Must make it complete all steps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2195
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2196
    add-int/lit8 v7, v7, 0x3

    .line 2197
    :try_start_2
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2198
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2199
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2214
    .end local v6    # "args":[Ljava/lang/String;
    .end local v8    # "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    .end local v10    # "ret":I
    :cond_5
    const/16 v0, 0x20

    invoke-direct {p0, p2, v0}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v9

    .line 2215
    .local v9, "paddedCmk":[B
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v1

    invoke-static {v0, v1, v7, v12, v9}, Lcom/android/server/SdpManagerService;->nativeOnMigration(IIII[B)I

    move-result v10

    .line 2217
    .restart local v10    # "ret":I
    invoke-direct {p0, v9}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2219
    if-nez v10, :cond_9

    .line 2220
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: SUCCESS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2222
    add-int/lit8 v7, v7, 0x1

    .line 2223
    :try_start_3
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2224
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2225
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2235
    .end local v9    # "paddedCmk":[B
    .end local v10    # "ret":I
    :cond_6
    if-ne v7, v5, :cond_8

    .line 2236
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: version 3 -> 4)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const/16 v10, -0x63

    .line 2239
    .restart local v10    # "ret":I
    iget-object v12, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2241
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v10

    .line 2243
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2245
    if-eqz v10, :cond_7

    const/4 v0, -0x6

    if-ne v10, v0, :cond_a

    .line 2246
    :cond_7
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addEngine ret :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2248
    add-int/lit8 v7, v7, 0x1

    .line 2249
    :try_start_5
    invoke-virtual {p1, v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setVersion(I)V

    .line 2250
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 2251
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2258
    .end local v10    # "ret":I
    :cond_8
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    .line 2259
    goto/16 :goto_0

    .line 2225
    .restart local v9    # "paddedCmk":[B
    .restart local v10    # "ret":I
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 2227
    :cond_9
    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "onMigrationInternal :: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    const/4 v10, -0x1

    goto/16 :goto_0

    .line 2243
    .end local v9    # "paddedCmk":[B
    :catchall_3
    move-exception v0

    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 2251
    :catchall_4
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    .line 2253
    :cond_a
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMigrationInternal :: failed! can\'t create engine for :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private onStateChange(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)V
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "state"    # I

    .prologue
    .line 2570
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v6

    .line 2571
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 2574
    .local v3, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v3, :cond_0

    monitor-exit v6

    .line 2588
    :goto_0
    return-void

    .line 2576
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_1

    .line 2577
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2579
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_1
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5, p2}, Lcom/sec/sdp/ISdpListener;->onStateChange(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2576
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 2580
    :catch_0
    move-exception v4

    .line 2581
    .local v4, "rex":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "SdpManagerService"

    const-string v7, "Listener dead"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2582
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 2587
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v2    # "i":I
    .end local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    .end local v4    # "rex":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2583
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .restart local v2    # "i":I
    .restart local v3    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catch_1
    move-exception v1

    .line 2584
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "SdpManagerService"

    const-string v7, "Listener failed"

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2587
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private registerListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    const/4 v3, 0x0

    .line 2519
    if-nez p1, :cond_0

    const/4 v3, -0x7

    .line 2543
    :goto_0
    return v3

    .line 2521
    :cond_0
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "registerListener from pid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2526
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v1, :cond_1

    .line 2527
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2528
    .restart local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2531
    :cond_1
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    .line 2532
    :try_start_0
    new-instance v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p0, v5, p2}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;-><init>(Lcom/android/server/SdpManagerService;Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2535
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->setCaller(I)V

    .line 2536
    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2537
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2541
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2538
    .restart local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :catch_0
    move-exception v2

    .line 2539
    .local v2, "rex":Landroid/os/RemoteException;
    :try_start_3
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to link to listener death"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private removeDirectoryRecursive(Ljava/io/File;)V
    .locals 7
    .param p1, "parent"    # Ljava/io/File;

    .prologue
    .line 3606
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3607
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 3608
    .local v3, "files":[Ljava/lang/String;
    move-object v0, v3

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 3609
    .local v2, "filename":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3610
    .local v1, "child":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 3608
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3613
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "child":Ljava/io/File;
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "files":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3614
    return-void
.end method

.method private removeEngineNative(II)I
    .locals 3
    .param p1, "engineid"    # I
    .param p2, "userid"    # I

    .prologue
    .line 2475
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnUserRemoved(II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2476
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeEngineNative :: failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2477
    const/16 v0, -0xc

    .line 2480
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "resetToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 1389
    if-nez p1, :cond_1

    const/4 v3, -0x7

    .line 1424
    :cond_0
    :goto_0
    return v3

    .line 1392
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    .line 1393
    .local v1, "engineId":I
    const/4 v2, 0x0

    .line 1397
    .local v2, "rstTokenFromTima":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1398
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object p2

    .line 1399
    const/4 v2, 0x1

    .line 1402
    :cond_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1403
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, -0x2

    goto :goto_0

    .line 1405
    :cond_3
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v5, 0x2

    const/16 v6, 0x20

    invoke-virtual {v4, v1, p2, v5, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 1411
    .local v0, "encodedCmk":Ljava/lang/String;
    if-eqz v2, :cond_4

    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1412
    :cond_4
    if-eqz v0, :cond_0

    .line 1416
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, v0, p3, v4}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1419
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "resetPasswordInternal :: failed to storeCMK"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const/16 v3, -0xe

    goto :goto_0

    .line 1423
    :cond_5
    invoke-direct {p0, v1, v0}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    .line 1424
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private saveTokenInternal(ILjava/lang/String;[B)Z
    .locals 4
    .param p1, "id"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "entry"    # [B

    .prologue
    .line 3659
    const/4 v0, 0x0

    .line 3660
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3661
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/TimaHelper;->setEntry(ILjava/lang/String;[B)Z

    move-result v0

    .line 3663
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3664
    return v0
.end method

.method private sendBroadcastForStateChange(III)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "engineId"    # I
    .param p3, "state"    # I

    .prologue
    .line 2620
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.sdp.SDP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2622
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendBroadcastAsUser(INTENT_SDP_STATE_CHANGED, state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2623
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2624
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2625
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2626
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2627
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2628
    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2629
    return-void
.end method

.method private setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "state"    # I

    .prologue
    .line 1018
    if-nez p1, :cond_0

    const/4 v7, -0x7

    .line 1048
    :goto_0
    return v7

    .line 1020
    :cond_0
    invoke-virtual {p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setState(I)V

    .line 1021
    invoke-direct {p0, p1, p2}, Lcom/android/server/SdpManagerService;->onStateChange(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)V

    .line 1027
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v6

    .line 1028
    .local v6, "userId":I
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v0

    .line 1029
    .local v0, "engineId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1031
    .local v4, "token":J
    invoke-direct {p0, v6, v0, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    .line 1036
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->isKnoxWorkspace(I)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1037
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mUM:Landroid/os/UserManager;

    invoke-virtual {v7, v6}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1038
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1039
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1040
    .local v2, "profile":Landroid/content/pm/UserInfo;
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eqz v7, :cond_1

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v7, v6, :cond_1

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1042
    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v7, v0, p2}, Lcom/android/server/SdpManagerService;->sendBroadcastForStateChange(III)V

    goto :goto_1

    .line 1047
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profile":Landroid/content/pm/UserInfo;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1048
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private setPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I
    .locals 10
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1281
    if-nez p1, :cond_0

    const/4 v7, -0x7

    .line 1379
    :goto_0
    return v7

    .line 1288
    :cond_0
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v3

    .line 1289
    .local v3, "isDefaultEngine":Z
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 1290
    .local v2, "engineId":I
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isPwdChangeRequested()Z

    move-result v4

    .line 1291
    .local v4, "isPwdChangeRequested":Z
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal:: isPwdChangeRequested "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 1293
    const/4 v7, -0x5

    goto :goto_0

    .line 1295
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1296
    :cond_2
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1297
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1305
    const/4 v7, 0x0

    goto :goto_0

    .line 1308
    :cond_3
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal:: removing ECMK_PWD"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1310
    const-string v7, "SdpManagerService"

    const-string v8, "Couldn\'t remove ECMK!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/16 v7, -0xe

    goto :goto_0

    .line 1316
    :cond_4
    const/4 v7, -0x2

    goto :goto_0

    .line 1321
    :cond_5
    const/4 v1, 0x0

    .line 1322
    .local v1, "encodedCmk":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1323
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mCMKMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "encodedCmk":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1347
    .restart local v1    # "encodedCmk":Ljava/lang/String;
    :cond_6
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x1

    invoke-virtual {v7, v2, v1, p2, v8}, Lcom/sec/knox/container/util/KeyManagementUtil;->storeCMK(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_a

    .line 1350
    const-string v7, "SdpManagerService"

    const-string/jumbo v8, "setPasswordInternal :: failed to storeCMK"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    const/16 v7, -0xe

    goto/16 :goto_0

    .line 1328
    :cond_7
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMinor()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1330
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v5

    .line 1331
    .local v5, "resetToken":Ljava/lang/String;
    if-nez v5, :cond_8

    .line 1332
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 1334
    :cond_8
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/4 v8, 0x2

    const/16 v9, 0x20

    invoke-virtual {v7, v2, v5, v8, v9}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1336
    invoke-direct {p0, v5}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1338
    if-nez v1, :cond_6

    .line 1339
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 1343
    .end local v5    # "resetToken":Ljava/lang/String;
    :cond_9
    const/16 v7, -0x63

    goto/16 :goto_0

    .line 1356
    :cond_a
    if-eqz v4, :cond_c

    .line 1358
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v7, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1360
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v6

    .line 1361
    .local v6, "ret":I
    if-eqz v6, :cond_b

    .line 1362
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed ret "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPasswordInternal::unlockNative :: failed :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    .line 1365
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1366
    const/16 v7, -0xc

    goto/16 :goto_0

    .line 1369
    :cond_b
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1371
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1372
    const/4 v7, 0x2

    :try_start_0
    invoke-direct {p0, p1, v7}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1373
    monitor-exit v8

    .line 1379
    .end local v0    # "cmk":[B
    .end local v6    # "ret":I
    :goto_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1373
    .restart local v0    # "cmk":[B
    .restart local v6    # "ret":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1376
    .end local v0    # "cmk":[B
    .end local v6    # "ret":I
    :cond_c
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I
    .locals 1
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # I

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v0, p3}, Lcom/sec/knox/container/util/KeyManagementUtil;->convType(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x2

    const/4 v6, -0x1

    const/16 v10, 0x20

    const/4 v5, -0x2

    .line 1176
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 1177
    .local v2, "engineId":I
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "unlock :: Internal... "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/4 v1, 0x0

    .line 1180
    .local v1, "encodedCmk":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1182
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1255
    :cond_0
    :goto_0
    return v5

    .line 1185
    :cond_1
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1187
    if-eqz v1, :cond_0

    .line 1190
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    .line 1239
    :goto_1
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 1241
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v4

    .line 1242
    .local v4, "ret":I
    if-eqz v4, :cond_6

    .line 1243
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed ret "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string v5, "SdpManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unlockNative :: failed :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1245
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->clearCachedMasterKey(I)V

    .line 1246
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1247
    const/16 v5, -0xc

    goto :goto_0

    .line 1208
    .end local v0    # "cmk":[B
    .end local v4    # "ret":I
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/SdpManagerService;->isSecureUnlockRequired(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1209
    const-string v5, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlock :: onDeviceUnLocked from TIMA "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getRstTokenFromTima(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Ljava/lang/String;

    move-result-object v3

    .line 1212
    .local v3, "resetToken":Ljava/lang/String;
    if-nez v3, :cond_3

    .line 1213
    const-string v5, "SdpManagerService"

    const-string/jumbo v7, "unlock :: Invalid reset token"

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1214
    goto/16 :goto_0

    .line 1217
    :cond_3
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v5, v2, v3, v11, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-direct {p0, v3}, Lcom/android/server/SdpManagerService;->zeroOut(Ljava/lang/String;)V

    .line 1221
    if-nez v1, :cond_5

    move v5, v6

    .line 1222
    goto/16 :goto_0

    .line 1225
    .end local v3    # "resetToken":Ljava/lang/String;
    :cond_4
    const-string v6, "SdpManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unlock :: onDeviceUnLocked found ECMK "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1229
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v6, v2, p2, p3, v10}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1232
    if-eqz v1, :cond_0

    .line 1235
    :cond_5
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1250
    .restart local v0    # "cmk":[B
    .restart local v4    # "ret":I
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 1252
    iget-object v6, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1253
    const/4 v5, 0x2

    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 1254
    monitor-exit v6

    .line 1255
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 1254
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private unlockNative(I[B)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "cmk"    # [B

    .prologue
    .line 2424
    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 2425
    :cond_0
    const/16 v0, -0xb

    .line 2432
    :goto_0
    return v0

    .line 2427
    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/SdpManagerService;->nativeOnDeviceUnlocked(I[B)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2428
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unlockNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2429
    const/16 v0, -0xc

    goto :goto_0

    .line 2432
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private unlockViaTrustedInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I
    .locals 8
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "resetToken"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v4, -0x1

    .line 3743
    if-nez p1, :cond_1

    const/4 v4, -0x7

    .line 3770
    :cond_0
    :goto_0
    return v4

    .line 3744
    :cond_1
    if-eqz p2, :cond_0

    .line 3746
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    .line 3747
    .local v2, "engineId":I
    const/4 v1, 0x0

    .line 3749
    .local v1, "encodedCmk":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    const/16 v6, 0x20

    invoke-virtual {v5, v2, p2, v7, v6}, Lcom/sec/knox/container/util/KeyManagementUtil;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 3751
    if-eqz v1, :cond_0

    .line 3754
    invoke-direct {p0, v2, v1}, Lcom/android/server/SdpManagerService;->cacheMasterKey(ILjava/lang/String;)V

    .line 3756
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {v4, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->cmkToByte(Ljava/lang/String;)[B

    move-result-object v0

    .line 3758
    .local v0, "cmk":[B
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v3

    .line 3759
    .local v3, "ret":I
    if-eqz v3, :cond_2

    .line 3760
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed ret "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative :: failed :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 3763
    const/16 v4, -0xc

    goto :goto_0

    .line 3766
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 3767
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3768
    const/4 v4, 0x2

    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 3769
    monitor-exit v5

    .line 3770
    const/4 v4, 0x0

    goto :goto_0

    .line 3769
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private unregisterListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I
    .locals 7
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;

    .prologue
    const/4 v3, 0x0

    .line 2547
    if-nez p1, :cond_0

    const/4 v3, -0x7

    .line 2566
    :goto_0
    return v3

    .line 2549
    :cond_0
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    monitor-enter v4

    .line 2550
    :try_start_0
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2553
    .local v2, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    if-nez v2, :cond_1

    monitor-exit v4

    goto :goto_0

    .line 2564
    .end local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2555
    .restart local v2    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;>;"
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;

    .line 2556
    .local v0, "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;->mListener:Lcom/sec/sdp/ISdpListener;

    invoke-interface {v5}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 2557
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2558
    invoke-interface {p2}, Lcom/sec/sdp/ISdpListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_1

    .line 2562
    .end local v0    # "bl":Lcom/android/server/SdpManagerService$SdpManagerServiceBinderListener;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 2563
    iget-object v5, p0, Lcom/android/server/SdpManagerService;->mBinderListeners:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2564
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private zeroOut(Ljava/lang/String;)V
    .locals 0
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 313
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 315
    const/4 p1, 0x0

    .line 317
    :cond_0
    return-void
.end method

.method private zeroOut([B)V
    .locals 2
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 305
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 306
    :cond_0
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 308
    const/4 p1, 0x0

    .line 309
    goto :goto_0
.end method


# virtual methods
.method public addEngine(Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;Ljava/lang/String;Ljava/lang/String;)I
    .locals 25
    .param p1, "param"    # Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "rstToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 377
    .local v6, "userId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v7

    if-nez v7, :cond_0

    .line 378
    const-string v7, "SdpManagerService"

    const-string v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/16 v23, -0x3

    .line 501
    :goto_0
    return v23

    .line 382
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 383
    .local v14, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 384
    .local v15, "callingUid":I
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    .line 385
    .local v18, "myPid":I
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v19

    .line 386
    .local v19, "myUid":I
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calling uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my pid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "my uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    if-nez p1, :cond_1

    .line 392
    const-string v7, "SdpManagerService"

    const-string v8, "addEngine :: invalid arg"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v23, -0xb

    goto/16 :goto_0

    .line 396
    :cond_1
    const-string v7, "SdpManagerService"

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 404
    :cond_2
    invoke-static {v6}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v4

    .line 408
    .local v4, "alias":Ljava/lang/String;
    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 409
    const/16 v23, -0xb

    goto/16 :goto_0

    .line 406
    .end local v4    # "alias":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getAlias()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "alias":Ljava/lang/String;
    goto :goto_1

    .line 411
    :cond_4
    const-string v20, ""

    .line 413
    .local v20, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/SdpManagerService;->assignEngineId(Ljava/lang/String;)I

    move-result v5

    .line 414
    .local v5, "newId":I
    sget-object v7, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v15}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v22

    .line 415
    .local v22, "pkgNames":[Ljava/lang/String;
    if-eqz v22, :cond_5

    .line 416
    move-object/from16 v13, v22

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    .local v17, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-object v21, v13, v16

    .line 417
    .local v21, "pkgName":Ljava/lang/String;
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEngine :: calling getPackagesForUid  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v20, v21

    .line 416
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 422
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v16    # "i$":I
    .end local v17    # "len$":I
    .end local v21    # "pkgName":Ljava/lang/String;
    :cond_5
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adding engine :: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 425
    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 426
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addEngine :: failed.. engine["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] already exists"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/16 v23, -0x6

    monitor-exit v24

    goto/16 :goto_0

    .line 502
    :catchall_0
    move-exception v7

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 434
    :cond_6
    :try_start_1
    new-instance v3, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v7, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;->getFlags()I

    move-result v8

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 443
    .local v3, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 450
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 451
    const/16 v23, -0x8

    monitor-exit v24

    goto/16 :goto_0

    .line 459
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SdpManagerService;->isLicensed()Z

    move-result v7

    if-nez v7, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 461
    const-string v7, "SdpManagerService"

    const-string v8, "Permission denied to invoke engine control API"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/16 v23, -0x8

    monitor-exit v24

    goto/16 :goto_0

    .line 467
    :cond_8
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMdfpp()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v7

    if-nez v7, :cond_c

    .line 468
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 469
    :cond_9
    const/16 v23, -0x2

    monitor-exit v24

    goto/16 :goto_0

    .line 470
    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_c

    .line 471
    :cond_b
    const/16 v23, -0x1

    monitor-exit v24

    goto/16 :goto_0

    .line 474
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v12

    .line 475
    .local v12, "cmk":[B
    if-nez v12, :cond_d

    .line 476
    const-string v7, "SdpManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "failed to create keys for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/16 v23, -0xc

    monitor-exit v24

    goto/16 :goto_0

    .line 480
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    move-object/from16 v7, p0

    move-object v8, v3

    move-object/from16 v11, p1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v23

    .line 484
    .local v23, "ret":I
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 485
    if-eqz v23, :cond_e

    .line 486
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 501
    :cond_e
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public addEngineNative(II[B)Z
    .locals 4
    .param p1, "engineId"    # I
    .param p2, "userId"    # I
    .param p3, "cmk"    # [B

    .prologue
    const/4 v0, 0x0

    .line 2272
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2273
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2287
    :goto_0
    return v0

    .line 2277
    :cond_0
    if-eqz p3, :cond_1

    array-length v1, p3

    const/16 v2, 0x20

    if-eq v1, v2, :cond_2

    .line 2278
    :cond_1
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: invalid cmk "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2282
    :cond_2
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnUserAdded(II[B)I

    move-result v1

    if-eqz v1, :cond_3

    .line 2283
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addEngineNative :: native failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2287
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public allow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1562
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1563
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 1564
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v1

    .line 1565
    if-nez v4, :cond_0

    .line 1566
    const/4 v6, -0x7

    .line 1572
    .local v6, "ret":I
    :goto_0
    return v6

    .line 1564
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1568
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_0
    new-instance v5, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    .local v5, "privilegedApp":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->addPrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_0
.end method

.method public boot(I)I
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    const/4 v0, -0x3

    .line 593
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootInternal(I)I

    move-result v0

    goto :goto_0
.end method

.method public changeCMKNative(I[B[B)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "oldCmk"    # [B
    .param p3, "newCmk"    # [B

    .prologue
    const/16 v0, -0xb

    .line 2446
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2447
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2448
    const/4 v0, -0x3

    .line 2463
    :cond_0
    :goto_0
    return v0

    .line 2450
    :cond_1
    const-string v1, "changeCMKNative"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2452
    if-eqz p2, :cond_0

    .line 2455
    if-eqz p3, :cond_0

    array-length v1, p3

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 2458
    invoke-static {p1, p2, p3}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2459
    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCMKNative :: failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    const/16 v0, -0xc

    goto :goto_0

    .line 2463
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearEncPkgCache(ILjava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2890
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2891
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2910
    :cond_0
    :goto_0
    return v5

    .line 2894
    :cond_1
    new-array v4, v5, [Ljava/lang/String;

    .line 2895
    .local v4, "dataCacheArray":[Ljava/lang/String;
    const-string v1, "cache"

    aput-object v1, v4, v8

    .line 2897
    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2899
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    .line 2900
    .local v6, "retDataPart":Z
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    .line 2902
    .local v7, "retExtPart":Z
    if-nez v6, :cond_2

    .line 2903
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2904
    goto :goto_0

    .line 2905
    :cond_2
    if-nez v7, :cond_0

    .line 2906
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 2907
    goto :goto_0
.end method

.method public clearEncPkgData(ILjava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 2862
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2863
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2885
    :goto_0
    return v5

    .line 2866
    :cond_0
    new-array v4, v8, [Ljava/lang/String;

    .line 2867
    .local v4, "dataCacheArray":[Ljava/lang/String;
    const-string v1, "/"

    aput-object v1, v4, v5

    .line 2869
    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v0

    .line 2871
    .local v0, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v6

    .line 2875
    .local v6, "retDataPart":Z
    sget v3, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->clearPkgDataDirs(ILjava/lang/String;I[Ljava/lang/String;I)Z

    move-result v7

    .line 2877
    .local v7, "retExtPart":Z
    if-nez v6, :cond_1

    .line 2878
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear data part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2880
    :cond_1
    if-nez v7, :cond_2

    .line 2881
    const-string v1, "SdpManagerService"

    const-string v2, "Failed to clear ext part!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v5, v8

    .line 2885
    goto :goto_0
.end method

.method public createEncPkgDir(ILjava/lang/String;)I
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2915
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2916
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    const/4 v1, -0x3

    .line 2924
    :goto_0
    return v1

    .line 2919
    :cond_0
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->createPkgDir(ILjava/lang/String;)Z
    invoke-static {v1, p1, p2}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$1700(Lcom/android/server/SdpManagerService$SecureFileSystemManager;ILjava/lang/String;)Z

    move-result v0

    .line 2921
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 2922
    const/4 v1, 0x0

    goto :goto_0

    .line 2924
    :cond_1
    const/16 v1, -0xc

    goto :goto_0
.end method

.method public deleteToeknFromTrusted(Ljava/lang/String;)I
    .locals 4
    .param p1, "nameTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3669
    const-string/jumbo v3, "deleteToeknFromTrusted"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3670
    const/16 v1, -0x63

    .line 3671
    .local v1, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3672
    const/16 v3, -0xb

    .line 3679
    :goto_0
    return v3

    .line 3674
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3675
    .local v2, "userId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3677
    .local v0, "alias":Ljava/lang/String;
    invoke-direct {p0, v2, v0}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3678
    const/4 v1, 0x0

    :cond_1
    move v3, v1

    .line 3679
    goto :goto_0
.end method

.method public disallow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1580
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1581
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v4

    .line 1582
    .local v4, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v1

    .line 1583
    if-nez v4, :cond_0

    .line 1584
    const/4 v6, -0x7

    .line 1590
    .local v6, "ret":I
    :goto_0
    return v6

    .line 1582
    .end local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .end local v6    # "ret":I
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1586
    .restart local v4    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_0
    new-instance v5, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;

    invoke-direct {v5, p1, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    .local v5, "privilegedApp":Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;
    iget-object v0, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v1, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/SdpServiceKeeper;->removePrivilegedApp(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/enterprise/knox/sdp/engine/SdpDomain;)I

    move-result v6

    .restart local v6    # "ret":I
    goto :goto_0
.end method

.method public enroll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3778
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3779
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3780
    const/4 v1, -0x3

    .line 3797
    :goto_0
    return v1

    .line 3783
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3784
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3785
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 3786
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enroll :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3787
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 3789
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3794
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3795
    const/4 v1, -0x8

    goto :goto_0

    .line 3797
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->enrollInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public exists(Ljava/lang/String;)I
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1538
    const/4 v1, -0x7

    .line 1540
    .local v1, "ret":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1541
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 1542
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3

    .line 1543
    if-eqz v0, :cond_0

    .line 1544
    const/4 v1, -0x6

    .line 1545
    :cond_0
    return v1

    .line 1542
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getEncPkgDataSizeInfo(ILjava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 12
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2831
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2832
    const-string v5, "SdpManagerService"

    const-string v6, "SDP not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :goto_0
    return-object v2

    .line 2835
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    .line 2836
    .local v0, "dataCacheArray":[Ljava/lang/String;
    const-string v5, "/"

    aput-object v5, v0, v11

    .line 2837
    const-string v5, "cache"

    aput-object v5, v0, v10

    .line 2839
    sget-object v5, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v1

    .line 2841
    .local v1, "epm":Lcom/sec/knox/container/util/EnterprisePartitionManager;
    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_DATA:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v3

    .line 2842
    .local v3, "retDataPartInfo":[J
    sget v5, Lcom/sec/knox/container/util/EnterprisePartitionManager;->PARTITON_TYPE_SECURE_FS_SDCARD:I

    invoke-virtual {v1, p1, p2, v5, v0}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->calculatePkgDirs(ILjava/lang/String;I[Ljava/lang/String;)[J

    move-result-object v4

    .line 2844
    .local v4, "retExtPartInfo":[J
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    array-length v5, v3

    if-ne v5, v6, :cond_1

    array-length v5, v4

    if-eq v5, v6, :cond_2

    .line 2846
    :cond_1
    const-string v5, "SdpManagerService"

    const-string v6, "Failed to get size info!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2850
    :cond_2
    new-instance v2, Landroid/content/pm/PackageStats;

    invoke-direct {v2, p2, p1}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 2852
    .local v2, "pStats":Landroid/content/pm/PackageStats;
    aget-wide v6, v3, v11

    aget-wide v8, v3, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->dataSize:J

    .line 2853
    aget-wide v6, v3, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 2854
    aget-wide v6, v4, v11

    aget-wide v8, v4, v10

    sub-long/2addr v6, v8

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalDataSize:J

    .line 2855
    aget-wide v6, v4, v10

    iput-wide v6, v2, Landroid/content/pm/PackageStats;->externalCacheSize:J

    goto :goto_0
.end method

.method public getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v0, 0x0

    .line 585
    :goto_0
    return-object v0

    .line 581
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 582
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 583
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2

    goto :goto_0

    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSupportedSDKVersion()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1550
    const-wide/16 v0, 0x0

    .line 1551
    .local v0, "ret":D
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1552
    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 1554
    :cond_0
    return-wide v0
.end method

.method public isLicensed(Ljava/lang/String;)I
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 1527
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isLicensed()Z

    move-result v0

    .line 1528
    .local v0, "res":Z
    if-eqz v0, :cond_0

    .line 1529
    const/4 v1, 0x0

    .line 1531
    :goto_0
    return v1

    :cond_0
    const/16 v1, -0x63

    goto :goto_0
.end method

.method public isLocked(Ljava/lang/String;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1432
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1433
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    const/4 v1, -0x3

    .line 1450
    :cond_0
    :goto_0
    return v1

    .line 1440
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1441
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 1442
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2

    .line 1444
    if-nez v0, :cond_2

    .line 1445
    const/4 v1, -0x7

    goto :goto_0

    .line 1442
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1447
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 1448
    const/4 v1, -0x5

    goto :goto_0
.end method

.method public isSDPEnabled(I)Z
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 320
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 324
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 325
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSdpMigrating(I)Z
    .locals 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 351
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_0
    return v1

    .line 356
    :cond_0
    const-string/jumbo v2, "isSdpMigrating"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 359
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 360
    .local v0, "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 363
    .end local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 362
    .restart local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isMigrating()Z

    move-result v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public isSdpSupported()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1635
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSdpUserZeroSupported()Z

    move-result v0

    return v0
.end method

.method public lock(Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 599
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 600
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v1, -0x3

    .line 636
    :cond_0
    :goto_0
    return v1

    .line 605
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 606
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 607
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 608
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 611
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 613
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 618
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 636
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->lockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    goto :goto_0

    .line 628
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 631
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public migrate(Ljava/lang/String;)I
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 815
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 816
    const-string v0, "SdpManagerService"

    const-string v1, "SDP not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    const/4 v0, -0x3

    .line 820
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onBoot(I)I
    .locals 4
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/sdp/exception/SdpVersionException;
        }
    .end annotation

    .prologue
    .line 2634
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2635
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    const/4 v1, -0x3

    .line 2650
    :goto_0
    return v1

    .line 2638
    :cond_0
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBoot :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    const-string/jumbo v1, "onBoot"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2641
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->bootNative(I)I

    move-result v0

    .line 2642
    .local v0, "ret":I
    const/4 v1, -0x4

    if-ne v0, v1, :cond_1

    .line 2644
    new-instance v1, Lcom/android/sdp/exception/SdpVersionException;

    invoke-direct {v1}, Lcom/android/sdp/exception/SdpVersionException;-><init>()V

    throw v1

    .line 2647
    :cond_1
    if-nez v0, :cond_2

    .line 2648
    const/4 v1, 0x0

    goto :goto_0

    .line 2650
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public onChangePassword(I[B[B)Z
    .locals 6
    .param p1, "personaId"    # I
    .param p2, "oldCmk"    # [B
    .param p3, "newCmk"    # [B

    .prologue
    const/16 v4, 0x20

    const/4 v2, 0x0

    .line 2708
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2709
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2724
    :goto_0
    return v2

    .line 2712
    :cond_0
    const-string/jumbo v3, "onChangePassword"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2714
    invoke-direct {p0, p2, v4}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v1

    .line 2715
    .local v1, "paddedOldCmk":[B
    invoke-direct {p0, p3, v4}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v0

    .line 2717
    .local v0, "paddedNewCmk":[B
    invoke-static {p1, v1, v0}, Lcom/android/server/SdpManagerService;->nativeOnChangePassword(I[B[B)I

    move-result v3

    if-eqz v3, :cond_1

    .line 2718
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error to handle onChangePassword [persona : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2721
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2722
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2724
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onDeviceLocked(I)Z
    .locals 7
    .param p1, "personaId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2655
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2656
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    :goto_0
    return v2

    .line 2659
    :cond_0
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDeviceLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    const-string/jumbo v4, "onDeviceLocked"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2662
    invoke-direct {p0, p1, p1}, Lcom/android/server/SdpManagerService;->lockNative(II)I

    move-result v1

    .line 2663
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 2664
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "lockInternal failed ret "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2668
    :cond_1
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2669
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2670
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 2672
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2671
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v0, v2}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2672
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 2674
    goto :goto_0
.end method

.method public onDeviceUnlocked(I[B)Z
    .locals 7
    .param p1, "personaId"    # I
    .param p2, "cmk"    # [B

    .prologue
    const/4 v3, 0x0

    .line 2679
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2680
    const-string v4, "SdpManagerService"

    const-string v5, "SDP not supported"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    :goto_0
    return v3

    .line 2683
    :cond_0
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onDeviceUnLocked "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    const-string/jumbo v4, "onDeviceUnlocked"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2686
    const/16 v4, 0x20

    invoke-direct {p0, p2, v4}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v1

    .line 2688
    .local v1, "paddedCmk":[B
    invoke-direct {p0, p1, v1}, Lcom/android/server/SdpManagerService;->unlockNative(I[B)I

    move-result v2

    .line 2689
    .local v2, "ret":I
    if-eqz v2, :cond_1

    .line 2690
    const-string v4, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unlockNative failed ret : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2694
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2696
    iget-object v4, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2697
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2698
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    monitor-exit v4

    goto :goto_0

    .line 2700
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2699
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    const/4 v3, 0x2

    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/server/SdpManagerService;->setEngineStateLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;I)I

    .line 2700
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2702
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public onMigration(IZ[B)Z
    .locals 4
    .param p1, "personaId"    # I
    .param p2, "isMinor"    # Z
    .param p3, "cmk"    # [B

    .prologue
    const/4 v1, 0x0

    .line 2806
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2807
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2826
    :goto_0
    return v1

    .line 2812
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2813
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2814
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2815
    if-nez v0, :cond_1

    .line 2816
    const-string v2, "SdpManagerService"

    const-string v3, "can\'t find SDP INFO xml. Migration failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2814
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2820
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/android/server/SdpManagerService;->onMigrationInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;[B)I

    move-result v2

    if-eqz v2, :cond_2

    .line 2821
    const-string v1, "SdpManagerService"

    const-string v2, "Migration failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    const/4 v1, 0x1

    goto :goto_0

    .line 2825
    :cond_2
    const-string v2, "SdpManagerService"

    const-string v3, "Migration OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onUserAdded(I[BI)Z
    .locals 9
    .param p1, "personaId"    # I
    .param p2, "cmk"    # [B
    .param p3, "flags"    # I

    .prologue
    .line 2729
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2730
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    const/4 v2, 0x0

    .line 2764
    :goto_0
    return v2

    .line 2733
    :cond_0
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUserAdded :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2734
    const-string/jumbo v2, "onUserAdded"

    invoke-static {v2}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2736
    invoke-static {p1}, Lcom/sec/enterprise/knox/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v1

    .line 2737
    .local v1, "alias":Ljava/lang/String;
    new-instance v0, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    const/4 v4, 0x1

    const/4 v6, 0x4

    const/4 v7, 0x0

    move v2, p1

    move v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    .line 2753
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    const/16 v2, 0x20

    invoke-direct {p0, p2, v2}, Lcom/android/server/SdpManagerService;->getPadded([BI)[B

    move-result-object v7

    .line 2756
    .local v7, "paddedCmk":[B
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;IILcom/sec/enterprise/knox/sdp/engine/SdpCreationParam;[B)I

    move-result v8

    .line 2760
    .local v8, "ret":I
    invoke-direct {p0, v7}, Lcom/android/server/SdpManagerService;->zeroOut([B)V

    .line 2761
    if-eqz v8, :cond_1

    .line 2762
    const/4 v2, 0x0

    goto :goto_0

    .line 2764
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onUserRemoved(I)Z
    .locals 6
    .param p1, "personaId"    # I

    .prologue
    const/4 v2, 0x0

    .line 2770
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2771
    const-string v3, "SdpManagerService"

    const-string v4, "SDP not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :goto_0
    return v2

    .line 2774
    :cond_0
    const-string/jumbo v3, "onUserRemoved"

    invoke-static {v3}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 2775
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onUserRemoved "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2778
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2779
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 2780
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2781
    if-nez v0, :cond_1

    .line 2782
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "onUserRemoved :: no engine found"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2780
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2786
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 2787
    .local v1, "ret":I
    if-nez v1, :cond_2

    .line 2788
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2789
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 2790
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2791
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 2793
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 2794
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2796
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    .line 2797
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :goto_1
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 2794
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 2799
    :cond_2
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public registerListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 771
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v1, -0x3

    .line 788
    :goto_0
    return v1

    .line 776
    :cond_0
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "registerListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 783
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 784
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 785
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 786
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->registerListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I

    move-result v1

    goto :goto_0
.end method

.method public removeEngine(Ljava/lang/String;)I
    .locals 6
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x8

    .line 507
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 508
    const-string v2, "SdpManagerService"

    const-string v3, "SDP not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const/4 v1, -0x3

    .line 569
    :cond_0
    :goto_0
    return v1

    .line 513
    :cond_1
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 514
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 515
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    if-nez v0, :cond_2

    .line 517
    const-string v2, "SdpManagerService"

    const-string/jumbo v3, "removeEngine :: no engine found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v1, -0x7

    goto :goto_0

    .line 515
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 521
    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 526
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 542
    :cond_3
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;

    sget-object v3, Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/SdpServiceKeeper;->removePolicy(Landroid/content/Context;IILcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    move-result v1

    .line 543
    .local v1, "ret":I
    if-nez v1, :cond_5

    .line 544
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 545
    :try_start_2
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 546
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->removeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    invoke-static {v2, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 547
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->updateEngineListLocked()I
    invoke-static {v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$300(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)I

    .line 549
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->onEngineRemoved(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    .line 550
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 551
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v2

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->removeEngineNative(II)I

    move-result v1

    .line 562
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "engine removed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V

    goto :goto_0

    .line 535
    .end local v1    # "ret":I
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 537
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 550
    .restart local v1    # "ret":I
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 564
    :cond_5
    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeEngine :: failed ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method removeKeys(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)V
    .locals 6
    .param p1, "info"    # Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    .prologue
    .line 978
    if-eqz p1, :cond_3

    .line 979
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 982
    sget-object v3, Lcom/sec/knox/container/util/KeyManagementUtil;->TYPE_MAP:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 983
    .local v2, "type":I
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 984
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeECMK(II)Z

    .line 985
    iget-object v3, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/sec/knox/container/util/KeyManagementUtil;->removeKEK(II)Z

    .line 986
    const-string v3, "SdpManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeKeys :: Key pair of #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " removed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 989
    .end local v2    # "type":I
    :cond_1
    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v3

    if-eqz v3, :cond_2

    .line 990
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 991
    .local v0, "file":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->removeDirectoryRecursive(Ljava/io/File;)V

    .line 995
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 994
    :cond_3
    const-string v3, "SdpManagerService"

    const-string/jumbo v4, "removeKeys :: Failed. info null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "rstToken"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 728
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 729
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/4 v1, -0x3

    .line 765
    :cond_0
    :goto_0
    return v1

    .line 734
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 735
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 736
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 737
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 740
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 747
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 765
    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->resetPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 757
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 760
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveTokenIntoTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "resetToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3641
    const-string/jumbo v4, "saveTokenIntoTrusted"

    invoke-static {v4}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3643
    const/16 v2, -0x63

    .line 3644
    .local v2, "ret":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3645
    :cond_0
    const/16 v4, -0xb

    .line 3655
    :goto_0
    return v4

    .line 3647
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3648
    .local v3, "userId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3649
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 3651
    .local v1, "entry":[B
    invoke-direct {p0, v3, v0}, Lcom/android/server/SdpManagerService;->deleteTokenInternal(ILjava/lang/String;)Z

    .line 3653
    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/SdpManagerService;->saveTokenInternal(ILjava/lang/String;[B)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3654
    const/4 v2, 0x0

    :cond_2
    move v4, v2

    .line 3655
    goto :goto_0
.end method

.method public setPassword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 685
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 686
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/4 v1, -0x3

    .line 722
    :cond_0
    :goto_0
    return v1

    .line 691
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 692
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 693
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 694
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 697
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 704
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 722
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->setPasswordInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 714
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 717
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setSDPMigrating(IZ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "isSdpMigrating"    # Z

    .prologue
    .line 331
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :goto_0
    return-void

    .line 336
    :cond_0
    const-string/jumbo v1, "setSDPMigrating"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 337
    iput-boolean p2, p0, Lcom/android/server/SdpManagerService;->mWaitForPassword:Z

    .line 339
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 340
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(I)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 341
    .local v0, "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 345
    .end local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 343
    .restart local v0    # "si":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->setIsMigrating(Z)V

    .line 344
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->storeEngineInfoLocked(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I
    invoke-static {v1, v0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$100(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)I

    .line 345
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSDPMigrating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :goto_0
    return-void

    .line 284
    :cond_0
    const-string v1, "SdpManagerService"

    const-string v2, "SdpManagerService ready"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string/jumbo v1, "systemReady"

    invoke-static {v1}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 286
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 287
    new-instance v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    .line 288
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "sending message MSG_SYSTEM_READY to handler."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/SdpManagerService$SdpHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 290
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/SdpManagerService;->mSdpHandler:Lcom/android/server/SdpManagerService$SdpHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/SdpManagerService$SdpHandler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "systemReady done."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlock(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x8

    .line 642
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v2

    if-nez v2, :cond_1

    .line 643
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/4 v1, -0x3

    .line 679
    :cond_0
    :goto_0
    return v1

    .line 648
    :cond_1
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 649
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 650
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_2

    .line 651
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "lock :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 654
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 656
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 661
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    :cond_3
    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 671
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 674
    const-string v2, "SdpManagerService"

    const-string v3, "Permission denied to invoke engine control API"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unlockViaTrusted(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "nameTag"    # Ljava/lang/String;
    .param p2, "engineAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x8

    .line 3696
    const-string/jumbo v8, "unlockViaTrusted"

    invoke-static {v8}, Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 3698
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3699
    const-string v7, "SdpManagerService"

    const-string v8, "SDP not supported"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    const/4 v7, -0x3

    .line 3739
    :cond_0
    :goto_0
    return v7

    .line 3704
    :cond_1
    iget-object v8, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v8

    .line 3705
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v2

    .line 3706
    .local v2, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v2, :cond_2

    .line 3707
    const-string v7, "SdpManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unlockViaTrusted :: Couldn\'t find engine info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    const/4 v7, -0x7

    monitor-exit v8

    goto :goto_0

    .line 3710
    .end local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .restart local v2    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_2
    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3718
    invoke-virtual {v2}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->isAndroidDefaultEngine()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3721
    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isEngineOwner(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isPrivileged(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v2}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 3724
    const-string v8, "SdpManagerService"

    const-string v9, "Permission denied to invoke engine control API"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3729
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 3730
    .local v6, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3731
    .local v0, "alias":Ljava/lang/String;
    const/4 v3, 0x0

    .line 3733
    .local v3, "resetToken":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3734
    .local v4, "token":J
    iget-object v7, p0, Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/pm/TimaHelper;->getEntry(ILjava/lang/String;)[B

    move-result-object v1

    .line 3735
    .local v1, "entry":[B
    if-eqz v1, :cond_4

    .line 3736
    new-instance v3, Ljava/lang/String;

    .end local v3    # "resetToken":Ljava/lang/String;
    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    .line 3738
    .restart local v3    # "resetToken":Ljava/lang/String;
    :cond_4
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3739
    invoke-direct {p0, v2, v3}, Lcom/android/server/SdpManagerService;->unlockViaTrustedInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;)I

    move-result v7

    goto :goto_0
.end method

.method public unregisterListener(Ljava/lang/String;Lcom/sec/sdp/ISdpListener;)I
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/sec/sdp/ISdpListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 794
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 795
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v1, -0x3

    .line 811
    :goto_0
    return v1

    .line 799
    :cond_0
    const-string v1, "SdpManagerService"

    const-string/jumbo v2, "unregisterListener"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 806
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 807
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 808
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 809
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 811
    invoke-direct {p0, v0, p2}, Lcom/android/server/SdpManagerService;->unregisterListenerInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Lcom/sec/sdp/ISdpListener;)I

    move-result v1

    goto :goto_0
.end method

.method public verify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "credential"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3841
    invoke-direct {p0}, Lcom/android/server/SdpManagerService;->isSupportedDevice()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3842
    const-string v1, "SdpManagerService"

    const-string v2, "SDP not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    const/4 v1, -0x3

    .line 3860
    :goto_0
    return v1

    .line 3846
    :cond_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3847
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService;->getEngineInfoLocked(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v0

    .line 3848
    .local v0, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-nez v0, :cond_1

    .line 3849
    const-string v1, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "verify :: can\'t find engine info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    const/4 v1, -0x7

    monitor-exit v2

    goto :goto_0

    .line 3852
    .end local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3857
    invoke-direct {p0, v0}, Lcom/android/server/SdpManagerService;->isSystemComponent(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3858
    const/4 v1, -0x8

    goto :goto_0

    .line 3860
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/android/server/SdpManagerService;->unlockInternal(Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method
