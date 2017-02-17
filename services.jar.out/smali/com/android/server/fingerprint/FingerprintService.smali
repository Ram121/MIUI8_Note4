.class public Lcom/android/server/fingerprint/FingerprintService;
.super Lcom/android/server/SystemService;
.source "FingerprintService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;,
        Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;,
        Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    }
.end annotation


# static fields
.field private static final ACTION_FINGERPRINT_ADDED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_ADDED"

.field private static final ACTION_FINGERPRINT_REMOVED:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

.field private static final ACTION_FINGERPRINT_RESET:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_RESET"

.field private static final ACTION_LOCKOUT_RESET:Ljava/lang/String; = "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

.field private static final DEBUG:Z

.field private static final ENROLLMENT_TIMEOUT_MS:I = 0x0

.field private static final FAIL_LOCKOUT_TIMEOUT_MS:J = 0x7530L

.field private static final FINGERPRINTD:Ljava/lang/String; = "android.hardware.fingerprint.IFingerprintDaemon"

.field private static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field private static final IS_SUPPORT_LOCKOUT_FEATURE:Z = true

.field private static final MAX_FAILED_ATTEMPTS:I = 0x5

.field private static final MSG_USER_REMOVED:I = 0xb

.field private static final MSG_USER_SWITCHING:I = 0xa

.field private static final MS_PER_SEC:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "FingerprintService"

.field private static accquiredEventNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static errorEventNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final isEnableSurveyMode:Z

.field private static requestCmdNameMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

.field private mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

.field private mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mFailedAttempts:I

.field private final mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

.field private final mFpmsPackage:Ljava/lang/String;

.field private mHalDeviceId:J

.field mHandler:Landroid/os/Handler;

.field private mIsEnrolling:Z

.field private final mKeyguardPackage:Ljava/lang/String;

.field private mLatestSensorStatus:I

.field private mLockOutTime:J

.field private final mLockoutMonitors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

.field private final mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

.field private final syncObj:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->isEnableSurveyMode:Z

    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 221
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 110
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 111
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 112
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 113
    iput-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    .line 124
    const-string v0, "com.samsung.android.fingerprint.service"

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFpmsPackage:Ljava/lang/String;

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    .line 130
    iput v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I

    .line 132
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$1;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$1;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-static {}, Lcom/android/server/fingerprint/FingerprintUtils;->getInstance()Lcom/android/server/fingerprint/FingerprintUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    .line 158
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    .line 160
    iput-boolean v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    .line 163
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 165
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$2;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$2;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 213
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$3;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$3;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    .line 1354
    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5;

    invoke-direct {v0, p0}, Lcom/android/server/fingerprint/FingerprintService$5;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    .line 222
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    .line 225
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    .line 226
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    .line 227
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 228
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RESET_FINGERPRINT_LOCKOUT"

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 230
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->accquiredEventNameMap:Landroid/util/SparseArray;

    .line 232
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->errorEventNameMap:Landroid/util/SparseArray;

    .line 233
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/server/fingerprint/FingerprintService;->requestCmdNameMap:Landroid/util/SparseArray;

    .line 234
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->accquiredEventNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_ACQUIRED_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 235
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->errorEventNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_ERROR_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->requestCmdNameMap:Landroid/util/SparseArray;

    const-string v1, "FINGERPRINT_REQUEST_"

    invoke-static {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 90
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/FingerprintService;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->removeFinger(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/fingerprint/FingerprintService;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/fingerprint/FingerprintService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->userActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/fingerprint/FingerprintService;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/fingerprint/FingerprintService;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/fingerprint/FingerprintService;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mResetFailedAttemptsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->resetFailedAttempts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/fingerprint/FingerprintService;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->checkIntegrity()V

    return-void
.end method

.method private addLockoutResetMonitor(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1006
    :cond_0
    return-void
.end method

.method private addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    .line 502
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTemplateForUser : fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    if-nez p1, :cond_1

    .line 504
    const-string v0, "FingerprintService"

    const-string v1, "addTemplateForUser : no clientMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 508
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-direct {p0, v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z
    .locals 9
    .param p1, "attr"    # Landroid/os/Bundle;
    .param p2, "restricted"    # Z
    .param p3, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1842
    if-nez p2, :cond_1

    .line 1843
    if-eqz p3, :cond_0

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1844
    const-string v4, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : Keyguard client"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    :goto_0
    return v3

    .line 1847
    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v5, "privileged_attr"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 1849
    const-string v4, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : have PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY attr"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1853
    :cond_1
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->opPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1854
    iget-object v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 1855
    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1856
    const-string v4, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : keyguard is unlocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1861
    .end local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 1862
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_3

    .line 1863
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify: no fingeprintd!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1864
    goto :goto_0

    .line 1866
    :cond_3
    const v3, 0x186c9

    const/4 v5, 0x6

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x0

    new-array v7, v7, [B

    const/4 v8, 0x0

    invoke-interface {v0, v5, v6, v7, v8}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 1868
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : sensor is working"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1869
    goto :goto_0

    .line 1871
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :catch_0
    move-exception v1

    .line 1872
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify: failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1874
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string v3, "FingerprintService"

    const-string v5, "canStopExclusiveIdentify : false"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1875
    goto :goto_0
.end method

.method private canUseFingerprint(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z

    .prologue
    .line 976
    const-string v0, "android.permission.MANAGE_FINGERPRINT"

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/fingerprint/FingerprintService;->canUseFingerprint(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canUseFingerprint(Ljava/lang/String;ZZ)Z
    .locals 6
    .param p1, "opPackageName"    # Ljava/lang/String;
    .param p2, "foregroundOnly"    # Z
    .param p3, "restricted"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 980
    const-string v4, "android.permission.USE_FINGERPRINT"

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->checkPermission(Ljava/lang/String;)V

    .line 981
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 982
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 983
    .local v0, "pid":I
    if-nez p3, :cond_1

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mKeyguardPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.samsung.android.fingerprint.service"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 999
    :cond_0
    :goto_0
    return v2

    .line 986
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->isCurrentUserOrProfile(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 987
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not a current user or profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 988
    goto :goto_0

    .line 990
    :cond_2
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x37

    invoke-virtual {v4, v5, v1, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 992
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; permission denied"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 993
    goto :goto_0

    .line 995
    :cond_3
    if-eqz p2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->isForegroundActivity(II)Z

    move-result v4

    if-nez v4, :cond_0

    .line 996
    const-string v2, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rejecting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ; not in foreground"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 997
    goto :goto_0
.end method

.method private cancelLockoutReset()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 414
    return-void
.end method

.method private checkIntegrity()V
    .locals 33

    .prologue
    .line 1880
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v19

    .line 1881
    .local v19, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v19, :cond_1

    .line 1882
    const-string v2, "FingerprintService"

    const-string v3, "checkIntegrity: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    :cond_0
    :goto_0
    return-void

    .line 1886
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    .line 1887
    .local v8, "userId":I
    const/16 v2, 0xa

    new-array v6, v2, [B

    .line 1888
    .local v6, "tmpOutBuffer":[B
    const/4 v3, 0x0

    const/16 v4, 0xb

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/fingerprint/FingerprintService;->startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I

    move-result v32

    .line 1889
    .local v32, "sizeOfDaemon":I
    if-gez v32, :cond_2

    .line 1890
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIntegrity: error ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1965
    .end local v6    # "tmpOutBuffer":[B
    .end local v8    # "userId":I
    .end local v32    # "sizeOfDaemon":I
    :catch_0
    move-exception v20

    .line 1966
    .local v20, "e":Ljava/lang/Exception;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1893
    .end local v20    # "e":Ljava/lang/Exception;
    .restart local v6    # "tmpOutBuffer":[B
    .restart local v8    # "userId":I
    .restart local v32    # "sizeOfDaemon":I
    :cond_2
    :try_start_1
    move/from16 v0, v32

    invoke-static {v6, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v30

    .line 1894
    .local v30, "outBuffer":[B
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v23

    .line 1895
    .local v23, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 1896
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    .line 1897
    .local v22, "fpInfo":Ljava/lang/StringBuilder;
    const-string v2, "FPS : "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/fingerprint/Fingerprint;

    .line 1899
    .local v21, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const-string v2, "%02d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1901
    .end local v21    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_3
    const-string v2, "\n"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1902
    const-string v2, "FPD : "

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    move-object/from16 v17, v30

    .local v17, "arr$":[B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    .local v29, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    :goto_2
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_4

    aget-byte v18, v17, v27

    .line 1904
    .local v18, "b":B
    const-string v2, "%02d "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1903
    add-int/lit8 v27, v27, 0x1

    goto :goto_2

    .line 1906
    .end local v18    # "b":B
    :cond_4
    const-string v2, "FingerprintService"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1908
    .end local v17    # "arr$":[B
    .end local v22    # "fpInfo":Ljava/lang/StringBuilder;
    .end local v27    # "i$":I
    .end local v29    # "len$":I
    :cond_5
    if-lez v32, :cond_10

    .line 1909
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    .line 1910
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v31

    .line 1911
    .local v31, "sFpMgr":Lcom/samsung/android/fingerprint/FingerprintManager;
    move-object/from16 v17, v30

    .restart local v17    # "arr$":[B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v27, 0x0

    .restart local v27    # "i$":I
    :goto_3
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_0

    aget-byte v26, v17, v27
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1912
    .local v26, "i":B
    const/16 v24, 0x0

    .line 1914
    .local v24, "fpName":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getIndexName(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v24

    .line 1917
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    move/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v2, v3, v0, v8, v1}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V

    .line 1918
    if-eqz v24, :cond_6

    .line 1919
    const/4 v2, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->setIndexName(ILjava/lang/String;)Z

    .line 1911
    :goto_5
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 1921
    :cond_6
    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    goto :goto_5

    .line 1926
    .end local v17    # "arr$":[B
    .end local v24    # "fpName":Ljava/lang/String;
    .end local v26    # "i":B
    .end local v27    # "i$":I
    .end local v29    # "len$":I
    .end local v31    # "sFpMgr":Lcom/samsung/android/fingerprint/FingerprintManager;
    :cond_7
    move-object/from16 v17, v30

    .restart local v17    # "arr$":[B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v27, 0x0

    .restart local v27    # "i$":I
    move/from16 v28, v27

    .end local v27    # "i$":I
    .local v28, "i$":I
    :goto_6
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_b

    aget-byte v26, v17, v28

    .line 1927
    .restart local v26    # "i":B
    const/16 v25, 0x0

    .line 1928
    .local v25, "hasFinger":Z
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .end local v28    # "i$":I
    .local v27, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/fingerprint/Fingerprint;

    .line 1929
    .restart local v21    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    move/from16 v0, v26

    if-ne v0, v2, :cond_8

    .line 1930
    const/16 v25, 0x1

    .line 1934
    .end local v21    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_9
    if-nez v25, :cond_a

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    move/from16 v0, v26

    invoke-virtual {v2, v3, v0, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->addFingerprintForUser(Landroid/content/Context;II)V

    .line 1936
    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v2, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    .line 1926
    :cond_a
    add-int/lit8 v27, v28, 0x1

    .local v27, "i$":I
    move/from16 v28, v27

    .end local v27    # "i$":I
    .restart local v28    # "i$":I
    goto :goto_6

    .line 1940
    .end local v25    # "hasFinger":Z
    .end local v26    # "i":B
    :cond_b
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .end local v28    # "i$":I
    :cond_c
    :goto_7
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/fingerprint/Fingerprint;

    .line 1941
    .restart local v21    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    const/16 v25, 0x0

    .line 1942
    .restart local v25    # "hasFinger":Z
    move-object/from16 v17, v30

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    const/16 v28, 0x0

    .restart local v28    # "i$":I
    :goto_8
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_e

    aget-byte v26, v17, v28

    .line 1943
    .restart local v26    # "i":B
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    move/from16 v0, v26

    if-ne v0, v2, :cond_d

    .line 1944
    const/16 v25, 0x1

    .line 1942
    :cond_d
    add-int/lit8 v28, v28, 0x1

    goto :goto_8

    .line 1947
    .end local v26    # "i":B
    :cond_e
    if-nez v25, :cond_c

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 1949
    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    goto :goto_7

    .line 1952
    .end local v21    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v25    # "hasFinger":Z
    .end local v28    # "i$":I
    :cond_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1953
    const-string v2, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v3, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1958
    .end local v17    # "arr$":[B
    .end local v29    # "len$":I
    :cond_10
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1959
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/hardware/fingerprint/Fingerprint;

    .line 1961
    .restart local v21    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    new-instance v9, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move v14, v8

    invoke-direct/range {v9 .. v16}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    .line 1915
    .end local v21    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .restart local v17    # "arr$":[B
    .restart local v24    # "fpName":Ljava/lang/String;
    .restart local v26    # "i":B
    .local v27, "i$":I
    .restart local v29    # "len$":I
    .restart local v31    # "sFpMgr":Lcom/samsung/android/fingerprint/FingerprintManager;
    :catch_1
    move-exception v2

    goto/16 :goto_4
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1700
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1702
    .local v1, "dump":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v8, "service"

    const-string v9, "Fingerprint Manager"

    invoke-virtual {v1, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1704
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1705
    .local v5, "sets":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1706
    .local v6, "user":Landroid/content/pm/UserInfo;
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 1707
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v7}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    .line 1708
    .local v0, "N":I
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1709
    .local v4, "set":Lorg/json/JSONObject;
    const-string/jumbo v8, "id"

    invoke-virtual {v4, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1710
    const-string/jumbo v8, "count"

    invoke-virtual {v4, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1711
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1715
    .end local v0    # "N":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "set":Lorg/json/JSONObject;
    .end local v5    # "sets":Lorg/json/JSONArray;
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    .end local v7    # "userId":I
    :catch_0
    move-exception v2

    .line 1716
    .local v2, "e":Lorg/json/JSONException;
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "dump formatting failure"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1718
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1719
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " latest sensor status : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    return-void

    .line 1714
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "sets":Lorg/json/JSONArray;
    :cond_0
    :try_start_1
    const-string/jumbo v8, "prints"

    invoke-virtual {v1, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static generateNameMap(Landroid/util/SparseArray;Ljava/lang/String;)V
    .locals 9
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, "map":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 211
    :cond_0
    return-void

    .line 194
    :cond_1
    const-class v7, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v7}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 195
    .local v4, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 196
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 195
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    :cond_3
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    .line 201
    .local v3, "fieldValue":I
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v3, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 202
    .end local v3    # "fieldValue":I
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "FingerprintService"

    const-string/jumbo v8, "generateNameMap: failed "

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-boolean v7, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 205
    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getLockoutResetIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.fingerprint.ACTION_LOCKOUT_RESET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleFailedAttempt(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)Z
    .locals 4
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v0, 0x1

    .line 438
    if-eqz p1, :cond_1

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 441
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleFailedAttempt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    .line 443
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->scheduleLockoutReset()V

    .line 446
    const/4 v1, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {p1, v1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    const-string v1, "FingerprintService"

    const-string v2, "Cannot send lockout message to client"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return v0

    .line 449
    :cond_0
    iput-boolean v0, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->isDone:Z

    goto :goto_0

    .line 454
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inLockoutMode()Z
    .locals 2

    .prologue
    .line 401
    iget v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForegroundActivity(II)Z
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 954
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 956
    .local v4, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 957
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 958
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 959
    .local v3, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p2, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v5, p1, :cond_0

    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 961
    const/4 v5, 0x1

    .line 967
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :goto_1
    return v5

    .line 957
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    .restart local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v1

    .line 965
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "FingerprintService"

    const-string v6, "am.getRunningAppProcesses() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isTZCommand(I)Z
    .locals 1
    .param p1, "cmd"    # I

    .prologue
    .line 810
    packed-switch p1, :pswitch_data_0

    .line 819
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 817
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private listenForUserSwitches()V
    .locals 3

    .prologue
    .line 1774
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$6;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$6;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1793
    :goto_0
    return-void

    .line 1790
    :catch_0
    move-exception v0

    .line 1791
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to listen for user switching event"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyLockoutResetMonitors()V
    .locals 2

    .prologue
    .line 1014
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1015
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    invoke-virtual {v1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;->sendLockoutReset()V

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1017
    :cond_0
    return-void
.end method

.method private remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I
    .locals 8
    .param p1, "daemon"    # Landroid/hardware/fingerprint/IFingerprintDaemon;
    .param p2, "fpId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 798
    const/4 v3, -0x1

    .line 800
    .local v3, "result":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 801
    .local v0, "begin":J
    invoke-interface {p1, p2, p3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v3

    .line 802
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remove FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms) RESULT: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 806
    .end local v0    # "begin":J
    :goto_0
    return v3

    .line 803
    :catch_0
    move-exception v2

    .line 804
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "remove failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V
    .locals 2
    .param p1, "client"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .prologue
    const/4 v1, 0x0

    .line 388
    if-nez p1, :cond_1

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 389
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->destroy()V

    .line 390
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_2

    .line 391
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0

    .line 392
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_3

    .line 393
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-ne p1, v0, :cond_0

    .line 395
    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    goto :goto_0
.end method

.method private removeFinger(II)I
    .locals 15
    .param p1, "fpId"    # I
    .param p2, "groupId"    # I

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v9

    .line 769
    .local v9, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v9, :cond_1

    .line 770
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "removeFinger: no fingeprintd!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v14, -0x1

    .line 794
    :cond_0
    :goto_0
    return v14

    .line 773
    :cond_1
    move/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result v6

    .line 774
    .local v6, "effectiveUserId":I
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 775
    const/4 v14, 0x0

    .line 776
    .local v14, "retVal":I
    const/4 v1, -0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 777
    invoke-virtual {p0, v6}, Lcom/android/server/fingerprint/FingerprintService;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v11

    .line 778
    .local v11, "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/fingerprint/Fingerprint;

    .line 779
    .local v10, "fp":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {v10}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v1

    invoke-direct {p0, v9, v1, v6}, Lcom/android/server/fingerprint/FingerprintService;->remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I

    move-result v13

    .line 780
    .local v13, "result":I
    if-eqz v13, :cond_2

    .line 781
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove with id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v10}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/4 v14, -0x1

    .line 783
    goto :goto_1

    .line 785
    :cond_2
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    invoke-virtual {v10}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    goto :goto_1

    .line 788
    .end local v10    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    .end local v11    # "fpList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/fingerprint/Fingerprint;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "result":I
    :cond_3
    move/from16 v0, p1

    invoke-direct {p0, v9, v0, v6}, Lcom/android/server/fingerprint/FingerprintService;->remove(Landroid/hardware/fingerprint/IFingerprintDaemon;II)I

    move-result v1

    if-nez v1, :cond_4

    .line 789
    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    move/from16 v0, p1

    invoke-direct {p0, v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 790
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 792
    :cond_4
    const/4 v14, -0x1

    goto/16 :goto_0
.end method

.method private removeLockoutResetCallback(Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;)V
    .locals 1
    .param p1, "monitor"    # Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceLockoutResetMonitor;

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockoutMonitors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1011
    return-void
.end method

.method private removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V
    .locals 6
    .param p1, "clientMonitor"    # Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    .param p2, "fingerId"    # I

    .prologue
    const-wide/16 v4, -0x1

    .line 486
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeTemplateForUser : fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_0
    if-nez p1, :cond_1

    .line 488
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "removeTemplateForUser : no clientMonitor"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :goto_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget v2, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/server/fingerprint/FingerprintUtils;->removeFingerprintIdForUser(Landroid/content/Context;II)V

    .line 492
    iget v0, p1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->userId:I

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-direct {p0, v0, p2}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    .line 494
    const-string v0, "FPRM"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    .line 496
    :cond_2
    const-string v0, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->sendBroadcast(Ljava/lang/String;I)V

    .line 497
    const-string v0, "FPRM"

    const-string v1, "ALL"

    invoke-virtual {p0, v0, v1, v4, v5}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private resetFailedAttempts()V
    .locals 2

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "FingerprintService"

    const-string v1, "Reset fingerprint lockout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->cancelLockoutReset()V

    .line 430
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->notifyLockoutResetMonitors()V

    .line 432
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFailedAttempts:I

    .line 433
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    .line 435
    return-void
.end method

.method private scheduleLockoutReset()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x7530

    .line 407
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v6

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->getLockoutResetIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 409
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, v6

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    .line 410
    return-void
.end method

.method private sendBroadcast(Ljava/lang/String;I)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "fingerId"    # I

    .prologue
    .line 458
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v1, "intent":Landroid/content/Intent;
    if-lez p2, :cond_0

    .line 460
    const-string/jumbo v2, "fingerIndex"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 461
    const-string/jumbo v2, "verificationType"

    const-string v3, "Device Credential"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 465
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 466
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is sended with fingerId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :goto_0
    return-void

    .line 468
    :cond_1
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] is sended"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendBroadcast failed :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V
    .locals 4
    .param p1, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p2, "error"    # I

    .prologue
    .line 476
    if-eqz p1, :cond_0

    .line 478
    :try_start_0
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    invoke-interface {p1, v2, v3, p2}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintService"

    const-string v2, "Failed to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopPendingOperations(Z)V
    .locals 8
    .param p1, "initiatedByClient"    # Z

    .prologue
    .line 580
    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopPendingOperations : initiatedByClient="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_0
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_1

    .line 582
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 584
    :cond_1
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_2

    .line 585
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {p0, v4, p1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 587
    :cond_2
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_3

    .line 588
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 591
    :cond_3
    if-eqz p1, :cond_4

    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v0

    .line 594
    .local v0, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v0, :cond_5

    .line 595
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "stopPendingOperations: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_4
    :goto_0
    return-void

    .line 598
    .restart local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    :cond_5
    const/4 v4, 0x6

    const/4 v5, 0x0

    new-array v5, v5, [B

    const/4 v6, 0x0

    new-array v6, v6, [B

    const/4 v7, 0x0

    invoke-interface {v0, v4, v5, v6, v7}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v3

    .line 599
    .local v3, "retReq":I
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopPendingOperations : req status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    const v4, 0x186c9

    if-ne v3, v4, :cond_4

    .line 601
    invoke-interface {v0}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v2

    .line 602
    .local v2, "ret":I
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopPendingOperations: cancel = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 604
    .end local v0    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v2    # "ret":I
    .end local v3    # "retReq":I
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "stopPendingOperations: failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateActiveGroup(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1734
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 1735
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v2, :cond_0

    .line 1737
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->getEffectiveUserId(I)I

    move-result p1

    .line 1760
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 1762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1763
    .local v0, "begin":J
    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/biometrics/fp/User_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, p1, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->setActiveGroup(I[B)I

    .line 1764
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateActiveGroup FP_FINISH ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    .end local v0    # "begin":J
    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    .line 1770
    return-void

    .line 1765
    :catch_0
    move-exception v3

    .line 1766
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "FingerprintService"

    const-string v5, "Failed to setActiveGroup():"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private userActivity()V
    .locals 5

    .prologue
    .line 378
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 379
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 380
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 242
    const-string v0, "FingerprintService"

    const-string/jumbo v1, "fingerprintd died"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 244
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V

    .line 245
    return-void
.end method

.method checkPermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must have "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " permission."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    return-void
.end method

.method public getAuthenticatorId()J
    .locals 10

    .prologue
    .line 1796
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "FingerprintService"

    const-string/jumbo v7, "getAuthenticatorId"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 1798
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-eqz v2, :cond_1

    .line 1800
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1801
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->getAuthenticatorId()J

    move-result-wide v4

    .line 1802
    .local v4, "result":J
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAuthenticatorId FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1808
    .end local v0    # "begin":J
    .end local v4    # "result":J
    :goto_0
    return-wide v4

    .line 1804
    :catch_0
    move-exception v3

    .line 1805
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "getAuthenticatorId failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1808
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method getEffectiveUserId(I)I
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 926
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 927
    .local v2, "um":Landroid/os/UserManager;
    if-eqz v2, :cond_1

    .line 928
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 929
    .local v0, "callingIdentity":J
    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    .line 930
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    .end local v0    # "callingIdentity":J
    :goto_0
    sget-boolean v3, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getEffectiveUserId return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_0
    return p1

    .line 932
    :cond_1
    const-string v3, "FingerprintService"

    const-string v4, "Unable to acquire UserManager"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 902
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 903
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;
    .locals 6

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    if-nez v1, :cond_0

    .line 249
    const-string v1, "android.hardware.fingerprint.IFingerprintDaemon"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 250
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 252
    :try_start_1
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 253
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemonCallback:Landroid/hardware/fingerprint/IFingerprintDaemonCallback;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->init(Landroid/hardware/fingerprint/IFingerprintDaemonCallback;)V

    .line 254
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;

    invoke-interface {v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->openHal()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    .line 255
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 256
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V

    .line 257
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->checkIntegrity()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    .line 259
    :cond_1
    :try_start_3
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open Fingerprint HAL!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v1, "FingerprintService"

    const-string v2, "Failed to open fingeprintd HAL"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 264
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mDaemon:Landroid/hardware/fingerprint/IFingerprintDaemon;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 248
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 267
    :cond_2
    :try_start_5
    const-string v1, "FingerprintService"

    const-string/jumbo v2, "fingerprint service not available"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0
.end method

.method protected handleAcquired(JI)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 341
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 342
    const-string v1, "FingerprintService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAcquired : deviceId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", acquiredInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/server/fingerprint/FingerprintService;->accquiredEventNameMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 359
    :cond_0
    :goto_1
    return-void

    .line 344
    :cond_1
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleAcquired : acquiredInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 350
    :cond_2
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_3

    .line 351
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_1

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAcquired(I)Z
    invoke-static {v0, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$800(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_1
.end method

.method protected handleAuthenticated(JII)V
    .locals 7
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 326
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 327
    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAuthenticated : deviceId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,fingerId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ,groupId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 333
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendAuthenticated(II)Z
    invoke-static {v1, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$700(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 334
    if-eqz p3, :cond_3

    :goto_1
    or-int/lit8 v1, v2, 0x0

    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    .line 335
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 338
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    return-void

    .line 329
    :cond_1
    const-string v4, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleAuthenticated : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_2

    .restart local v0    # "token":Landroid/os/IBinder;
    :cond_3
    move v2, v3

    .line 334
    goto :goto_1
.end method

.method protected handleEnrollResult(JIII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 362
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleEnrollResult : deviceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,fingerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,groupId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendEnrollResult(III)Z
    invoke-static {v0, p3, p4, p5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$900(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;III)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    const/16 v0, 0x64

    if-ne p5, v0, :cond_1

    .line 369
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0, p3}, Lcom/android/server/fingerprint/FingerprintService;->addTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 370
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v0}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 371
    const-string v0, "FPEN"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V

    .line 375
    :cond_1
    return-void
.end method

.method protected handleEnumerate(J[I[I)V
    .locals 3
    .param p1, "deviceId"    # J
    .param p3, "fingerIds"    # [I
    .param p4, "groupIds"    # [I

    .prologue
    .line 274
    array-length v0, p3

    array-length v1, p4

    if-eq v0, v1, :cond_1

    .line 275
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fingerIds and groupIds differ in length: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enumerate: f[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", g[]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected handleError(JI)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    const/4 v4, 0x0

    .line 295
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 296
    const-string v2, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError : deviceId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", error="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/android/server/fingerprint/FingerprintService;->errorEventNameMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_3

    .line 301
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 302
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {p0, v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopEnrollment(Landroid/os/IBinder;Z)V

    .line 315
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_0
    :goto_1
    const/16 v1, 0x3ec

    if-ne p3, v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$4;

    invoke-direct {v2, p0}, Lcom/android/server/fingerprint/FingerprintService$4;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    :cond_1
    return-void

    .line 298
    :cond_2
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleError : error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_4

    .line 306
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v0, v1, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    .line 307
    .restart local v0    # "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    invoke-virtual {p0, v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopAuthentication(Landroid/os/IBinder;Z)V

    goto :goto_1

    .line 310
    .end local v0    # "token":Landroid/os/IBinder;
    :cond_4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v1, p3}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_1
.end method

.method protected handleRemoved(JII)V
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 284
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleRemoved : deviceId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,fingerId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,groupId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 286
    .local v0, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    .line 287
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1, p3}, Lcom/android/server/fingerprint/FingerprintService;->removeTemplateForUser(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)V

    .line 289
    :cond_1
    if-eqz v0, :cond_2

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendRemoved(II)Z
    invoke-static {v0, p3, p4}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$400(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 290
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v1}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    .line 292
    :cond_2
    return-void
.end method

.method handleUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 383
    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleUserSwitching : userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService;->updateActiveGroup(I)V

    .line 385
    return-void
.end method

.method public hasEnrolledFingerprints(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 909
    iget-wide v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    .line 912
    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService;->mFingerprintUtils:Lcom/android/server/fingerprint/FingerprintUtils;

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/fingerprint/FingerprintUtils;->getFingerprintsForUser(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected insertSurveyLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;
    .param p3, "value"    # J

    .prologue
    .line 1812
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1813
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertSurveyLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/fingerprint/FingerprintService;->isEnableSurveyMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    :cond_0
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->isEnableSurveyMode:Z

    if-eqz v2, :cond_1

    .line 1816
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1817
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1818
    const-string/jumbo v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    const-string/jumbo v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1831
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1832
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    const-string/jumbo v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1834
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1835
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    .line 1836
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1839
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method isCurrentUserOrProfile(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 939
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    .line 942
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 943
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 944
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 945
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-ne v4, p1, :cond_0

    .line 946
    const/4 v4, 0x1

    .line 949
    :goto_1
    return v4

    .line 944
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 949
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 1724
    sget-boolean v1, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "FingerprintService"

    const-string/jumbo v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    :cond_0
    const-string/jumbo v1, "fingerprint"

    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/fingerprint/FingerprintService$FingerprintServiceWrapper;-><init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1726
    invoke-direct {p0}, Lcom/android/server/fingerprint/FingerprintService;->listenForUserSwitches()V

    .line 1727
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1728
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1729
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1730
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1731
    return-void
.end method

.method startAuthentication(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLjava/lang/String;Landroid/os/Bundle;)V
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opId"    # J
    .param p4, "groupId"    # I
    .param p5, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p6, "flags"    # I
    .param p7, "restricted"    # Z
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 653
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v13

    .line 654
    .local v13, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v13, :cond_0

    .line 655
    const-string v4, "FingerprintService"

    const-string/jumbo v5, "startAuthentication: no fingeprintd!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 701
    :goto_0
    return-void

    .line 661
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v4, :cond_2

    .line 662
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication: current client = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v4, v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_1

    .line 664
    const-string v4, "FingerprintService"

    const-string v5, "authentication is already in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 667
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p9

    move/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintService;->canStopExclusiveIdentify(Landroid/os/Bundle;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 669
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Locked client["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->owner:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is in progress"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v4}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    goto :goto_0

    .line 674
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 675
    if-nez p9, :cond_3

    .line 676
    new-instance p9, Landroid/os/Bundle;

    .end local p9    # "attr":Landroid/os/Bundle;
    invoke-direct/range {p9 .. p9}, Landroid/os/Bundle;-><init>()V

    .line 678
    .restart local p9    # "attr":Landroid/os/Bundle;
    :cond_3
    const-string/jumbo v4, "packageName"

    move-object/from16 v0, p9

    move-object/from16 v1, p8

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    new-instance v4, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move/from16 v9, p4

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    invoke-direct/range {v4 .. v12}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 680
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->hasPrivilegedAttr(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 681
    const-string v4, "FingerprintService"

    const-string v5, "In lockout mode; disallowing authentication"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    const/4 v5, 0x7

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v4, v5}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    move-result v4

    if-nez v4, :cond_4

    .line 683
    const-string v4, "FingerprintService"

    const-string v5, "Cannot send timeout message to client"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto/16 :goto_0

    .line 688
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    monitor-enter v5

    .line 690
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 691
    .local v14, "begin":J
    move-wide/from16 v0, p2

    move/from16 v2, p4

    invoke-interface {v13, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->authenticate(JI)I

    move-result v17

    .line 692
    .local v17, "result":I
    const-string v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthentication FP_FINISH ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v14

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms) RESULT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    if-eqz v17, :cond_6

    .line 694
    const-string v4, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAuthentication failed, result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    .end local v14    # "begin":J
    .end local v17    # "result":I
    :cond_6
    :goto_1
    :try_start_1
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 697
    :catch_0
    move-exception v16

    .line 698
    .local v16, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "FingerprintService"

    const-string/jumbo v6, "startAuthentication failed"

    move-object/from16 v0, v16

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method startEnrollment(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;IZLandroid/os/Bundle;)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cryptoToken"    # [B
    .param p3, "groupId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "flags"    # I
    .param p6, "restricted"    # Z
    .param p7, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 513
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollment : token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,groupId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,restricted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v11

    .line 515
    .local v11, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v11, :cond_2

    .line 516
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "enroll: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 534
    :cond_1
    :goto_0
    return-void

    .line 520
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 521
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 v7, p3

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 522
    const/16 v16, 0x0

    .line 524
    .local v16, "timeout":I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 525
    .local v12, "begin":J
    const/4 v2, 0x0

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v11, v0, v1, v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->enroll([BII)I

    move-result v15

    .line 526
    .local v15, "result":I
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnrollment FP_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v12

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-eqz v15, :cond_1

    .line 528
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startEnroll failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 531
    .end local v12    # "begin":J
    .end local v15    # "result":I
    :catch_0
    move-exception v14

    .line 532
    .local v14, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startEnroll failed"

    invoke-static {v2, v3, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method public declared-synchronized startPostEnroll(Landroid/os/IBinder;)I
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v5, 0x0

    .line 556
    monitor-enter p0

    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v6, :cond_0

    move v4, v5

    .line 576
    :goto_0
    monitor-exit p0

    return v4

    .line 559
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 560
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v2, :cond_1

    .line 561
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startPostEnroll: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v4, v5

    .line 562
    goto :goto_0

    .line 565
    :cond_1
    :try_start_2
    iget-object v7, p0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 566
    const/4 v6, 0x1

    :try_start_3
    invoke-direct {p0, v6}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 567
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 568
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->postEnroll()I

    move-result v4

    .line 569
    .local v4, "result":I
    const-string v6, "FingerprintService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "startPostEnroll FP_FINISH ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "ms) RESULT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    .line 571
    monitor-exit v7

    goto :goto_0

    .line 572
    .end local v0    # "begin":J
    .end local v4    # "result":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 573
    :catch_0
    move-exception v3

    .line 574
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startPostEnroll failed"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v4, v5

    .line 576
    goto :goto_0

    .line 556
    .end local v2    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v3    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public startPreEnroll(Landroid/os/IBinder;)J
    .locals 12
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const-wide/16 v6, 0x0

    .line 537
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    .line 538
    .local v2, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v2, :cond_0

    .line 539
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "startPreEnroll: no fingeprintd!"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v4, v6

    .line 552
    :goto_0
    return-wide v4

    .line 543
    :cond_0
    const/4 v8, 0x1

    :try_start_0
    invoke-direct {p0, v8}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 545
    .local v0, "begin":J
    invoke-interface {v2}, Landroid/hardware/fingerprint/IFingerprintDaemon;->preEnroll()J

    move-result-wide v4

    .line 546
    .local v4, "result":J
    const-string v8, "FingerprintService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startPreEnroll FP_FINISH ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "ms) RESULT: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 549
    .end local v0    # "begin":J
    .end local v4    # "result":J
    :catch_0
    move-exception v3

    .line 550
    .local v3, "e":Landroid/os/RemoteException;
    const-string v8, "FingerprintService"

    const-string/jumbo v9, "startPreEnroll failed"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v4, v6

    .line 552
    goto :goto_0
.end method

.method startRemove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;Z)V
    .locals 15
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "fingerId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;
    .param p5, "restricted"    # Z

    .prologue
    .line 744
    sget-boolean v2, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", fingerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v12

    .line 746
    .local v12, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v12, :cond_2

    .line 747
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startRemove: no fingeprintd!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v2, 0x1

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 765
    :cond_1
    :goto_0
    return-void

    .line 751
    :cond_2
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 752
    new-instance v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p4

    move/from16 v7, p3

    move/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mRemoveClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 755
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 756
    .local v10, "begin":J
    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v12, v0, v1}, Landroid/hardware/fingerprint/IFingerprintDaemon;->remove(II)I

    move-result v14

    .line 757
    .local v14, "result":I
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove FP_FINISH ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms) RESULT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    if-eqz v14, :cond_1

    .line 759
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startRemove with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed, result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-wide v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintService;->handleError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 762
    .end local v10    # "begin":J
    .end local v14    # "result":I
    :catch_0
    move-exception v13

    .line 763
    .local v13, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string/jumbo v3, "startRemove failed"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method

.method declared-synchronized startRequest(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    .locals 28
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmd"    # I
    .param p3, "inputBuf"    # [B
    .param p4, "outputBuf"    # [B
    .param p5, "inParam"    # I
    .param p6, "groupId"    # I
    .param p7, "receiver"    # Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .prologue
    .line 824
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v18

    .line 825
    .local v18, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v18, :cond_0

    .line 826
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startRequest: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 827
    const/16 v24, -0x2

    .line 898
    :goto_0
    monitor-exit p0

    return v24

    .line 830
    :cond_0
    :try_start_1
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_1

    .line 831
    const-string v7, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest: CMD= "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v6, Lcom/android/server/fingerprint/FingerprintService;->requestCmdNameMap:Landroid/util/SparseArray;

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", Param = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_1
    const/16 v6, 0x3e8

    move/from16 v0, p2

    if-ne v0, v6, :cond_2

    .line 837
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->removeFinger(II)I

    move-result v24

    goto :goto_0

    .line 838
    :cond_2
    const/4 v6, 0x2

    move/from16 v0, p2

    if-ne v0, v6, :cond_8

    .line 839
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 840
    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/server/fingerprint/FingerprintService;->startPostEnroll(Landroid/os/IBinder;)I

    .line 857
    :cond_3
    if-nez p3, :cond_4

    .line 858
    const/4 v6, 0x0

    new-array v0, v6, [B

    move-object/from16 p3, v0

    .line 860
    :cond_4
    if-nez p4, :cond_5

    .line 861
    const/4 v6, 0x0

    new-array v0, v6, [B

    move-object/from16 p4, v0

    .line 863
    :cond_5
    const/16 v23, -0x1

    .line 864
    .local v23, "result":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->syncObj:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 865
    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/fingerprint/FingerprintService;->isTZCommand(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 866
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/fingerprint/FingerprintService;->stopPendingOperations(Z)V

    .line 868
    :cond_6
    if-eqz p7, :cond_7

    .line 869
    new-instance v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/fingerprint/FingerprintService;->mCurrentUserId:I

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p7

    move/from16 v11, p6

    invoke-direct/range {v6 .. v13}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;-><init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mRequestClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 871
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 872
    .local v16, "begin":J
    move-object/from16 v0, v18

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/fingerprint/IFingerprintDaemon;->request(I[B[BI)I

    move-result v23

    .line 873
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v16

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 875
    :try_start_3
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_f

    .line 876
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .local v25, "strInBuiler":Ljava/lang/StringBuilder;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 878
    .local v26, "strOutBuiler":Ljava/lang/StringBuilder;
    if-eqz p3, :cond_d

    move-object/from16 v0, p3

    array-length v6, v0

    if-lez v6, :cond_d

    .line 879
    move-object/from16 v14, p3

    .local v14, "arr$":[B
    array-length v0, v14

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_c

    aget-byte v15, v14, v21

    .line 880
    .local v15, "b":B
    const-string v6, "%02x "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    and-int/lit16 v9, v15, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 879
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 842
    .end local v14    # "arr$":[B
    .end local v15    # "b":B
    .end local v16    # "begin":J
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    .end local v23    # "result":I
    .end local v25    # "strInBuiler":Ljava/lang/StringBuilder;
    .end local v26    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_8
    const/16 v6, 0x3e9

    move/from16 v0, p2

    if-ne v0, v6, :cond_a

    .line 843
    invoke-direct/range {p0 .. p0}, Lcom/android/server/fingerprint/FingerprintService;->inLockoutMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 844
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mLockOutTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v0, v6

    move/from16 v24, v0

    .line 845
    .local v24, "ret":I
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] FP_FINISH - RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 895
    .end local v24    # "ret":I
    :catch_0
    move-exception v19

    .line 896
    .local v19, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "startRequest failed"

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 898
    const/16 v24, -0x3

    goto/16 :goto_0

    .line 848
    .end local v19    # "e":Landroid/os/RemoteException;
    :cond_9
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 849
    :cond_a
    const/16 v6, 0x3ea

    move/from16 v0, p2

    if-ne v0, v6, :cond_3

    .line 850
    :try_start_5
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] FP_FINISH - RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mIsEnrolling:Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v6, :cond_b

    .line 852
    const/16 v24, 0x1

    goto/16 :goto_0

    .line 854
    :cond_b
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 874
    .restart local v23    # "result":I
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v6
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 824
    .end local v18    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .end local v23    # "result":I
    :catchall_1
    move-exception v6

    monitor-exit p0

    throw v6

    .line 882
    .restart local v14    # "arr$":[B
    .restart local v16    # "begin":J
    .restart local v18    # "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    .restart local v21    # "i$":I
    .restart local v22    # "len$":I
    .restart local v23    # "result":I
    .restart local v25    # "strInBuiler":Ljava/lang/StringBuilder;
    .restart local v26    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_c
    :try_start_8
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest: In = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    .end local v14    # "arr$":[B
    .end local v21    # "i$":I
    .end local v22    # "len$":I
    :cond_d
    if-eqz p4, :cond_f

    move-object/from16 v0, p4

    array-length v6, v0

    if-lez v6, :cond_f

    .line 885
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v23

    if-ge v0, v1, :cond_e

    .line 886
    const-string v6, "%02x "

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aget-byte v9, p4, v20

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 885
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 888
    :cond_e
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startRequest: Out= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    .end local v20    # "i":I
    .end local v25    # "strInBuiler":Ljava/lang/StringBuilder;
    .end local v26    # "strOutBuiler":Ljava/lang/StringBuilder;
    :cond_f
    const/4 v6, 0x6

    move/from16 v0, p2

    if-ne v0, v6, :cond_10

    .line 892
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/fingerprint/FingerprintService;->mLatestSensorStatus:I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_10
    move/from16 v24, v23

    .line 894
    goto/16 :goto_0
.end method

.method stopAuthentication(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 710
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication: token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", initiatedByClient="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v3

    .line 713
    .local v3, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v3, :cond_2

    .line 714
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopAuthentication: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v6, :cond_1

    .line 716
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/fingerprint/FingerprintService;->sendError(Landroid/hardware/fingerprint/IFingerprintServiceReceiver;I)V

    .line 740
    :cond_1
    :goto_0
    return-void

    .line 720
    :cond_2
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 721
    .local v2, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_4

    .line 722
    :cond_3
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopAuthentication: invalid client or token!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 726
    :cond_4
    if-eqz p2, :cond_6

    .line 728
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 729
    .local v0, "begin":J
    invoke-interface {v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelAuthentication()I

    move-result v5

    .line 730
    .local v5, "result":I
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    if-eqz v5, :cond_5

    .line 732
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopAuthentication failed, result="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    .end local v0    # "begin":J
    .end local v5    # "result":I
    :cond_5
    :goto_1
    const/4 v6, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v2, v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 739
    :cond_6
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mAuthClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v6}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0

    .line 734
    :catch_0
    move-exception v4

    .line 735
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopAuthentication failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method stopEnrollment(Landroid/os/IBinder;Z)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "initiatedByClient"    # Z

    .prologue
    .line 617
    sget-boolean v6, Lcom/android/server/fingerprint/FingerprintService;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopEnrollment: token="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", initiatedByClient="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v3

    .line 619
    .local v3, "daemon":Landroid/hardware/fingerprint/IFingerprintDaemon;
    if-nez v3, :cond_2

    .line 620
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopEnrollment: no fingeprintd!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    if-eqz v6, :cond_1

    .line 623
    :try_start_0
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    iget-object v6, v6, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->receiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-wide v8, p0, Lcom/android/server/fingerprint/FingerprintService;->mHalDeviceId:J

    const/4 v7, 0x1

    invoke-interface {v6, v8, v9, v7}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_1
    :goto_0
    return-void

    .line 624
    :catch_0
    move-exception v4

    .line 625
    .local v4, "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string v7, "Failed to invoke sendError:"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 630
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    .line 631
    .local v2, "client":Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;
    if-eqz v2, :cond_3

    iget-object v6, v2, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->token:Landroid/os/IBinder;

    if-eq v6, p1, :cond_4

    .line 632
    :cond_3
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopEnrollment: invalid client or token!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 635
    :cond_4
    if-eqz p2, :cond_6

    .line 637
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 638
    .local v0, "begin":J
    invoke-interface {v3}, Landroid/hardware/fingerprint/IFingerprintDaemon;->cancelEnrollment()I

    move-result v5

    .line 639
    .local v5, "result":I
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stopEnrollment FP_FINISH ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms) RESULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    if-eqz v5, :cond_5

    .line 641
    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "startEnrollCancel failed, result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    .end local v0    # "begin":J
    .end local v5    # "result":I
    :cond_5
    :goto_1
    const/4 v6, 0x5

    # invokes: Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->sendError(I)Z
    invoke-static {v2, v6}, Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;->access$500(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;I)Z

    .line 648
    :cond_6
    iget-object v6, p0, Lcom/android/server/fingerprint/FingerprintService;->mEnrollClient:Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;

    invoke-direct {p0, v6}, Lcom/android/server/fingerprint/FingerprintService;->removeClient(Lcom/android/server/fingerprint/FingerprintService$ClientMonitor;)V

    goto :goto_0

    .line 643
    :catch_1
    move-exception v4

    .line 644
    .restart local v4    # "e":Landroid/os/RemoteException;
    const-string v6, "FingerprintService"

    const-string/jumbo v7, "stopEnrollment failed"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
