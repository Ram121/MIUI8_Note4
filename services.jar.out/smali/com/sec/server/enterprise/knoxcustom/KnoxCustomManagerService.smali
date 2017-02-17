.class public Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
.super Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;
    }
.end annotation


# static fields
.field private static final ACTION_KEYGUARD_REFRESH:Ljava/lang/String; = "com.sec.android.keyguard.REFRESH"

.field private static final ACTION_KNOX_CUSTOM_OPERATOR_NAME:Ljava/lang/String; = "com.sec.action.knoxcustom.OPERATOR_NAME"

.field private static final ACTION_MULTIWINDOW_SEALED_MODE:Ljava/lang/String; = "com.sec.android.multiwindow.SEALED_MODE"

.field private static final ACTION_QUICKSETTING_REFRESH:Ljava/lang/String; = "com.sec.android.quicksetting.REFRESH"

.field public static final DB_UID:I = 0x3e8

.field private static final ETH_STATE_DISABLED:I = 0x1

.field private static final ETH_STATE_ENABLED:I = 0x2

.field private static final ETH_STATE_ENABLING:I = 0x3

.field private static final HEX_CHARS:[C

.field private static final HIDE_SEALED:I = 0x4

.field private static final KNOX_CUSTOM_FORCE_OTG_CHARGING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/knox_custom_force_otg_charging"

.field private static final KNOX_CUSTOM_FORCE_USB_CHARGING_SYSFS_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/knox_custom_force_usb_charging"

.field private static final KNOX_CUSTOM_STATUS_BAR_DISABLE_NOTIFICATIONS:I = 0x1030000

.field private static final TAG:Ljava/lang/String; = "KnoxCustomManagerService"

.field static final edgePackages:[Ljava/lang/String;

.field private static mBootReceiver:Landroid/content/BroadcastReceiver;

.field private static mForceLcdBacklightOffEnabled:Z

.field private static mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

.field private static mLockScreenOverrideMode:I

.field private static mWifiConfigure:Z

.field private static mWifiEap:Z

.field private static mWifiPassword:Ljava/lang/String;

.field private static mWifiSSID:Ljava/lang/String;

.field private static mWifiUsername:Ljava/lang/String;


# instance fields
.field private final DEBUG:Z

.field private final customBootDirectory:Ljava/lang/String;

.field private final efsPropertyPath:Ljava/lang/String;

.field private final isNotSupported:Z

.field private mAmericanoUI:Z

.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private mIsTablet:Z

.field private mKnoxCustomCurtainModeIsRunning:Z

.field private mPreviousStatusBarDisableFlags:I

.field private mTempContext:Landroid/content/Context;

.field private final maxDelay:I

.field private final salesCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 208
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 211
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 214
    sput-boolean v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    .line 215
    sput-boolean v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    .line 216
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    .line 217
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    .line 218
    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    .line 228
    sput v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    .line 230
    sput-boolean v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .line 610
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.android.app.cocktailbarservice"

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.appsedge"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.samsung.android.app.taskedge"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.samsung.android.service.peoplestripe"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    .line 705
    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 249
    invoke-direct {p0}, Landroid/app/enterprise/knoxcustom/IKnoxCustomManager$Stub;-><init>()V

    .line 184
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->DEBUG:Z

    .line 199
    iput v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mPreviousStatusBarDisableFlags:I

    .line 201
    iput-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 202
    iput-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 221
    const-string v2, "/data/b2b"

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->customBootDirectory:Ljava/lang/String;

    .line 222
    const-string v2, "/efs/knoxcustom"

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->efsPropertyPath:Ljava/lang/String;

    .line 223
    const v2, 0x7fffffff

    iput v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->maxDelay:I

    .line 224
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->salesCode:Ljava/lang/String;

    .line 225
    const-string v2, "ATT/VZW/TMB/TMK"

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->salesCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    .line 235
    iput-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 236
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mIsTablet:Z

    .line 239
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    .line 242
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    .line 250
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    .line 251
    iput-object p2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 252
    new-instance v2, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 254
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "KnoxCustomManagerService"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 255
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 256
    new-instance v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    .line 258
    const-string/jumbo v2, "ro.build.characteristics"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "deviceType":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "tablet"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v4, v3

    :cond_0
    iput-boolean v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mIsTablet:Z

    .line 261
    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    .local v1, "scafe":Ljava/lang/String;
    const-string v2, "americano"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    iput-boolean v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerBootReceiver()V

    .line 268
    return-void

    .end local v0    # "deviceType":Ljava/lang/String;
    .end local v1    # "scafe":Ljava/lang/String;
    :cond_2
    move v2, v4

    .line 225
    goto :goto_0
.end method

.method private Executer(Ljava/lang/String;)Z
    .locals 7
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 6069
    const/4 v3, 0x0

    .line 6070
    .local v3, "result":Z
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 6073
    .local v1, "output":Ljava/lang/StringBuffer;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 6074
    .local v2, "p":Ljava/lang/Process;
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6075
    const/4 v3, 0x1

    .line 6088
    .end local v2    # "p":Ljava/lang/Process;
    :goto_0
    return v3

    .line 6084
    :catch_0
    move-exception v0

    .line 6085
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Executer() failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6086
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 179
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 179
    sput-boolean p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 179
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    return-object v0
.end method

.method private asHex([B)Ljava/lang/String;
    .locals 5
    .param p1, "buf"    # [B

    .prologue
    .line 707
    array-length v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [C

    .line 708
    .local v0, "chars":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 709
    mul-int/lit8 v2, v1, 0x2

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xf0

    ushr-int/lit8 v4, v4, 0x4

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 710
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    sget-object v3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->HEX_CHARS:[C

    aget-byte v4, p1, v1

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    aput-char v3, v0, v2

    .line 708
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 712
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private checkDotString(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 760
    if-nez p1, :cond_1

    .line 772
    :cond_0
    :goto_0
    return v0

    .line 763
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 769
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "animPath"    # Ljava/lang/String;
    .param p2, "loopPath"    # Ljava/lang/String;
    .param p3, "soundPath"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x80

    const/16 v8, -0x28

    .line 8323
    const/4 v5, 0x0

    .line 8324
    .local v5, "result":I
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    if-eqz v9, :cond_1

    .line 8326
    const/4 v5, -0x6

    .line 8369
    .end local v5    # "result":I
    :cond_0
    :goto_0
    return v5

    .line 8329
    .restart local v5    # "result":I
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    move v5, v8

    .line 8331
    goto :goto_0

    .line 8334
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v9, v10, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_5

    .line 8336
    :cond_4
    const/16 v5, -0x33

    goto :goto_0

    .line 8339
    :cond_5
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8340
    .local v1, "animFile":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8341
    .local v4, "loopFile":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8343
    .local v7, "soundFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_6
    move v5, v8

    .line 8345
    goto :goto_0

    .line 8349
    :cond_7
    :try_start_0
    const-string v9, "."

    invoke-virtual {p1, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 8350
    .local v0, "animExt":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 8351
    .local v3, "loopExt":Ljava/lang/String;
    const-string v9, "."

    invoke-virtual {p3, v9}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p3, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 8353
    .local v6, "soundExt":Ljava/lang/String;
    const-string v9, ".qmg"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, ".mp4"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 8354
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 8355
    goto/16 :goto_0

    .line 8357
    :cond_8
    const-string v9, ".qmg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    const-string v9, ".mp4"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 8358
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown animation: file must be a QMG or MP4"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 8359
    goto/16 :goto_0

    .line 8361
    :cond_9
    const-string v9, ".ogg"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 8362
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "Custom startup and shutdown sound: file must be a OGG"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v8

    .line 8363
    goto/16 :goto_0

    .line 8365
    .end local v0    # "animExt":Ljava/lang/String;
    .end local v3    # "loopExt":Ljava/lang/String;
    .end local v6    # "soundExt":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 8366
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v9, "KnoxCustomManagerService"

    const-string v10, "IndexOutOfBoundException occured as substring method"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 8367
    goto/16 :goto_0
.end method

.method private checkIpAddressString(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ipAddressString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 780
    if-nez p1, :cond_1

    .line 803
    :cond_0
    :goto_0
    return v7

    .line 783
    :cond_1
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 784
    .local v6, "tokens":[Ljava/lang/String;
    array-length v8, v6

    const/4 v9, 0x4

    if-ne v8, v9, :cond_0

    .line 787
    const-string v8, "."

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 790
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_2

    aget-object v5, v0, v3

    .line 792
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x3

    if-gt v8, v9, :cond_0

    .line 794
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 795
    .local v2, "i":I
    if-ltz v2, :cond_0

    const/16 v8, 0xff

    if-gt v2, v8, :cond_0

    .line 790
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 798
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 800
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 803
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private closeSettingsApp()V
    .locals 7

    .prologue
    .line 585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 586
    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 587
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v4, "com.android.settings"

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 588
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.quicksetting.REFRESH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v1, "i":Landroid/content/Intent;
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 590
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    return-void
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    .line 449
    const-string/jumbo v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 450
    .local v7, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v5, 0x0

    .line 451
    .local v5, "lastPriority":I
    const/4 v0, 0x1

    .line 452
    .local v0, "NeedNewConfig":Z
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 454
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_2

    .line 455
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 456
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    iget v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v5, v8, :cond_1

    .line 457
    iget v5, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 459
    :cond_1
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 460
    const/4 v0, 0x0

    goto :goto_0

    .line 465
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v0, :cond_5

    .line 466
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 467
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 468
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_4

    .line 469
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 473
    :goto_1
    add-int/lit8 v8, v5, 0x1

    iput v8, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 475
    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v6

    .line 476
    .local v6, "networkId":I
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 478
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 479
    invoke-virtual {v7, v6, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 480
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 493
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "networkId":I
    :cond_3
    return-void

    .line 471
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v8, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 483
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_5
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 484
    .local v1, "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 485
    add-int/lit8 v8, v5, 0x1

    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 486
    invoke-virtual {v7, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 487
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 488
    iget v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v7, v8, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 489
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_2
.end method

.method private configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 499
    const-string/jumbo v10, "wifi"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 500
    .local v9, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v7, 0x0

    .line 501
    .local v7, "lastPriority":I
    const/4 v1, 0x1

    .line 502
    .local v1, "NeedNewEntConfig":Z
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 504
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_2

    .line 505
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 506
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    iget v10, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-ge v7, v10, :cond_1

    .line 507
    iget v7, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 509
    :cond_1
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 510
    const/4 v1, 0x0

    goto :goto_0

    .line 516
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz v1, :cond_4

    .line 517
    new-instance v5, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v5}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    .line 518
    .local v5, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    move-object/from16 v0, p3

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 519
    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 520
    const/4 v10, 0x0

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 522
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 523
    .restart local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    iput-object p2, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 524
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 525
    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->set(I)V

    .line 526
    iput-object v5, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 527
    add-int/lit8 v10, v7, 0x1

    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 529
    invoke-virtual {v9, v3}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 530
    .local v8, "networkId":I
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 532
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 533
    const/4 v10, 0x1

    invoke-virtual {v9, v8, v10}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 534
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 547
    .end local v3    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v5    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v8    # "networkId":I
    :cond_3
    return-void

    .line 537
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 538
    .local v2, "c":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 539
    add-int/lit8 v10, v7, 0x1

    iput v10, v2, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 540
    invoke-virtual {v9, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 541
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 542
    iget v10, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 543
    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reconnect()Z

    goto :goto_1
.end method

.method private deleteExistingFile(Ljava/io/File;)V
    .locals 6
    .param p1, "InfoFilePath"    # Ljava/io/File;

    .prologue
    .line 8133
    const/4 v2, 0x0

    .line 8135
    .local v2, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8137
    .end local v2    # "in":Ljava/io/BufferedReader;
    .local v3, "in":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 8138
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 8153
    if-eqz v3, :cond_5

    .line 8155
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v3

    .line 8161
    .end local v3    # "in":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 8162
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 8164
    :cond_2
    return-void

    .line 8142
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_3
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8143
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8144
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 8148
    .end local v1    # "file":Ljava/io/File;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 8149
    .end local v3    # "in":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8153
    if-eqz v2, :cond_1

    .line 8155
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 8156
    :catch_1
    move-exception v0

    .line 8157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 8156
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 8157
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v3

    .line 8158
    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1

    .line 8150
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 8151
    .local v0, "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 8153
    if-eqz v2, :cond_1

    .line 8155
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 8156
    :catch_4
    move-exception v0

    .line 8157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 8153
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_4

    .line 8155
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 8158
    :cond_4
    :goto_5
    throw v5

    .line 8156
    :catch_5
    move-exception v0

    .line 8157
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 8153
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_4

    .line 8150
    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    :catch_6
    move-exception v0

    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_3

    .line 8148
    :catch_7
    move-exception v0

    goto :goto_2

    .end local v2    # "in":Ljava/io/BufferedReader;
    .restart local v3    # "in":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_5
    move-object v2, v3

    .end local v3    # "in":Ljava/io/BufferedReader;
    .restart local v2    # "in":Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private deserializeKnoxCustomStatusbarIconItem([B)Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .locals 7
    .param p1, "b"    # [B

    .prologue
    .line 5192
    const/4 v3, 0x0

    .line 5194
    .local v3, "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5195
    .local v2, "p":Landroid/os/Parcel;
    const/4 v5, 0x0

    array-length v6, p1

    invoke-virtual {v2, p1, v5, v6}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 5196
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 5197
    const-class v5, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    move-object v3, v0

    .line 5198
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v3

    .line 5202
    .end local v2    # "p":Landroid/os/Parcel;
    .end local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .local v4, "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :goto_0
    return-object v4

    .line 5200
    .end local v4    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .restart local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :catch_0
    move-exception v1

    .line 5201
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "deserializeKnoxCustomStatusbarIconItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 5202
    .end local v3    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .restart local v4    # "ret":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    goto :goto_0
.end method

.method private deserializeObject([B)Ljava/util/ArrayList;
    .locals 8
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2547
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2549
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2550
    .local v3, "p":Landroid/os/Parcel;
    const/4 v6, 0x0

    array-length v7, p1

    invoke-virtual {v3, p1, v6, v7}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 2551
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 2552
    sget-object v6, Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;

    .line 2553
    .local v5, "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_0

    .line 2554
    aget-object v2, v5, v1

    .line 2555
    .local v2, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2553
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2558
    .end local v1    # "i":I
    .end local v2    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    .end local v3    # "p":Landroid/os/Parcel;
    .end local v5    # "temp":[Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;
    :catch_0
    move-exception v0

    .line 2559
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "deserializeObject"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method private enableStatusBarNotificationsLocal(Z)I
    .locals 9
    .param p1, "enable"    # Z

    .prologue
    const/high16 v8, 0x1030000

    .line 6602
    const/4 v2, -0x6

    .line 6604
    .local v2, "result":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6605
    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "statusbar"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    .line 6606
    .local v3, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v3}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .line 6607
    .local v1, "flags":I
    if-eqz p1, :cond_0

    .line 6608
    or-int v6, v1, v8

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6609
    const v6, -0x1030001

    and-int/2addr v6, v1

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6613
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6614
    const/4 v2, 0x0

    .line 6619
    .end local v1    # "flags":I
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "token":J
    :goto_1
    return v2

    .line 6611
    .restart local v1    # "flags":I
    .restart local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v4    # "token":J
    :cond_0
    or-int v6, v1, v8

    invoke-virtual {v3, v6}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6615
    .end local v1    # "flags":I
    .end local v3    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v4    # "token":J
    :catch_0
    move-exception v0

    .line 6616
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6617
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private enforceProKioskOrSystemPermission()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 317
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    const/16 v1, 0x3e8

    return v1

    .line 318
    :catch_0
    move-exception v0

    .line 319
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceProKioskPermission()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 304
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    :goto_0
    const/16 v1, 0x3e8

    return v1

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE"

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceRubensFeaturesPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_RUBENS_FEATURES"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 348
    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSettingPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SETTING"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 330
    const/16 v0, 0x3e8

    return v0
.end method

.method private enforceSystemPermission()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 339
    const/16 v0, 0x3e8

    return v0
.end method

.method private fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .locals 13
    .param p1, "sourceFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 8218
    const/4 v8, 0x0

    .line 8220
    .local v8, "result":Z
    const/4 v2, 0x0

    .line 8221
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 8222
    .local v4, "fout":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 8225
    .local v6, "originFD":Ljava/io/FileDescriptor;
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8226
    .local v9, "targetFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    .line 8227
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8228
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 8230
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    if-nez v6, :cond_0

    .line 8231
    :try_start_2
    const-string v11, "KnoxCustomManagerService"

    const-string/jumbo v12, "originFD is null"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 8251
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 8252
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_0
    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8257
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    return v10

    .line 8253
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 8254
    .local v1, "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8235
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    if-eqz v3, :cond_2

    .line 8236
    const/4 v7, 0x0

    .line 8237
    .local v7, "read":I
    const/16 v10, 0x400

    :try_start_4
    new-array v0, v10, [B

    .line 8238
    .local v0, "buf":[B
    :goto_2
    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    .line 8239
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 8247
    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8248
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_3
    :try_start_5
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 8251
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 8252
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    move v10, v8

    .line 8257
    goto :goto_1

    .line 8241
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "read":I
    .restart local v9    # "targetFile":Ljava/io/File;
    :cond_1
    const/4 v8, 0x1

    .line 8242
    :try_start_7
    invoke-direct {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 8251
    .end local v0    # "buf":[B
    .end local v7    # "read":I
    :goto_5
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 8252
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8255
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 8244
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_9
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "fail to open inputstream from FileDescriptor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 8250
    :catchall_0
    move-exception v10

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8251
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v9    # "targetFile":Ljava/io/File;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 8252
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    .line 8255
    :goto_7
    throw v10

    .line 8253
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 8254
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8256
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_4

    .line 8253
    .end local v9    # "targetFile":Ljava/io/File;
    :catch_3
    move-exception v1

    .line 8254
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 8253
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 8254
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 8250
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    goto :goto_6

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catchall_2
    move-exception v10

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_6

    .line 8247
    .end local v9    # "targetFile":Ljava/io/File;
    :catch_5
    move-exception v1

    goto :goto_3

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v9    # "targetFile":Ljava/io/File;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method private fileCopy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x400

    .line 8167
    const/4 v7, 0x0

    .line 8168
    .local v7, "result":Z
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8169
    .local v8, "sourceFile":Ljava/io/File;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8171
    .local v9, "targetFile":Ljava/io/File;
    new-array v0, v10, [B

    .line 8172
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 8173
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 8177
    .local v4, "fout":Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 8179
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 8180
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8181
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .local v3, "fin":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8183
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .local v5, "fout":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 8184
    .local v6, "read":I
    :goto_0
    const/4 v10, 0x0

    :try_start_2
    array-length v11, v0

    invoke-virtual {v3, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v10, -0x1

    if-eq v6, v10, :cond_2

    .line 8185
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 8194
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8195
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8199
    if-eqz v2, :cond_0

    .line 8201
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 8206
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 8208
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 8214
    :cond_1
    :goto_3
    return v7

    .line 8188
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :cond_2
    :try_start_6
    invoke-direct {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 8189
    const/4 v7, 0x1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 8199
    .end local v3    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    :cond_3
    if-eqz v2, :cond_4

    .line 8201
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 8206
    :cond_4
    :goto_4
    if-eqz v4, :cond_1

    .line 8208
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 8209
    :catch_1
    move-exception v1

    .line 8210
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 8202
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 8203
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 8202
    .local v1, "e":Ljava/lang/NullPointerException;
    :catch_3
    move-exception v1

    .line 8203
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 8209
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v1

    .line 8210
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 8196
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 8197
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 8199
    if-eqz v2, :cond_5

    .line 8201
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 8206
    :cond_5
    :goto_6
    if-eqz v4, :cond_1

    .line 8208
    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_3

    .line 8209
    :catch_6
    move-exception v1

    .line 8210
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 8202
    :catch_7
    move-exception v1

    .line 8203
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 8199
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    :goto_7
    if-eqz v2, :cond_6

    .line 8201
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 8206
    :cond_6
    :goto_8
    if-eqz v4, :cond_7

    .line 8208
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 8211
    :cond_7
    :goto_9
    throw v10

    .line 8202
    :catch_8
    move-exception v1

    .line 8203
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 8209
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .line 8210
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 8199
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v10

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :catchall_2
    move-exception v10

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_7

    .line 8196
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "read":I
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_a
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "fout":Ljava/io/FileOutputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "read":I
    :catch_b
    move-exception v1

    move-object v4, v5

    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "fout":Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_5

    .line 8194
    .end local v6    # "read":I
    :catch_c
    move-exception v1

    goto :goto_1

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fin":Ljava/io/FileInputStream;
    :catch_d
    move-exception v1

    move-object v2, v3

    .end local v3    # "fin":Ljava/io/FileInputStream;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method private filePathSplit(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 8261
    const-string v3, ""

    .line 8262
    .local v3, "result":Ljava/lang/String;
    const-string v5, "\\/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 8263
    .local v4, "splited":Ljava/lang/String;
    move-object v3, v4

    .line 8264
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8265
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 8262
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8269
    .end local v4    # "splited":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 6882
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 6883
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6884
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6885
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6886
    const-string v0, ""

    .line 6888
    .local v0, "defaultActivity":Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6892
    :goto_0
    return-object v0

    .line 6889
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getQuickPanelItemId(Ljava/lang/String;)I
    .locals 2
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 8670
    const/4 v0, 0x0

    .line 8671
    .local v0, "itemId":I
    const-string v1, "Wifi"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8672
    const/4 v0, 0x1

    .line 8710
    :cond_0
    :goto_0
    return v0

    .line 8673
    :cond_1
    const-string v1, "Location"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8674
    const/4 v0, 0x2

    goto :goto_0

    .line 8675
    :cond_2
    const-string v1, "SilentMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8676
    const/4 v0, 0x3

    goto :goto_0

    .line 8677
    :cond_3
    const-string v1, "RotationLock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "AutoRotate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 8678
    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    .line 8679
    :cond_5
    const-string v1, "Bluetooth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 8680
    const/4 v0, 0x5

    goto :goto_0

    .line 8681
    :cond_6
    const-string v1, "MobileData"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 8682
    const/4 v0, 0x6

    goto :goto_0

    .line 8683
    :cond_7
    const-string v1, "PowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 8684
    const/4 v0, 0x7

    goto :goto_0

    .line 8685
    :cond_8
    const-string v1, "AirplaneMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 8686
    const/16 v0, 0x8

    goto :goto_0

    .line 8687
    :cond_9
    const-string v1, "DormantMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8688
    const/16 v0, 0x9

    goto :goto_0

    .line 8689
    :cond_a
    const-string v1, "Flashlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "TorchLight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8690
    :cond_b
    const/16 v0, 0xa

    goto :goto_0

    .line 8691
    :cond_c
    const-string v1, "UltraPowerSaving"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8692
    const/16 v0, 0xb

    goto :goto_0

    .line 8693
    :cond_d
    const-string v1, "WifiHotspot"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 8694
    const/16 v0, 0xc

    goto/16 :goto_0

    .line 8695
    :cond_e
    const-string v1, "SmartStay"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8696
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 8697
    :cond_f
    const-string v1, "PersonalMode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 8698
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 8699
    :cond_10
    const-string v1, "AllShareCast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 8700
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 8701
    :cond_11
    const-string v1, "Nfc"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8702
    const/16 v0, 0x10

    goto/16 :goto_0

    .line 8703
    :cond_12
    const-string v1, "Sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 8704
    const/16 v0, 0x11

    goto/16 :goto_0

    .line 8705
    :cond_13
    const-string v1, "MultiWindow"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 8706
    const/16 v0, 0x12

    goto/16 :goto_0

    .line 8707
    :cond_14
    const-string v1, "SFinder"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8708
    const/16 v0, 0x13

    goto/16 :goto_0
.end method

.method private getQuickPanelItemString(I)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 8598
    const-string v0, ""

    .line 8599
    .local v0, "itemString":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 8666
    :goto_0
    return-object v0

    .line 8601
    :pswitch_0
    const-string v0, "Wifi"

    .line 8602
    goto :goto_0

    .line 8604
    :pswitch_1
    const-string v0, "Location"

    .line 8605
    goto :goto_0

    .line 8607
    :pswitch_2
    const-string v0, "SilentMode"

    .line 8608
    goto :goto_0

    .line 8610
    :pswitch_3
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_0

    .line 8611
    const-string v0, "AutoRotate"

    goto :goto_0

    .line 8613
    :cond_0
    const-string v0, "RotationLock"

    .line 8615
    goto :goto_0

    .line 8617
    :pswitch_4
    const-string v0, "Bluetooth"

    .line 8618
    goto :goto_0

    .line 8620
    :pswitch_5
    const-string v0, "MobileData"

    .line 8621
    goto :goto_0

    .line 8623
    :pswitch_6
    const-string v0, "PowerSaving"

    .line 8624
    goto :goto_0

    .line 8626
    :pswitch_7
    const-string v0, "AirplaneMode"

    .line 8627
    goto :goto_0

    .line 8629
    :pswitch_8
    const-string v0, "DormantMode"

    .line 8630
    goto :goto_0

    .line 8632
    :pswitch_9
    iget-boolean v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v1, :cond_1

    .line 8633
    const-string v0, "TorchLight"

    goto :goto_0

    .line 8635
    :cond_1
    const-string v0, "Flashlight"

    .line 8637
    goto :goto_0

    .line 8639
    :pswitch_a
    const-string v0, "UltraPowerSaving"

    .line 8640
    goto :goto_0

    .line 8642
    :pswitch_b
    const-string v0, "WifiHotspot"

    .line 8643
    goto :goto_0

    .line 8645
    :pswitch_c
    const-string v0, "SmartStay"

    .line 8646
    goto :goto_0

    .line 8648
    :pswitch_d
    const-string v0, "PersonalMode"

    .line 8649
    goto :goto_0

    .line 8651
    :pswitch_e
    const-string v0, "AllShareCast"

    .line 8652
    goto :goto_0

    .line 8654
    :pswitch_f
    const-string v0, "Nfc"

    .line 8655
    goto :goto_0

    .line 8657
    :pswitch_10
    const-string v0, "Sync"

    .line 8658
    goto :goto_0

    .line 8660
    :pswitch_11
    const-string v0, "MultiWindow"

    .line 8661
    goto :goto_0

    .line 8663
    :pswitch_12
    const-string v0, "SFinder"

    goto :goto_0

    .line 8599
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
    .end packed-switch
.end method

.method private getSealedState()Z
    .locals 1

    .prologue
    .line 916
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v0

    return v0
.end method

.method private refreshStatusbar()V
    .locals 6

    .prologue
    .line 4055
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4056
    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 4057
    .local v1, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v0

    .line 4058
    .local v0, "flags":I
    const/high16 v4, 0x2000000

    or-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4059
    const v4, -0x2000001

    and-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4060
    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 4061
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4062
    return-void
.end method

.method private registerBootReceiver()V
    .locals 5

    .prologue
    .line 357
    :try_start_0
    sget-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 358
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$1;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 397
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private registerKnoxCustomReceiver()V
    .locals 5

    .prologue
    .line 408
    :try_start_0
    sget-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 409
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$2;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    sput-object v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    .line 436
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 440
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private serializeKnoxCustomStatusbarIconItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)[B
    .locals 5
    .param p1, "input"    # Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    .prologue
    .line 5172
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 5173
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 5174
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 5175
    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5179
    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_0
    return-object v0

    .line 5177
    :catch_0
    move-exception v1

    .line 5178
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "serializeKnoxCustomStatusbarIconItem"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5179
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private serializeObject(Ljava/util/ArrayList;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 2528
    .local p1, "inputList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2529
    .local v2, "p":Landroid/os/Parcel;
    invoke-virtual {v2, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2530
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 2531
    .local v0, "b":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2535
    .end local v0    # "b":[B
    .end local v2    # "p":Landroid/os/Parcel;
    :goto_0
    return-object v0

    .line 2533
    :catch_0
    move-exception v1

    .line 2534
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "serializeObject"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setKnoxSysFsIntValue(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "sysFsFilePath"    # Ljava/lang/String;
    .param p2, "sysFsIntValue"    # I

    .prologue
    const/4 v4, 0x0

    .line 730
    const/4 v2, 0x0

    .line 731
    .local v2, "fileOutputStream":Ljava/io/FileOutputStream;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setKnoxSysFsIntValue Path "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " IntValue "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 741
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v3, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 742
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 752
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_0
    return v4

    .line 736
    :catch_0
    move-exception v0

    .line 737
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 743
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 744
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 746
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 747
    :catch_2
    move-exception v1

    .line 748
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 743
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "fileOutputStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fileOutputStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private setLockscreenWeatherHiddenForLegacy(Z)Z
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5059
    const-string v7, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 5060
    .local v3, "uri":Landroid/net/Uri;
    const-string v1, "LOCKSCREEN_AND_S_VIEW_COVER"

    .line 5061
    .local v1, "optionName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 5063
    .local v2, "result":I
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 5064
    .local v0, "cp":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 5066
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 5067
    .local v4, "values":Landroid/content/ContentValues;
    const-string v8, "LOCKSCREEN_AND_S_VIEW_COVER"

    if-eqz p1, :cond_1

    move v7, v6

    :goto_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5068
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v3, v4, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 5074
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_1
    if-lez v2, :cond_2

    :goto_2
    return v5

    .restart local v4    # "values":Landroid/content/ContentValues;
    :cond_1
    move v7, v5

    .line 5067
    goto :goto_0

    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    move v5, v6

    .line 5074
    goto :goto_2

    .line 5069
    :catch_0
    move-exception v7

    goto :goto_1
.end method

.method private setPermission(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8273
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8274
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8275
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8277
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8278
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8279
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8280
    return-void
.end method

.method private setPermissionWorldExecutable(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8283
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8284
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8285
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8287
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8288
    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8289
    return-void
.end method

.method private setPermissionWorldReadable(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 8292
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8293
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setWritable(ZZ)Z

    .line 8294
    invoke-virtual {p1, v0, v0}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8296
    invoke-virtual {p1, v1, v0}, Ljava/io/File;->setReadable(ZZ)Z

    .line 8297
    invoke-virtual {p1, v1, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 8298
    return-void
.end method

.method private setPowerDialogCustomItemsLocal(Ljava/util/List;I)I
    .locals 7
    .param p2, "callingUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    const/4 v2, -0x1

    .line 6311
    const/4 v0, 0x0

    .line 6313
    .local v0, "dbBytes":[B
    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 6314
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B

    move-result-object v0

    .line 6321
    :goto_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "powerCustomItems"

    invoke-virtual {v3, v4, v5, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z

    move-result v3

    if-nez v3, :cond_3

    .line 6331
    :goto_1
    return v2

    .line 6316
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 6317
    const/16 v2, -0x33

    goto :goto_1

    .line 6319
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeObject(Ljava/util/ArrayList;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 6327
    :catch_0
    move-exception v1

    .line 6328
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6331
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private setPowerDialogCustomItemsStateLocal(ZI)I
    .locals 8
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 6261
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "powerCustomItemsState"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 6271
    :goto_1
    return v1

    :cond_0
    move v3, v2

    .line 6261
    goto :goto_0

    .line 6267
    :catch_0
    move-exception v0

    .line 6268
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    move v1, v2

    .line 6271
    goto :goto_1
.end method

.method private setScreenCurtainDirect()V
    .locals 13

    .prologue
    .line 5918
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_0

    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    .line 5919
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "mDNIe"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/mdnie/MdnieManager;

    .line 5923
    .local v6, "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    if-eqz v9, :cond_1

    .line 5924
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    .line 5984
    :goto_1
    return-void

    .line 5918
    .end local v6    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    .line 5926
    .restart local v6    # "mMdnie":Lcom/samsung/android/mdnie/MdnieManager;
    :cond_1
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "high_contrast"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    const/4 v7, 0x1

    .line 5928
    .local v7, "mNegativeColorCheck":Z
    :goto_2
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "color_blind"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    const/4 v2, 0x1

    .line 5930
    .local v2, "mColorBlindCheck":Z
    :goto_3
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "greyscale_mode"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v4, 0x1

    .line 5932
    .local v4, "mGreyscaleModeCheck":Z
    :goto_4
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "powersaving_switch"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v8, 0x1

    .line 5934
    .local v8, "mPowerSavingModeCheck":Z
    :goto_5
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "blackgrey_powersaving_mode"

    const/4 v11, 0x0

    const/4 v12, -0x2

    invoke-static {v9, v10, v11, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v5, 0x1

    .line 5936
    .local v5, "mGreyscalePowerSavingModeCheck":Z
    :goto_6
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v3

    .line 5937
    .local v3, "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    if-eqz v3, :cond_d

    .line 5938
    invoke-virtual {v3}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 5939
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeEmergencyMode(Z)Z

    goto :goto_1

    .line 5926
    .end local v2    # "mColorBlindCheck":Z
    .end local v3    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .end local v4    # "mGreyscaleModeCheck":Z
    .end local v5    # "mGreyscalePowerSavingModeCheck":Z
    .end local v7    # "mNegativeColorCheck":Z
    .end local v8    # "mPowerSavingModeCheck":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 5928
    .restart local v7    # "mNegativeColorCheck":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    .line 5930
    .restart local v2    # "mColorBlindCheck":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 5932
    .restart local v4    # "mGreyscaleModeCheck":Z
    :cond_5
    const/4 v8, 0x0

    goto :goto_5

    .line 5934
    .restart local v8    # "mPowerSavingModeCheck":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 5941
    .restart local v3    # "mEmergencyManager":Lcom/sec/android/emergencymode/EmergencyManager;
    .restart local v5    # "mGreyscalePowerSavingModeCheck":Z
    :cond_7
    if-eqz v7, :cond_8

    if-eqz v4, :cond_8

    .line 5942
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    .line 5943
    :cond_8
    if-eqz v4, :cond_9

    .line 5944
    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    .line 5945
    :cond_9
    if-eqz v5, :cond_a

    if-eqz v8, :cond_a

    .line 5947
    const/4 v9, 0x1

    :try_start_0
    sget-object v10, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 5948
    :catch_0
    move-exception v0

    .line 5949
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 5951
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a
    if-eqz v7, :cond_b

    .line 5952
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1

    .line 5953
    :cond_b
    if-eqz v2, :cond_c

    .line 5954
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.colorblind.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5955
    .local v1, "i":Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 5957
    .end local v1    # "i":Landroid/content/Intent;
    :cond_c
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    goto/16 :goto_1

    .line 5960
    :cond_d
    if-eqz v7, :cond_e

    if-eqz v4, :cond_e

    .line 5961
    const/4 v9, 0x5

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    .line 5962
    :cond_e
    if-eqz v5, :cond_f

    if-eqz v8, :cond_f

    .line 5964
    const/4 v9, 0x1

    :try_start_1
    sget-object v10, Lcom/sec/android/emergencymode/EmergencyConstants;->RGBCMYArray:[I

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeColorBlind(Z[I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 5965
    :catch_1
    move-exception v0

    .line 5966
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 5968
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    if-eqz v4, :cond_10

    .line 5969
    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeAccessibilityMode(IZ)Z

    goto/16 :goto_1

    .line 5970
    :cond_10
    if-eqz v7, :cond_11

    .line 5971
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeNegative(Z)Z

    goto/16 :goto_1

    .line 5972
    :cond_11
    if-eqz v2, :cond_12

    .line 5973
    new-instance v1, Landroid/content/Intent;

    const-string v9, "com.samsung.android.app.colorblind.ACTION_COLORBLIND_SWITCH_ON"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5974
    .restart local v1    # "i":Landroid/content/Intent;
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v1, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 5976
    .end local v1    # "i":Landroid/content/Intent;
    :cond_12
    iget-boolean v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mKnoxCustomCurtainModeIsRunning:Z

    invoke-virtual {v6, v9}, Lcom/samsung/android/mdnie/MdnieManager;->setmDNIeScreenCurtain(Z)Z

    goto/16 :goto_1
.end method

.method private setStatusBarClockModeLocal(II)I
    .locals 11
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    const/high16 v10, 0x800000

    .line 6462
    const/4 v2, -0x6

    .line 6464
    .local v2, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "statusBarClockState"

    invoke-virtual {v5, p2, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6466
    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 6467
    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .line 6468
    .local v1, "flags":I
    const/4 v3, 0x1

    .line 6469
    .local v3, "status":Z
    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6470
    :cond_0
    const/4 v3, 0x0

    .line 6472
    :cond_1
    if-eqz v3, :cond_2

    .line 6473
    or-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6474
    const v5, -0x800001

    and-int/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6478
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6479
    const/4 v2, 0x0

    .line 6485
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :goto_1
    return v2

    .line 6476
    .restart local v1    # "flags":I
    .restart local v3    # "status":Z
    .restart local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v6    # "token":J
    :cond_2
    or-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6480
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .line 6481
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setStatusBarClockState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6482
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private setStatusBarIconsModeLocal(II)I
    .locals 12
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    const/high16 v11, 0x100000

    const v10, -0x100001

    .line 6529
    const/4 v2, -0x6

    .line 6531
    .local v2, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "statusBarIconsState"

    invoke-virtual {v5, p2, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6532
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6533
    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "statusbar"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/StatusBarManager;

    .line 6534
    .local v4, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v4}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v1

    .line 6535
    .local v1, "flags":I
    const/4 v3, 0x1

    .line 6536
    .local v3, "status":Z
    const/4 v5, 0x3

    if-eq p1, v5, :cond_0

    const/4 v5, 0x4

    if-ne p1, v5, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6537
    :cond_0
    const/4 v3, 0x0

    .line 6539
    :cond_1
    if-eqz v3, :cond_2

    .line 6540
    and-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6541
    or-int v5, v1, v11

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6542
    and-int v5, v1, v10

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V

    .line 6546
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6547
    const/4 v2, 0x0

    .line 6553
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :goto_1
    return v2

    .line 6544
    .restart local v1    # "flags":I
    .restart local v3    # "status":Z
    .restart local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .restart local v6    # "token":J
    :cond_2
    or-int v5, v1, v11

    invoke-virtual {v4, v5}, Landroid/app/StatusBarManager;->disable(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6548
    .end local v1    # "flags":I
    .end local v3    # "status":Z
    .end local v4    # "statusBarManager":Landroid/app/StatusBarManager;
    .end local v6    # "token":J
    :catch_0
    move-exception v0

    .line 6549
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6550
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private setStatusBarModeLocal(II)I
    .locals 9
    .param p1, "mode"    # I
    .param p2, "callingUid"    # I

    .prologue
    .line 6376
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6377
    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 6378
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isStatusBarHidden()Z

    move-result v1

    .line 6379
    .local v1, "isRestricted":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6380
    if-eqz v1, :cond_0

    .line 6381
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setStatusBarMode() - eSDK status bar already hidden"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6382
    const/4 v3, -0x7

    .line 6401
    :goto_0
    return v3

    .line 6385
    :cond_0
    const/4 v3, -0x6

    .line 6388
    .local v3, "result":I
    const/4 v6, 0x2

    if-eq p1, v6, :cond_1

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    const/4 v6, 0x4

    if-ne p1, v6, :cond_2

    .line 6389
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "statusBarMode"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6390
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6391
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    .line 6392
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6393
    const/4 v3, 0x0

    goto :goto_0

    .line 6395
    :cond_2
    const/16 v3, -0x2b

    goto :goto_0

    .line 6397
    :catch_0
    move-exception v0

    .line 6398
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setStatusBarMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6399
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private setUsbMassStorageStateLocal(ZI)I
    .locals 9
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v1, 0x0

    .line 6912
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 6913
    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 6914
    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2, v1}, Landroid/app/enterprise/RestrictionPolicy;->isUsbMediaPlayerAvailable(Z)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 6915
    .local v1, "isRestricted":Z
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6916
    if-eqz v1, :cond_1

    .line 6917
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setUsbMassStorageState() - eSDK USB media player disabled"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6918
    const/4 v3, -0x7

    .line 6930
    :goto_0
    return v3

    .line 6921
    :cond_1
    const/4 v3, -0x6

    .line 6924
    .local v3, "result":I
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "usbMassStorageStateIndependentSealed"

    invoke-virtual {v6, p2, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6925
    const/4 v3, 0x0

    goto :goto_0

    .line 6926
    :catch_0
    move-exception v0

    .line 6927
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6928
    const/4 v3, -0x1

    goto :goto_0
.end method

.method private setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;
    .param p3, "callingUid"    # I

    .prologue
    .line 7043
    const/4 v1, -0x6

    .line 7045
    .local v1, "result":I
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7046
    :cond_0
    const/16 v2, -0x24

    .line 7056
    :goto_0
    return v2

    .line 7049
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetSource"

    invoke-virtual {v2, p3, v3, v4, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7050
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "KNOX_CUSTOM"

    const-string/jumbo v4, "usbNetDest"

    invoke-virtual {v2, p3, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7051
    const/4 v1, 0x0

    :goto_1
    move v2, v1

    .line 7056
    goto :goto_0

    .line 7052
    :catch_0
    move-exception v0

    .line 7053
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbNetAddresses() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7054
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private setUsbNetStateLocal(ZI)I
    .locals 8
    .param p1, "status"    # Z
    .param p2, "callingUid"    # I

    .prologue
    const/4 v7, 0x1

    .line 6977
    const/4 v1, -0x6

    .line 6978
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6980
    .local v2, "token":J
    const/16 v4, 0x14b

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14c

    invoke-virtual {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 6983
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUsbNetState() failed - invalid IP addresses "

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6984
    const/16 v1, -0x24

    .line 6999
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7000
    return v1

    .line 6986
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "adb_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    if-eqz p1, :cond_2

    .line 6987
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUsbNetState() failed - USB debugging mode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6988
    const/16 v1, -0x2b

    goto :goto_0

    .line 6990
    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "usbNetState"

    invoke-virtual {v4, p2, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 6991
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6992
    const/4 v1, 0x0

    goto :goto_0

    .line 6995
    :catch_0
    move-exception v0

    .line 6996
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUsbNetState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6997
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private startProKioskMode()V
    .locals 14

    .prologue
    .line 616
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 617
    .local v10, "token":J
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "statusbar"

    invoke-virtual {v9, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/StatusBarManager;

    .line 618
    .local v8, "statusBarManager":Landroid/app/StatusBarManager;
    invoke-virtual {v8}, Landroid/app/StatusBarManager;->getDisableFlags()I

    move-result v9

    iput v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mPreviousStatusBarDisableFlags:I

    .line 619
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enableStatusBarNotificationsLocal(Z)I

    .line 620
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    .line 621
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v6, "multiwindowIntent":Landroid/content/Intent;
    const-string v9, "closeTray"

    const/4 v12, 0x1

    invoke-virtual {v6, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v12, Landroid/os/UserHandle;

    const/4 v13, -0x2

    invoke-direct {v12, v13}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v9, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 626
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 627
    .local v1, "cb":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 629
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/enterprise/ApplicationPolicy;->setDisableApplication(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 631
    :catch_0
    move-exception v2

    .line 632
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v9, "KnoxCustomManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Warning: could not disable "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 638
    .end local v1    # "cb":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_1
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "people_stripe"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 639
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v12, "task_edge"

    const/4 v13, 0x0

    invoke-static {v9, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 641
    const/16 v9, 0x1b9

    invoke-virtual {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMultiWindowFixedState(I)I

    move-result v3

    .line 642
    .local v3, "fixed":I
    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    .line 643
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V

    .line 645
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    .line 647
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    .line 648
    .local v7, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/app/enterprise/RestrictionPolicy;->allowSafeMode(Z)Z

    .line 649
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 650
    return-void
.end method

.method private startStopUsbNet(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mTempContext:Landroid/content/Context;

    .line 554
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;

    invoke-direct {v1, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$3;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 571
    return-void
.end method

.method private stopProKioskMode()V
    .locals 15

    .prologue
    .line 656
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 657
    .local v10, "token":J
    iget-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "statusbar"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/StatusBarManager;

    .line 658
    .local v9, "statusBarManager":Landroid/app/StatusBarManager;
    iget v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mPreviousStatusBarDisableFlags:I

    const v13, -0x100001

    and-int/2addr v12, v13

    invoke-virtual {v9, v12}, Landroid/app/StatusBarManager;->disable(I)V

    .line 659
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enableStatusBarNotificationsLocal(Z)I

    .line 660
    iget v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mPreviousStatusBarDisableFlags:I

    const/high16 v13, 0x100000

    or-int/2addr v12, v13

    invoke-virtual {v9, v12}, Landroid/app/StatusBarManager;->disable(I)V

    .line 661
    iget v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mPreviousStatusBarDisableFlags:I

    invoke-virtual {v9, v12}, Landroid/app/StatusBarManager;->disable(I)V

    .line 662
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateStatusBarLocal()V

    .line 663
    new-instance v7, Landroid/content/Intent;

    const-string v12, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v7, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v7, "multiwindowIntent":Landroid/content/Intent;
    const-string v12, "closeTray"

    const/4 v13, 0x2

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    iget-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/os/UserHandle;

    const/4 v14, -0x2

    invoke-direct {v13, v14}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v12, v7, v13}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 668
    sget-object v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->edgePackages:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    .line 669
    .local v1, "cb":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/app/enterprise/ApplicationPolicy;->getApplicationStateEnabled(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 671
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v12

    invoke-virtual {v12, v1}, Landroid/app/enterprise/ApplicationPolicy;->setEnableApplication(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 668
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 673
    :catch_0
    move-exception v2

    .line 674
    .local v2, "e":Ljava/lang/SecurityException;
    const-string v12, "KnoxCustomManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Warning: could not enable "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 680
    .end local v1    # "cb":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/SecurityException;
    :cond_1
    :try_start_1
    new-instance v5, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v5, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v5, "intent":Landroid/content/Intent;
    const-string v12, "com.samsung.android.app.cocktailbarservice"

    const-string v13, "com.samsung.android.app.cocktailbarservice.CocktailBarService"

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    iget-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 688
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_2
    iget-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "people_stripe"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 689
    iget-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "task_edge"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 691
    const/16 v12, 0x1b9

    invoke-virtual {p0, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getMultiWindowFixedState(I)I

    move-result v3

    .line 692
    .local v3, "fixed":I
    const/4 v12, 0x1

    if-ne v3, v12, :cond_2

    .line 693
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V

    .line 695
    :cond_2
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageState(Z)I

    .line 697
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 698
    .local v8, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Landroid/app/enterprise/RestrictionPolicy;->allowSafeMode(Z)Z

    .line 699
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 700
    return-void

    .line 684
    .end local v3    # "fixed":I
    .end local v8    # "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    :catch_1
    move-exception v2

    .line 685
    .local v2, "e":Ljava/lang/Exception;
    const-string v12, "KnoxCustomManagerService"

    const-string v13, "Warning: could not start cocktail bar"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateMultiWindowCenterBar()V
    .locals 4

    .prologue
    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.SEALED_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, "multiwindowUpdateIntent":Landroid/content/Intent;
    const-string/jumbo v1, "updateCenterBar"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    iget-object v1, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 579
    return-void
.end method

.method private updateQuickPanelItems(Ljava/lang/String;)I
    .locals 18
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    .line 8477
    const/4 v11, 0x0

    .line 8478
    .local v11, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 8480
    .local v14, "token":J
    :try_start_0
    new-instance v7, Ljava/util/LinkedList;

    const-string v13, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v7, v13}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8482
    .local v7, "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v13, :cond_5

    .line 8483
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v16, "notification_panel_active_app_list_for_reset"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8484
    .local v10, "qsList":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 8485
    new-instance v9, Ljava/util/LinkedList;

    const-string v13, ";"

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8486
    .local v9, "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 8487
    .local v2, "activeItems":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8489
    .local v8, "newList":Ljava/lang/StringBuilder;
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8491
    .local v6, "itemString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 8492
    const/16 v13, -0x32

    .line 8547
    .end local v2    # "activeItems":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    .end local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "newList":Ljava/lang/StringBuilder;
    .end local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "qsList":Ljava/lang/String;
    :goto_1
    return v13

    .line 8494
    .restart local v2    # "activeItems":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "itemString":Ljava/lang/String;
    .restart local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "newList":Ljava/lang/StringBuilder;
    .restart local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "qsList":Ljava/lang/String;
    :cond_1
    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 8496
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8497
    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 8498
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8501
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 8503
    .local v4, "e1":Ljava/lang/Exception;
    const/16 v13, -0x32

    goto :goto_1

    .line 8505
    .end local v4    # "e1":Ljava/lang/Exception;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8506
    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 8542
    .end local v2    # "activeItems":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    .end local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "newList":Ljava/lang/StringBuilder;
    .end local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "qsList":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 8543
    .local v3, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setQuickPanelItems() failed - persistence problem "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8544
    const/4 v11, -0x1

    .line 8546
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v13, v11

    .line 8547
    goto :goto_1

    .line 8508
    .restart local v2    # "activeItems":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v7    # "newItemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "newList":Ljava/lang/StringBuilder;
    .restart local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "qsList":Ljava/lang/String;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v16, "notification_panel_active_app_list"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8509
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v16, "notification_panel_active_number_of_apps"

    move-object/from16 v0, v16

    invoke-static {v13, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8540
    .end local v2    # "activeItems":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "newList":Ljava/lang/StringBuilder;
    .end local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    .line 8541
    const/4 v11, 0x0

    goto :goto_3

    .line 8512
    .end local v10    # "qsList":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v16, "sysui_qs_tiles"

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8513
    .restart local v10    # "qsList":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 8514
    new-instance v9, Ljava/util/LinkedList;

    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8515
    .restart local v9    # "originalItemsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 8516
    .restart local v2    # "activeItems":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 8518
    .restart local v8    # "newList":Ljava/lang/StringBuilder;
    :try_start_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8519
    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-interface {v9, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 8521
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8522
    invoke-interface {v9, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 8523
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 8526
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "itemString":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 8527
    .restart local v4    # "e1":Ljava/lang/Exception;
    const/16 v13, -0x32

    goto/16 :goto_1

    .line 8529
    .end local v4    # "e1":Ljava/lang/Exception;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    :try_start_5
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 8530
    .restart local v6    # "itemString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v16, ","

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 8532
    .end local v6    # "itemString":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v16, "sysui_qs_tiles"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v13, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 8533
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v16, "sysui_qs_active_tiles"

    move-object/from16 v0, v16

    invoke-static {v13, v0, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8534
    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v13, "samsung.intent.action.knoxcustom.SET_QUICK_PANEL_ITEMS"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8535
    .local v12, "systemIntent":Landroid/content/Intent;
    const-string/jumbo v13, "items"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8536
    const-string v13, "active"

    invoke-virtual {v12, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8537
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v16, Landroid/os/UserHandle;

    const/16 v17, -0x2

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v13, v12, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_4
.end method

.method private updateStatusBarLocal()V
    .locals 5

    .prologue
    .line 6406
    const/4 v1, 0x0

    .line 6407
    .local v1, "policyVal":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarMode()I

    move-result v0

    .line 6408
    .local v0, "mode":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 6409
    const-string/jumbo v1, "immersive.full=apps,*"

    .line 6411
    :cond_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "policy_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 6415
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    .line 6416
    return-void
.end method

.method private writePathToFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 8301
    const/4 v4, 0x0

    .line 8302
    .local v4, "result":Z
    const/4 v0, 0x0

    .line 8304
    .local v0, "bwShutdown":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 8305
    .local v3, "fwShutdown":Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8306
    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .local v1, "bwShutdown":Ljava/io/BufferedWriter;
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8307
    const/4 v4, 0x1

    .line 8311
    if-eqz v1, :cond_2

    .line 8313
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 8319
    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .end local v3    # "fwShutdown":Ljava/io/FileWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    :cond_0
    :goto_0
    return v4

    .line 8314
    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    .line 8315
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    .line 8316
    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_0

    .line 8308
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catch_1
    move-exception v2

    .line 8309
    .local v2, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v5, "KnoxCustomManagerService"

    const-string v6, "InfoFile write failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8311
    if-eqz v0, :cond_0

    .line 8313
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 8314
    :catch_2
    move-exception v2

    .line 8315
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 8311
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_2
    if-eqz v0, :cond_1

    .line 8313
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 8316
    :cond_1
    :goto_3
    throw v5

    .line 8314
    :catch_3
    move-exception v2

    .line 8315
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 8311
    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v3    # "fwShutdown":Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_2

    .line 8308
    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_1

    .end local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    :cond_2
    move-object v0, v1

    .end local v1    # "bwShutdown":Ljava/io/BufferedWriter;
    .restart local v0    # "bwShutdown":Ljava/io/BufferedWriter;
    goto :goto_0
.end method


# virtual methods
.method public addPackagesToUltraPowerSaving(Ljava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6719
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v7

    .line 6720
    .local v7, "callingUid":I
    const/4 v14, -0x1

    .line 6724
    .local v14, "result":I
    :try_start_0
    const-string v1, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    .line 6725
    .local v11, "em":Ljava/lang/Class;
    const-string/jumbo v3, "supportUltraPowerSavingMode"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v11, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 6726
    .local v15, "supported":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v15, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 6727
    const/4 v1, -0x6

    .line 6774
    .end local v11    # "em":Ljava/lang/Class;
    .end local v15    # "supported":Ljava/lang/reflect/Method;
    :goto_0
    return v1

    .line 6729
    :catch_0
    move-exception v10

    .line 6730
    .local v10, "e":Ljava/lang/Exception;
    const/4 v1, -0x6

    goto :goto_0

    .line 6733
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "em":Ljava/lang/Class;
    .restart local v15    # "supported":Ljava/lang/reflect/Method;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6735
    :cond_1
    const/16 v1, -0x28

    goto :goto_0

    .line 6739
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6740
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 6741
    .local v13, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 6742
    const/16 v1, -0x32

    goto :goto_0

    .line 6748
    .end local v13    # "packageName":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v1, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 6749
    .local v2, "emergencyUri":Landroid/net/Uri;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_5
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6750
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 6751
    .restart local v13    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 6752
    .local v8, "className":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 6753
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "count(*)"

    aput-object v5, v3, v4

    const-string/jumbo v4, "package=? and class=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v13, v5, v6

    const/4 v6, 0x1

    aput-object v8, v5, v6

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 6754
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_5

    .line 6755
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6756
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-nez v1, :cond_6

    .line 6757
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 6758
    .local v16, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "package"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6759
    const-string v1, "class"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6760
    const-string/jumbo v1, "permission"

    const-string v3, "0000"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6761
    const-string/jumbo v1, "mode"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6762
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, v16

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 6764
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 6770
    .end local v2    # "emergencyUri":Landroid/net/Uri;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v13    # "packageName":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 6771
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPackagesToUltraPowerSaving() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6772
    const/4 v14, -0x1

    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    move v1, v14

    .line 6774
    goto/16 :goto_0

    .line 6768
    .restart local v2    # "emergencyUri":Landroid/net/Uri;
    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6769
    const/4 v14, 0x0

    goto :goto_2
.end method

.method public checkEnterprisePermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 1457
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1461
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1458
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAnimation(I)I
    .locals 13
    .param p1, "mode"    # I

    .prologue
    const/4 v9, -0x1

    .line 7828
    const/4 v7, -0x1

    .line 7829
    .local v7, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7830
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 7831
    .local v10, "token":J
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/b2b"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7832
    .local v2, "dir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    const-string v12, "/efs/knoxcustom"

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7833
    .local v3, "dirEFS":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 7834
    const/4 v9, 0x0

    .line 7884
    :cond_0
    :goto_0
    return v9

    .line 7837
    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7839
    if-nez p1, :cond_6

    .line 7841
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/b2b/BootFileInfo.txt"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7842
    .local v6, "fileInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v12, "/data/b2b/SoundFileInfo.txt"

    invoke-direct {v8, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7843
    .local v8, "soundInfo":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v12, "/data/b2b/DelayInfo.txt"

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7844
    .local v1, "delayInfo":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v12, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7846
    .local v5, "efsFileInfo":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 7847
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7849
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 7850
    invoke-direct {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7852
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 7853
    invoke-direct {p0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7855
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 7856
    invoke-direct {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7857
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 7858
    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7859
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-eqz v12, :cond_0

    .line 7864
    :cond_5
    const/4 v7, 0x0

    .line 7883
    .end local v1    # "delayInfo":Ljava/io/File;
    .end local v5    # "efsFileInfo":Ljava/io/File;
    .end local v6    # "fileInfo":Ljava/io/File;
    .end local v8    # "soundInfo":Ljava/io/File;
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v9, v7

    .line 7884
    goto :goto_0

    .line 7865
    :catch_0
    move-exception v4

    .line 7866
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 7868
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_6
    const/4 v12, 0x1

    if-ne p1, v12, :cond_8

    .line 7870
    :try_start_1
    new-instance v6, Ljava/io/File;

    const-string v12, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7872
    .restart local v6    # "fileInfo":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 7873
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7876
    :cond_7
    const/4 v7, 0x0

    goto :goto_1

    .line 7877
    .end local v6    # "fileInfo":Ljava/io/File;
    :catch_1
    move-exception v4

    .line 7878
    .restart local v4    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 7881
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    const/16 v7, -0x32

    goto :goto_1
.end method

.method public copyAdbLog(I)I
    .locals 13
    .param p1, "logType"    # I

    .prologue
    .line 4847
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4848
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 4849
    .local v8, "token":J
    const/4 v7, -0x6

    .line 4851
    .local v7, "result":I
    packed-switch p1, :pswitch_data_0

    .line 4896
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "copyAdbLog() failed - invalid logType "

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4897
    const/16 v7, -0x32

    .line 4900
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4901
    return v7

    .line 4854
    :pswitch_0
    :try_start_0
    const-string v2, "/data/log/customLogcat.log"

    .line 4855
    .local v2, "customLog":Ljava/lang/String;
    const-string/jumbo v1, "logcat -d -v time -f /data/log/customLogcat.log"

    .line 4856
    .local v1, "command":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string/jumbo v11, "logcat -d -v time -f /data/log/customLogcat.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4857
    .local v6, "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 4859
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod  644 /data/log/customLogcat.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4860
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4861
    const/4 v7, 0x0

    goto :goto_0

    .line 4862
    .end local v1    # "command":Ljava/lang/String;
    .end local v2    # "customLog":Ljava/lang/String;
    .end local v6    # "proc":Ljava/lang/Process;
    :catch_0
    move-exception v3

    .line 4863
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4864
    const/4 v7, -0x1

    .line 4868
    goto :goto_0

    .line 4865
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 4866
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4867
    const/4 v7, -0x1

    .line 4869
    goto :goto_0

    .line 4872
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :pswitch_1
    :try_start_1
    const-string v2, "/data/log/customKernel.log"

    .line 4873
    .restart local v2    # "customLog":Ljava/lang/String;
    const-string v5, "/proc/last_kmsg"

    .line 4874
    .local v5, "kernelLog":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4875
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 4876
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/data/log/customKernel.log"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4877
    .restart local v6    # "proc":Ljava/lang/Process;
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    .line 4878
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "chmod  644 /data/log/customKernel.log"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 4879
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 4880
    const/4 v7, 0x0

    .line 4881
    goto/16 :goto_0

    .line 4883
    .end local v6    # "proc":Ljava/lang/Process;
    :cond_0
    const/4 v7, -0x1

    goto/16 :goto_0

    .line 4886
    .end local v2    # "customLog":Ljava/lang/String;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "kernelLog":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 4887
    .local v3, "e":Ljava/io/IOException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4888
    const/4 v7, -0x1

    .line 4893
    goto/16 :goto_0

    .line 4890
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 4891
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "copyAdbLog() failed - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4892
    const/4 v7, -0x1

    .line 4894
    goto/16 :goto_0

    .line 4851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public deleteMessagesByIds(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3558
    .local p1, "IdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3560
    .local v0, "callingUid":I
    const/4 v4, -0x1

    .line 3563
    .local v4, "result":I
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3564
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3565
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3566
    const/4 v6, -0x6

    .line 3587
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v6

    .line 3570
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3571
    :cond_1
    const/16 v6, -0x32

    goto :goto_0

    .line 3574
    :cond_2
    const-string v5, ""

    .line 3575
    .local v5, "toDB":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 3580
    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v7, 0x3e8

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "smsIDsToDelete"

    invoke-virtual {v6, v7, v8, v9, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3581
    const/4 v4, 0x0

    :goto_2
    move v6, v4

    .line 3587
    goto :goto_0

    .line 3582
    :catch_0
    move-exception v2

    .line 3584
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public deleteMessagesByNumber(Ljava/lang/String;)I
    .locals 12
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 3510
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v7

    .line 3513
    .local v7, "callingUid":I
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3514
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 3515
    .local v8, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v8, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3516
    const/4 v2, -0x6

    .line 3546
    .end local v8    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v2

    .line 3520
    :cond_1
    const-string v11, "[0-9+]+"

    .line 3521
    .local v11, "regex":Ljava/lang/String;
    if-eqz p1, :cond_2

    invoke-virtual {p1, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3522
    :cond_2
    const/16 v2, -0x32

    goto :goto_0

    .line 3524
    :cond_3
    const/4 v6, 0x0

    .line 3526
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v2, "content://sms/inbox"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3527
    .local v1, "inboxURI":Landroid/net/Uri;
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3528
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 3529
    .local v10, "idRowToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "address"

    aput-object v4, v2, v3

    const-string v3, "address=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3531
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 3532
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3534
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3535
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3537
    :cond_5
    invoke-virtual {p0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteMessagesByIds(Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3542
    if-eqz v6, :cond_0

    .line 3543
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3538
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "inboxURI":Landroid/net/Uri;
    .end local v10    # "idRowToDelete":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v9

    .line 3539
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "KnoxCustomManagerService"

    const-string v3, "Failed talking with KnoxCustomManager service"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3542
    if-eqz v6, :cond_6

    .line 3543
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3546
    :cond_6
    const/4 v2, -0x1

    goto :goto_0

    .line 3542
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_7

    .line 3543
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v2
.end method

.method public dialEmergencyNumber(Ljava/lang/String;)I
    .locals 9
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 2684
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2685
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 2686
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2689
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2690
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2691
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_2

    .line 2692
    :cond_0
    const/16 v3, -0x28

    .line 2711
    :cond_1
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2712
    return v3

    .line 2694
    :cond_2
    :try_start_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2695
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_EMERGENCY"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2696
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2697
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2698
    const/4 v3, 0x0

    .line 2699
    goto :goto_0

    .line 2700
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    const/16 v3, -0x31

    goto :goto_0

    .line 2704
    :cond_4
    const/4 v3, -0x2

    goto :goto_0

    .line 2707
    :catch_0
    move-exception v1

    .line 2708
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dialEmergencyNumber() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getAccessibilitySettingsItems()I
    .locals 5

    .prologue
    .line 8913
    const/4 v1, 0x0

    .line 8916
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "anykey_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 8917
    or-int/lit8 v1, v1, 0x1

    .line 8919
    :cond_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control_incomming_calls"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 8920
    or-int/lit8 v1, v1, 0x2

    .line 8922
    :cond_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "incall_power_button_behavior"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 8924
    or-int/lit8 v1, v1, 0x4

    .line 8926
    :cond_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "notification_reminder_selectable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 8927
    or-int/lit8 v1, v1, 0x8

    .line 8929
    :cond_3
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_4

    .line 8930
    or-int/lit8 v1, v1, 0x10

    .line 8936
    :cond_4
    :goto_0
    return v1

    .line 8932
    :catch_0
    move-exception v0

    .line 8933
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAccessibilitySettingsItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAirGestureOptionState(I)Z
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 7288
    const/4 v1, 0x1

    .line 7289
    .local v1, "result":Z
    packed-switch p1, :pswitch_data_0

    .line 7309
    :goto_0
    return v1

    .line 7292
    :pswitch_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "air_button_onoff"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    :goto_1
    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    .line 7293
    :catch_0
    move-exception v0

    .line 7294
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7299
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pen_hovering"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-ne v4, v2, :cond_1

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_2

    .line 7300
    :catch_1
    move-exception v0

    .line 7301
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAirGestureOptionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAppBlockDownloadNamespaces()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5496
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5498
    .local v6, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 5500
    .local v1, "blockNamespaces":Ljava/lang/String;
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v9, 0x3e8

    const-string v10, "KNOX_CUSTOM"

    const-string v11, "blockDownloadNamespaces"

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5501
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 5502
    const-string v8, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 5503
    .local v5, "nsTokens":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    .line 5504
    .local v7, "str":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5503
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5507
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "nsTokens":[Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5508
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getAppBlockDownloadNamespaces() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5511
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v6
.end method

.method public getAppBlockDownloadState()Z
    .locals 6

    .prologue
    .line 5436
    const/4 v0, 0x0

    .line 5438
    .local v0, "downloadStateResult":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "blockDownloadState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5443
    :goto_0
    return v0

    .line 5439
    :catch_0
    move-exception v1

    .line 5440
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppBlockDownloadState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getBatteryLevelColourItem()Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    .locals 7

    .prologue
    .line 5268
    const/4 v2, 0x0

    .line 5271
    .local v2, "result":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "batteryLevelColourItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 5274
    .local v0, "blob":[B
    if-eqz v0, :cond_0

    .line 5275
    invoke-direct {p0, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deserializeKnoxCustomStatusbarIconItem([B)Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 5280
    .end local v0    # "blob":[B
    :cond_0
    :goto_0
    return-object v2

    .line 5277
    :catch_0
    move-exception v1

    .line 5278
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "getPermissions() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCallScreenDisabledItems()I
    .locals 6

    .prologue
    .line 3404
    const/4 v1, 0x0

    .line 3406
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "callScreenItems"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3411
    :goto_0
    return v1

    .line 3407
    :catch_0
    move-exception v0

    .line 3408
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCallScreenDisabledItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getChargerConnectionSoundEnabledState()Z
    .locals 6

    .prologue
    .line 5828
    const/4 v1, 0x1

    .line 5830
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "chargerConnectionSoundEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5835
    :goto_0
    return v1

    .line 5831
    :catch_0
    move-exception v0

    .line 5832
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getChargerConnectionSoundEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCheckCoverPopupState()Z
    .locals 6

    .prologue
    .line 3170
    const/4 v1, 0x1

    .line 3172
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3177
    :goto_0
    return v1

    .line 3173
    :catch_0
    move-exception v0

    .line 3174
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCustomOperatorName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3920
    const/4 v1, 0x0

    .line 3922
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "customOperatorName"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3927
    :goto_0
    return-object v1

    .line 3923
    :catch_0
    move-exception v0

    .line 3924
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCustomOperatorName() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceSpeakerEnabledState()Z
    .locals 6

    .prologue
    .line 5749
    const/4 v2, 0x0

    .line 5751
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5752
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isForceSpeakerOn()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 5757
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_0
    return v2

    .line 5753
    :catch_0
    move-exception v1

    .line 5754
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceSpeakerEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDisplayMirroringState()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 7219
    const/4 v4, 0x0

    .line 7223
    .local v4, "state":Z
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 7224
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 7225
    .local v1, "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v7, "getWifiDisplayStatus"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 7226
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 7227
    .local v5, "status":Ljava/lang/Object;
    check-cast v5, Landroid/hardware/display/WifiDisplayStatus;

    .end local v5    # "status":Ljava/lang/Object;
    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    const/4 v4, 0x1

    .line 7232
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v4

    .restart local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "method":Ljava/lang/reflect/Method;
    :cond_0
    move v4, v6

    .line 7227
    goto :goto_0

    .line 7228
    .end local v0    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v1    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 7229
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDisplayMirroringState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEthernetConfigurationType()I
    .locals 6

    .prologue
    .line 5704
    const/4 v1, 0x0

    .line 5706
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "ethernetConnectionType"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5711
    :goto_0
    return v1

    .line 5707
    :catch_0
    move-exception v0

    .line 5708
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getEthernetConfigurationType() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEthernetState()Z
    .locals 12

    .prologue
    .line 5579
    const/4 v7, 0x0

    .line 5581
    .local v7, "result":Z
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v9, 0x3e8

    const-string v10, "KNOX_CUSTOM"

    const-string/jumbo v11, "ethernetState"

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 5582
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "ethernet"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 5583
    .local v1, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 5584
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "getEthState"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 5585
    .local v4, "m":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 5586
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5587
    .local v2, "ethernetState":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 5588
    const/4 v7, 0x1

    .line 5604
    .end local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v2    # "ethernetState":Ljava/lang/Integer;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return v7

    .line 5589
    .restart local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v2    # "ethernetState":Ljava/lang/Integer;
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 5590
    const/4 v7, 0x0

    goto :goto_0

    .line 5594
    .end local v1    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v2    # "ethernetState":Ljava/lang/Integer;
    .end local v4    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .line 5595
    .local v5, "nsme":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    .line 5602
    goto :goto_0

    .line 5596
    .end local v5    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    .line 5597
    .local v3, "ite":Ljava/lang/reflect/InvocationTargetException;
    const/4 v7, 0x0

    .line 5602
    goto :goto_0

    .line 5598
    .end local v3    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v6

    .line 5599
    .local v6, "re":Ljava/lang/RuntimeException;
    const/4 v7, 0x0

    .line 5602
    goto :goto_0

    .line 5600
    .end local v6    # "re":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v0

    .line 5601
    .local v0, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getEthernetState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getExcludedMessagesNotifications()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3668
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3671
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "excludedSMSNumbers"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3672
    .local v2, "fromDB":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 3686
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v5

    .line 3675
    .restart local v2    # "fromDB":Ljava/lang/String;
    .restart local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v6, v0, v3

    .line 3676
    .local v6, "token":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 3678
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3675
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3681
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3682
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getExcludedMessagesNotifications() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public getExitUI(I)Ljava/lang/String;
    .locals 6
    .param p1, "stringType"    # I

    .prologue
    .line 1007
    const/4 v1, 0x0

    .line 1008
    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1024
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getExitUI() called with invalid stringType"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :goto_0
    return-object v1

    .line 1011
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiPackage"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1018
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiClass"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1019
    :catch_1
    move-exception v0

    .line 1020
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExitUI() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1008
    nop

    :pswitch_data_0
    .packed-switch 0xdd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getExtendedCallInfoState()Z
    .locals 6

    .prologue
    .line 2664
    const/4 v1, 0x0

    .line 2666
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "extendedCallInfoState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2671
    :goto_0
    return v1

    .line 2667
    :catch_0
    move-exception v0

    .line 2668
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getForceAutoStartUpState()I
    .locals 6

    .prologue
    .line 9008
    const/4 v2, 0x0

    .line 9010
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v1

    .line 9011
    .local v1, "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    invoke-virtual {v1}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->isKnoxCustomAutoStartUpEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 9012
    const/4 v2, 0x1

    .line 9018
    .end local v1    # "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :cond_0
    :goto_0
    return v2

    .line 9014
    :catch_0
    move-exception v0

    .line 9015
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getForceAutoStartUp() failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getForceAutoStartUpStateFromDB()Z
    .locals 8

    .prologue
    .line 8987
    const/4 v1, 0x0

    .line 8988
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 8990
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "AutoStartUpState"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 8994
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8995
    return v1

    .line 8991
    :catch_0
    move-exception v0

    .line 8992
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getForceAutoStartupStateFromDB() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGearNotificationState()Z
    .locals 6

    .prologue
    .line 4448
    const/4 v1, 0x1

    .line 4450
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "gearNotificationState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4455
    :goto_0
    return v1

    .line 4451
    :catch_0
    move-exception v0

    .line 4452
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getGearNotificationState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHardKeyIntentState()Z
    .locals 6

    .prologue
    .line 3324
    const/4 v1, 0x0

    .line 3326
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHardKeyIntentState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3331
    :goto_0
    return v1

    .line 3327
    :catch_0
    move-exception v0

    .line 3328
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHardKeyIntentState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHideNotificationMessages()I
    .locals 6

    .prologue
    .line 3130
    const/4 v1, 0x0

    .line 3132
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "notificationMessagesMask"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3137
    :goto_0
    return v1

    .line 3133
    :catch_0
    move-exception v0

    .line 3134
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getHomeActivity()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1213
    const/4 v1, 0x0

    .line 1215
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHomeActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1220
    :goto_0
    return-object v1

    .line 1216
    :catch_0
    move-exception v0

    .line 1217
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getHomeActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInfraredState()Z
    .locals 9

    .prologue
    .line 3804
    const/4 v2, 0x1

    .line 3805
    .local v2, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3807
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v6, "consumer_ir"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/ConsumerIrManager;

    .line 3808
    .local v0, "cim":Landroid/hardware/ConsumerIrManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 3809
    :cond_0
    const/4 v2, 0x0

    .line 3817
    .end local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3818
    return v2

    .line 3811
    .restart local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v6, 0x3e8

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "infraredState"

    invoke-virtual {v3, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    goto :goto_0

    .line 3813
    .end local v0    # "cim":Landroid/hardware/ConsumerIrManager;
    :catch_0
    move-exception v1

    .line 3814
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getInfraredState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getInputMethodRestrictionState()Z
    .locals 6

    .prologue
    .line 2064
    const/4 v1, 0x0

    .line 2066
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "inputRestrictionState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2071
    :goto_0
    return v1

    .line 2067
    :catch_0
    move-exception v0

    .line 2068
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getKeyboardMode()I
    .locals 6

    .prologue
    .line 5879
    const/4 v1, 0x0

    .line 5881
    .local v1, "mode":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "keyboardMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5886
    :goto_0
    return v1

    .line 5882
    :catch_0
    move-exception v0

    .line 5883
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getKeyboardMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLTESettingState()Z
    .locals 6

    .prologue
    .line 4623
    const/4 v1, 0x0

    .line 4625
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "LTESettingState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4630
    :goto_0
    return v1

    .line 4626
    :catch_0
    move-exception v0

    .line 4627
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLTESettingState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLcdBacklightState()Z
    .locals 1

    .prologue
    .line 5993
    sget-boolean v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .line 5995
    .local v0, "result":Z
    return v0
.end method

.method public getLockScreenHiddenItems()I
    .locals 13

    .prologue
    .line 5100
    const/4 v5, 0x0

    .line 5101
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 5104
    .local v8, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v10, 0x3e8

    const-string v11, "KNOX_CUSTOM"

    const-string/jumbo v12, "lockScreenItems"

    invoke-virtual {v7, v10, v11, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 5108
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_clock"

    const/4 v11, -0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v10, -0x1

    if-ne v7, v10, :cond_7

    const/4 v3, 0x1

    .line 5109
    .local v3, "isNewKeyguard":Z
    :goto_0
    iget-boolean v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v7, :cond_1

    .line 5110
    if-nez v3, :cond_1

    .line 5111
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_clock"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_0

    .line 5112
    or-int/lit8 v5, v5, 0x1

    .line 5114
    :cond_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_date_and_year"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_1

    .line 5115
    or-int/lit8 v5, v5, 0x10

    .line 5119
    :cond_1
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v7}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 5120
    .local v4, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 5121
    .local v0, "UserID":I
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLockScreenHideOwnerInfo()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_2

    .line 5122
    or-int/lit8 v5, v5, 0x20

    .line 5124
    :cond_2
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_application_shortcut"

    invoke-static {v7, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5125
    .local v1, "appShortcut_Info":Ljava/lang/String;
    iget-boolean v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v7, :cond_8

    .line 5126
    if-nez v1, :cond_3

    .line 5128
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "set_shortcuts_mode"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3

    .line 5129
    or-int/lit8 v5, v5, 0x40

    .line 5143
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_additional_info"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4

    .line 5144
    or-int/lit16 v5, v5, 0x80

    .line 5146
    :cond_4
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "unlock_text"

    const/4 v11, 0x1

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_5

    .line 5147
    or-int/lit16 v5, v5, 0x100

    .line 5149
    :cond_5
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "lock_screen_show_notifications"

    const/4 v11, 0x0

    invoke-static {v7, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-nez v7, :cond_6

    .line 5150
    or-int/lit16 v5, v5, 0x200

    .line 5158
    :cond_6
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v7, v5

    .line 5159
    .end local v0    # "UserID":I
    .end local v1    # "appShortcut_Info":Ljava/lang/String;
    .end local v3    # "isNewKeyguard":Z
    .end local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :goto_2
    return v7

    .line 5108
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 5134
    .restart local v0    # "UserID":I
    .restart local v1    # "appShortcut_Info":Ljava/lang/String;
    .restart local v3    # "isNewKeyguard":Z
    .restart local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_8
    :try_start_1
    const-string v7, ";"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 5135
    .local v6, "shortcutInfo":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x2

    aget-object v7, v6, v7

    const-string v10, "0"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 5136
    or-int/lit8 v5, v5, 0x40

    goto :goto_1

    .line 5138
    .end local v6    # "shortcutInfo":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 5139
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5140
    const/4 v7, 0x0

    goto :goto_2

    .line 5153
    .end local v0    # "UserID":I
    .end local v1    # "appShortcut_Info":Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "isNewKeyguard":Z
    .end local v4    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_1
    move-exception v2

    .line 5154
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5155
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public getLockScreenHideOwnerInfo()I
    .locals 8

    .prologue
    .line 5081
    const/4 v1, 0x0

    .line 5082
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5085
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "ownerInfoHide"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5090
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 5091
    :goto_0
    return v4

    .line 5086
    :catch_0
    move-exception v0

    .line 5087
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLockScreenHideOwnerInfo() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5088
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLockScreenOverrideMode()I
    .locals 1

    .prologue
    .line 6065
    sget v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    return v0
.end method

.method public getMessageIdsMarkedToDelete()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3698
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3701
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "smsIDsToDelete"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3702
    .local v2, "fromDB":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 3703
    const-string v7, ":"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v0, v3

    .line 3704
    .local v6, "token":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 3706
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3703
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3710
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "fromDB":Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "token":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 3711
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getMessageIdsMarkedToDelete() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v5
.end method

.method public getMobileNetworkType()I
    .locals 7

    .prologue
    .line 8117
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.telephony"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8118
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 8119
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8120
    const/4 v1, -0x6

    .line 8129
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v1

    .line 8124
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8125
    .local v4, "token":J
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 8126
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getPreferredNetworkType(I)I

    move-result v1

    .line 8128
    .local v1, "ret":I
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public getMultiWindowFixedState(I)I
    .locals 6
    .param p1, "paramType"    # I

    .prologue
    .line 1954
    const/4 v1, -0x1

    .line 1955
    .local v1, "result":I
    packed-switch p1, :pswitch_data_0

    .line 1971
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getMultiWindowFixedState() failed - invalid parameter type "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    :goto_0
    return v1

    .line 1958
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "multiWindowFixed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1959
    :catch_0
    move-exception v0

    .line 1960
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMultiWindowFixedState(MULTI_WINDOW_FIXED_STATE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1965
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "multiWindowPercentageSplit"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1966
    :catch_1
    move-exception v0

    .line 1967
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMultiWindowFixedState(MULTI_WINDOW_PERCENTAGE) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1955
    nop

    :pswitch_data_0
    .packed-switch 0x1b9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getPowerDialogCustomItems()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6342
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6344
    .local v2, "retList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "powerCustomItems"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBlob(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 6347
    .local v0, "blob":[B
    if-eqz v0, :cond_0

    .line 6348
    invoke-direct {p0, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deserializeObject([B)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 6353
    .end local v0    # "blob":[B
    :cond_0
    :goto_0
    return-object v2

    .line 6350
    :catch_0
    move-exception v1

    .line 6351
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "getPowerDialogCustomItems() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerDialogCustomItemsState()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 6284
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "powerCustomItemsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v1, v3, :cond_0

    .line 6289
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 6284
    goto :goto_0

    .line 6287
    :catch_0
    move-exception v0

    .line 6288
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogCustomItemsState() failed - persistence problem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 6289
    goto :goto_0
.end method

.method public getPowerDialogItems()I
    .locals 6

    .prologue
    .line 2448
    const/4 v1, -0x1

    .line 2451
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogItems"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2457
    :goto_0
    return v1

    .line 2452
    :catch_0
    move-exception v0

    .line 2453
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerDialogOptionMode()I
    .locals 6

    .prologue
    .line 1069
    const/4 v1, 0x2

    .line 1072
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1078
    :goto_0
    return v1

    .line 1073
    :catch_0
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPowerMenuLockedState()Z
    .locals 6

    .prologue
    .line 4253
    const/4 v1, 0x1

    .line 4255
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerMenuLockedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4260
    :goto_0
    return v1

    .line 4256
    :catch_0
    move-exception v0

    .line 4257
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPowerMenuLockedState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProKioskState()Z
    .locals 6

    .prologue
    .line 905
    const/4 v1, 0x0

    .line 907
    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 912
    :goto_0
    return v1

    .line 908
    :catch_0
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getProKioskString(I)Ljava/lang/String;
    .locals 6
    .param p1, "stringType"    # I

    .prologue
    .line 1141
    const/4 v1, 0x0

    .line 1143
    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1170
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getProKioskString() failed - unrecognized type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    :goto_0
    return-object v1

    .line 1146
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOn"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    const/4 v1, 0x0

    .line 1151
    goto :goto_0

    .line 1154
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOff"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 1155
    :catch_1
    move-exception v0

    .line 1156
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const/4 v1, 0x0

    .line 1159
    goto :goto_0

    .line 1162
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOption"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    goto :goto_0

    .line 1164
    :catch_2
    move-exception v0

    .line 1165
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    const/4 v1, 0x0

    .line 1168
    goto :goto_0

    .line 1143
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getQuickPanelButtons()I
    .locals 8

    .prologue
    const/4 v2, 0x7

    const/4 v7, 0x1

    .line 8745
    const/4 v0, 0x0

    .line 8747
    .local v0, "buttons":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "quickPanelQuickConnect"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 8748
    or-int/lit8 v0, v0, 0x2

    .line 8750
    :cond_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "quickPanelSFinder"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 8751
    or-int/lit8 v0, v0, 0x1

    .line 8753
    :cond_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "quickPanelBrightness"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v7, :cond_2

    .line 8754
    or-int/lit8 v0, v0, 0x4

    :cond_2
    move v2, v0

    .line 8761
    :goto_0
    return v2

    .line 8756
    :catch_0
    move-exception v1

    .line 8757
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8758
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "current buttons is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", return will be : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getQuickPanelEditMode()I
    .locals 6

    .prologue
    .line 8444
    const/4 v1, 0x1

    .line 8446
    .local v1, "mode":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "quickPanelEditMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 8451
    :goto_0
    return v1

    .line 8447
    :catch_0
    move-exception v0

    .line 8448
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getQuickPanelEditMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getQuickPanelItems()Ljava/lang/String;
    .locals 15

    .prologue
    .line 8551
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 8553
    .local v6, "items":Ljava/lang/StringBuilder;
    :try_start_0
    iget-boolean v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    if-eqz v12, :cond_4

    .line 8554
    iget-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "notification_panel_active_app_list"

    invoke-static {v12, v13}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8555
    .local v10, "qsList":Ljava/lang/String;
    iget-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "notification_panel_active_number_of_apps"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 8556
    .local v11, "qsListSize":I
    const-string v12, ";"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8557
    .local v9, "qsItems":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 8558
    .local v4, "item":I
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v5, v4

    .end local v4    # "item":I
    .local v5, "item":I
    :goto_0
    if-ge v2, v7, :cond_7

    aget-object v8, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8559
    .local v8, "qsItem":Ljava/lang/String;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "item":I
    .restart local v4    # "item":I
    if-ne v5, v11, :cond_1

    .line 8594
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "item":I
    .end local v7    # "len$":I
    .end local v8    # "qsItem":Ljava/lang/String;
    .end local v9    # "qsItems":[Ljava/lang/String;
    .end local v10    # "qsList":Ljava/lang/String;
    .end local v11    # "qsListSize":I
    :cond_0
    :goto_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 8562
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "item":I
    .restart local v7    # "len$":I
    .restart local v8    # "qsItem":Ljava/lang/String;
    .restart local v9    # "qsItems":[Ljava/lang/String;
    .restart local v10    # "qsList":Ljava/lang/String;
    .restart local v11    # "qsListSize":I
    :cond_1
    :try_start_1
    invoke-direct {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemId(Ljava/lang/String;)I

    move-result v3

    .line 8563
    .local v3, "id":I
    if-eqz v3, :cond_3

    .line 8564
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 8565
    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8567
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8558
    :cond_3
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "item":I
    .restart local v5    # "item":I
    goto :goto_0

    .line 8571
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "id":I
    .end local v5    # "item":I
    .end local v7    # "len$":I
    .end local v8    # "qsItem":Ljava/lang/String;
    .end local v9    # "qsItems":[Ljava/lang/String;
    .end local v10    # "qsList":Ljava/lang/String;
    .end local v11    # "qsListSize":I
    :cond_4
    iget-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "sysui_qs_tiles"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8572
    .restart local v10    # "qsList":Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 8573
    iget-object v12, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "sysui_qs_active_tiles"

    const/16 v14, 0x64

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 8574
    .restart local v11    # "qsListSize":I
    const-string v12, ","

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8575
    .restart local v9    # "qsItems":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 8576
    .restart local v4    # "item":I
    move-object v0, v9

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v7, v0

    .restart local v7    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    move v5, v4

    .end local v4    # "item":I
    .restart local v5    # "item":I
    :goto_2
    if-ge v2, v7, :cond_0

    aget-object v8, v0, v2

    .line 8577
    .restart local v8    # "qsItem":Ljava/lang/String;
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "item":I
    .restart local v4    # "item":I
    if-eq v5, v11, :cond_0

    .line 8580
    invoke-direct {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemId(Ljava/lang/String;)I

    move-result v3

    .line 8581
    .restart local v3    # "id":I
    if-eqz v3, :cond_6

    .line 8582
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_5

    .line 8583
    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8585
    :cond_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 8576
    :cond_6
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4    # "item":I
    .restart local v5    # "item":I
    goto :goto_2

    .line 8590
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "id":I
    .end local v5    # "item":I
    .end local v7    # "len$":I
    .end local v8    # "qsItem":Ljava/lang/String;
    .end local v9    # "qsItems":[Ljava/lang/String;
    .end local v10    # "qsList":Ljava/lang/String;
    .end local v11    # "qsListSize":I
    :catch_0
    move-exception v1

    .line 8591
    .local v1, "e":Ljava/lang/Exception;
    const-string v12, "KnoxCustomManagerService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getQuickPanelItems() failed - persistence problem "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v5    # "item":I
    .restart local v7    # "len$":I
    .restart local v9    # "qsItems":[Ljava/lang/String;
    .restart local v10    # "qsList":Ljava/lang/String;
    .restart local v11    # "qsListSize":I
    :cond_7
    move v4, v5

    .end local v5    # "item":I
    .restart local v4    # "item":I
    goto/16 :goto_1
.end method

.method public getRecentLongPressActivity()Ljava/lang/String;
    .locals 6

    .prologue
    .line 3222
    const/4 v1, 0x0

    .line 3224
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressActivity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3229
    :goto_0
    return-object v1

    .line 3225
    :catch_0
    move-exception v0

    .line 3226
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRecentLongPressMode()I
    .locals 6

    .prologue
    .line 3275
    const/4 v1, -0x1

    .line 3277
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3282
    :goto_0
    return v1

    .line 3278
    :catch_0
    move-exception v0

    .line 3279
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenOffOnHomeLongPressState()Z
    .locals 6

    .prologue
    .line 4661
    const/4 v1, 0x0

    .line 4663
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnHomeLongPressState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4668
    :goto_0
    return v1

    .line 4664
    :catch_0
    move-exception v0

    .line 4665
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenOffOnHomeLongPressState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenOffOnStatusBarDoubleTapState()Z
    .locals 6

    .prologue
    .line 4699
    const/4 v1, 0x0

    .line 4701
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnStatusBarDoubleTapState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4706
    :goto_0
    return v1

    .line 4702
    :catch_0
    move-exception v0

    .line 4703
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getScreenWakeupOnPowerState()Z
    .locals 6

    .prologue
    .line 4488
    const/4 v1, 0x1

    .line 4490
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenWakeupOnPowerState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4494
    :goto_0
    return v1

    .line 4491
    :catch_0
    move-exception v0

    .line 4492
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getScreenWakeupOnPowerState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSealedNotificationMessagesState()Z
    .locals 6

    .prologue
    .line 1838
    const/4 v2, 0x1

    .line 1840
    .local v2, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1841
    .local v1, "mask":I
    const/16 v3, 0x1f

    if-ne v1, v3, :cond_0

    .line 1842
    const/4 v2, 0x0

    .line 1848
    .end local v1    # "mask":I
    :cond_0
    :goto_0
    return v2

    .line 1844
    :catch_0
    move-exception v0

    .line 1845
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSealedPowerDialogCustomItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2590
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getPowerDialogCustomItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSealedPowerDialogCustomItemsState()Z
    .locals 1

    .prologue
    .line 2515
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getPowerDialogCustomItemsState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarClockState()Z
    .locals 1

    .prologue
    .line 1283
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarClockState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarIconsState()Z
    .locals 1

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarIconsState()Z

    move-result v0

    return v0
.end method

.method public getSealedStatusBarMode()I
    .locals 1

    .prologue
    .line 1253
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getStatusBarMode()I

    move-result v0

    return v0
.end method

.method public getSealedUsbMassStorageState()Z
    .locals 1

    .prologue
    .line 1340
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbMassStorageState()Z

    move-result v0

    return v0
.end method

.method public getSealedUsbNetAddress(I)Ljava/lang/String;
    .locals 1
    .param p1, "addressType"    # I

    .prologue
    .line 1396
    invoke-virtual {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSealedUsbNetState()Z
    .locals 1

    .prologue
    .line 1369
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v0

    return v0
.end method

.method public getSensorDisabled()I
    .locals 6

    .prologue
    .line 3874
    const/4 v1, 0x0

    .line 3876
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sensorDisabled"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3881
    :goto_0
    return v1

    .line 3877
    :catch_0
    move-exception v0

    .line 3878
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSensorDisabled() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingsEnabledItems()I
    .locals 6

    .prologue
    .line 6142
    const/4 v1, 0x0

    .line 6144
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeSettingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6149
    :goto_0
    return v1

    .line 6145
    :catch_0
    move-exception v0

    .line 6146
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSettingsEnabledItems() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSettingsHiddenState()I
    .locals 6

    .prologue
    .line 2765
    const/4 v1, 0x0

    .line 2767
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "settingsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2772
    :goto_0
    return v1

    .line 2768
    :catch_0
    move-exception v0

    .line 2769
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarClockState()Z
    .locals 7

    .prologue
    .line 6497
    const/4 v2, 0x1

    .line 6499
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarClockState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6500
    .local v1, "mode":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 6501
    :cond_0
    const/4 v2, 0x0

    .line 6507
    .end local v1    # "mode":I
    :cond_1
    :goto_0
    return v2

    .line 6503
    :catch_0
    move-exception v0

    .line 6504
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusBarClockState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarIconsState()Z
    .locals 7

    .prologue
    .line 6566
    const/4 v2, 0x1

    .line 6568
    .local v2, "result":Z
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "statusBarIconsState"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6569
    .local v1, "mode":I
    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 6570
    :cond_0
    const/4 v2, 0x0

    .line 6576
    .end local v1    # "mode":I
    :cond_1
    :goto_0
    return v2

    .line 6572
    :catch_0
    move-exception v0

    .line 6573
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getStatusBarIconsState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarMode()I
    .locals 6

    .prologue
    .line 6426
    const/4 v1, 0x2

    .line 6428
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarMode"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6429
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 6430
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedState()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    .line 6431
    const/4 v1, 0x3

    .line 6440
    :cond_0
    :goto_0
    return v1

    .line 6433
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 6436
    :catch_0
    move-exception v0

    .line 6437
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarMode() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarNotificationsState()Z
    .locals 6

    .prologue
    .line 6631
    const/4 v1, 0x1

    .line 6633
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarNotificationsState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6638
    :goto_0
    return v1

    .line 6634
    :catch_0
    move-exception v0

    .line 6635
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarText()Ljava/lang/String;
    .locals 6

    .prologue
    .line 4108
    const/4 v1, 0x0

    .line 4110
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4115
    :goto_0
    return-object v1

    .line 4111
    :catch_0
    move-exception v0

    .line 4112
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarText() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarTextScrollWidth()I
    .locals 6

    .prologue
    .line 6693
    const/4 v1, 0x0

    .line 6695
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextScroll"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6700
    :goto_0
    return v1

    .line 6696
    :catch_0
    move-exception v0

    .line 6697
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextScrollWidth() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarTextSize()I
    .locals 6

    .prologue
    .line 4144
    const/4 v1, 0x0

    .line 4146
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4147
    if-nez v1, :cond_0

    .line 4148
    const/16 v1, 0xc

    .line 4154
    :cond_0
    :goto_0
    return v1

    .line 4150
    :catch_0
    move-exception v0

    .line 4151
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextSize() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getStatusBarTextStyle()I
    .locals 6

    .prologue
    .line 4128
    const/4 v1, 0x0

    .line 4130
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4135
    :goto_0
    return v1

    .line 4131
    :catch_0
    move-exception v0

    .line 4132
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getStatusBarTextStyle() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSystemSoundsEnabledState()I
    .locals 6

    .prologue
    .line 8822
    const/4 v2, 0x0

    .line 8824
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "dtmf_tone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 8825
    or-int/lit8 v2, v2, 0x1

    .line 8827
    :cond_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sound_effects_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 8828
    or-int/lit8 v2, v2, 0x2

    .line 8830
    :cond_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "lockscreen_sounds_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 8831
    or-int/lit8 v2, v2, 0x4

    .line 8833
    :cond_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "haptic_feedback_enabled"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 8834
    or-int/lit8 v2, v2, 0x8

    .line 8836
    :cond_3
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sip_key_feedback_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 8837
    or-int/lit8 v2, v2, 0x10

    .line 8839
    :cond_4
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_detachment_notification"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8840
    .local v1, "penStatus":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_5

    .line 8841
    or-int/lit8 v2, v2, 0x20

    .line 8847
    .end local v1    # "penStatus":Ljava/lang/String;
    :cond_5
    :goto_0
    return v2

    .line 8843
    :catch_0
    move-exception v0

    .line 8844
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSystemSoundsEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastEnabledState()Z
    .locals 6

    .prologue
    .line 4527
    const/4 v1, 0x1

    .line 4529
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4534
    :goto_0
    return v1

    .line 4530
    :catch_0
    move-exception v0

    .line 4531
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravity()I
    .locals 6

    .prologue
    .line 5366
    const/4 v1, 0x0

    .line 5368
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravity"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5373
    :goto_0
    return v1

    .line 5369
    :catch_0
    move-exception v0

    .line 5370
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravityEnabledState()Z
    .locals 6

    .prologue
    .line 5312
    const/4 v1, 0x0

    .line 5314
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5319
    :goto_0
    return v1

    .line 5315
    :catch_0
    move-exception v0

    .line 5316
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravityXOffset()I
    .locals 6

    .prologue
    .line 5382
    const/4 v1, 0x0

    .line 5384
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityXOffset"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5389
    :goto_0
    return v1

    .line 5385
    :catch_0
    move-exception v0

    .line 5386
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityXOffset() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastGravityYOffset()I
    .locals 6

    .prologue
    .line 5398
    const/4 v1, 0x0

    .line 5400
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityYOffset"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5405
    :goto_0
    return v1

    .line 5401
    :catch_0
    move-exception v0

    .line 5402
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastGravityYOffset() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getToastShowPackageNameState()Z
    .locals 6

    .prologue
    .line 4567
    const/4 v1, 0x0

    .line 4569
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastShowPackageNameState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4574
    :goto_0
    return v1

    .line 4570
    :catch_0
    move-exception v0

    .line 4571
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getToastShowPackageNameState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUltraPowerSavingPackages()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 6846
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 6850
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 6851
    .local v8, "em":Ljava/lang/Class;
    const-string/jumbo v3, "supportUltraPowerSavingMode"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v8, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 6852
    .local v10, "supported":Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v10, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v2

    .line 6878
    .end local v8    # "em":Ljava/lang/Class;
    .end local v10    # "supported":Ljava/lang/reflect/Method;
    :goto_0
    return-object v0

    .line 6855
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object v0, v2

    .line 6856
    goto :goto_0

    .line 6860
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "em":Ljava/lang/Class;
    .restart local v10    # "supported":Ljava/lang/reflect/Method;
    :cond_0
    const/4 v6, 0x0

    .line 6862
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_1
    const-string v0, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 6863
    .local v1, "emergencyUri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "class"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 6864
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 6865
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 6867
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6868
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 6874
    :cond_2
    if-eqz v6, :cond_3

    .line 6875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v1    # "emergencyUri":Landroid/net/Uri;
    :cond_3
    :goto_1
    move-object v0, v9

    .line 6878
    goto :goto_0

    .line 6870
    :catch_1
    move-exception v7

    .line 6871
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "KnoxCustomManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUltraPowerSavingPackages() failed - persistence problem "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6872
    const/4 v9, 0x0

    .line 6874
    if-eqz v6, :cond_3

    .line 6875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 6874
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 6875
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getUnlockSimOnBootState()Z
    .locals 6

    .prologue
    .line 6186
    const/4 v1, 0x0

    .line 6188
    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockOnBoot"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 6193
    :goto_0
    return v1

    .line 6189
    :catch_0
    move-exception v0

    .line 6190
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUnlockSimOnBootState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUnlockSimPin()Ljava/lang/String;
    .locals 6

    .prologue
    .line 6235
    const/4 v1, 0x0

    .line 6238
    .local v1, "pin":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockPin"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6243
    :goto_0
    return-object v1

    .line 6239
    :catch_0
    move-exception v0

    .line 6240
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUnlockSimPin() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUsbMassStorageState()Z
    .locals 6

    .prologue
    .line 6941
    const/4 v1, 0x1

    .line 6943
    .local v1, "result":Z
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getUsbNetState()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6944
    const/4 v2, 0x0

    .line 6952
    :goto_0
    return v2

    .line 6947
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbMassStorageStateIndependentSealed"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 6952
    goto :goto_0

    .line 6948
    :catch_0
    move-exception v0

    .line 6949
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbMassStorageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getUsbNetAddress(I)Ljava/lang/String;
    .locals 6
    .param p1, "addressType"    # I

    .prologue
    .line 7068
    const/4 v1, 0x0

    .line 7070
    .local v1, "result":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 7086
    const-string v2, "KnoxCustomManagerService"

    const-string/jumbo v3, "getUsbNetAddress() failed - invalid address type "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7087
    const/4 v1, 0x0

    .line 7091
    :goto_0
    return-object v1

    .line 7073
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetSource"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 7074
    :catch_0
    move-exception v0

    .line 7075
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetAddress(sourceAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7080
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetDest"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_0

    .line 7081
    :catch_1
    move-exception v0

    .line 7082
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetAddress(destinationAddress) failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7070
    :pswitch_data_0
    .packed-switch 0x14b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getUsbNetState()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 7011
    const/4 v1, 0x0

    .line 7014
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "usbNetState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 7015
    if-eqz v1, :cond_0

    .line 7016
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "adb_enabled"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v6, :cond_0

    .line 7017
    const/4 v1, 0x0

    .line 7024
    :cond_0
    :goto_0
    return v1

    .line 7020
    :catch_0
    move-exception v0

    .line 7021
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUsbNetState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getUserInactivityTimeout()I
    .locals 5

    .prologue
    .line 2243
    const/4 v1, -0x6

    .line 2246
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_activity_timeout"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2248
    if-lez v1, :cond_0

    .line 2249
    div-int/lit16 v1, v1, 0x3e8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2256
    :cond_0
    :goto_0
    return v1

    .line 2251
    :catch_0
    move-exception v0

    .line 2252
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserInactivityTimeout() failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVibrationIntensity(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 7363
    const/4 v1, 0x0

    .line 7364
    .local v1, "result":I
    packed-switch p1, :pswitch_data_0

    .line 7394
    :goto_0
    return v1

    .line 7367
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_RECVCALL_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 7369
    :catch_0
    move-exception v0

    .line 7370
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7375
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_NOTIFICATION_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 7377
    :catch_1
    move-exception v0

    .line 7378
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7383
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "VIB_FEEDBACK_MAGNITUDE"

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    goto :goto_0

    .line 7385
    :catch_2
    move-exception v0

    .line 7386
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVibrationIntensity() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVolumeButtonRotationState()Z
    .locals 6

    .prologue
    .line 4296
    const/4 v1, 0x0

    .line 4298
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeButtonRotationState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4303
    :goto_0
    return v1

    .line 4299
    :catch_0
    move-exception v0

    .line 4300
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeButtonRotationState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVolumeControlStream()I
    .locals 6

    .prologue
    .line 4044
    const/4 v1, 0x0

    .line 4046
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeControlStream"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4051
    :goto_0
    return v1

    .line 4047
    :catch_0
    move-exception v0

    .line 4048
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeControlStream() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVolumeKeyAppState()Z
    .locals 6

    .prologue
    .line 4337
    const/4 v1, 0x0

    .line 4339
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeKeyAppState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4344
    :goto_0
    return v1

    .line 4340
    :catch_0
    move-exception v0

    .line 4341
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumeKeyAppState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getVolumeKeyAppsList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4401
    const/4 v3, 0x0

    .line 4403
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v8, 0x3e8

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "volumeKeyAppsList"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4405
    .local v2, "listStr":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 4406
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 4407
    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x20

    invoke-direct {v6, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 4408
    .local v6, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v6, v2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 4409
    invoke-interface {v6}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4410
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4414
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v5    # "s":Ljava/lang/String;
    .end local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :catch_0
    move-exception v0

    move-object v3, v4

    .line 4415
    .end local v2    # "listStr":Ljava/lang/String;
    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4417
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v3

    .line 4414
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "listStr":Ljava/lang/String;
    .restart local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "splitter":Landroid/text/TextUtils$StringSplitter;
    :cond_1
    move-object v3, v4

    .end local v4    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public getVolumePanelEnabledState()Z
    .locals 6

    .prologue
    .line 3990
    const/4 v1, 0x1

    .line 3992
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumePanelEnabledState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3997
    :goto_0
    return v1

    .line 3993
    :catch_0
    move-exception v0

    .line 3994
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getVolumePanelEnabledState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiAutoSwitchDelay()I
    .locals 6

    .prologue
    .line 4828
    const/4 v1, -0x1

    .line 4830
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchDelay"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4835
    :goto_0
    return v1

    .line 4831
    :catch_0
    move-exception v0

    .line 4832
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchDelay() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiAutoSwitchState()Z
    .locals 6

    .prologue
    .line 4742
    const/4 v1, 0x0

    .line 4744
    .local v1, "state":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4749
    :goto_0
    return v1

    .line 4745
    :catch_0
    move-exception v0

    .line 4746
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiAutoSwitchThreshold()I
    .locals 6

    .prologue
    .line 4785
    const/4 v1, -0x1

    .line 4787
    .local v1, "result":I
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchThreshold"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4792
    :goto_0
    return v1

    .line 4788
    :catch_0
    move-exception v0

    .line 4789
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiAutoSwitchThreshold() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiConnectedMessageState()Z
    .locals 6

    .prologue
    .line 4187
    const/4 v1, 0x1

    .line 4189
    .local v1, "result":Z
    :try_start_0
    iget-object v2, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v3, 0x3e8

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiConnectedMessageState"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4194
    :goto_0
    return v1

    .line 4190
    :catch_0
    move-exception v0

    .line 4191
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KnoxCustomManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiConnectedMessageState() failed - persistence problem "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiFrequencyBand()I
    .locals 9

    .prologue
    .line 7148
    const/4 v2, 0x0

    .line 7149
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7152
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 7153
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 7154
    .local v0, "band":I
    if-nez v0, :cond_1

    .line 7155
    const/4 v2, 0x0

    .line 7165
    .end local v0    # "band":I
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7167
    return v2

    .line 7156
    .restart local v0    # "band":I
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 7157
    const/4 v2, 0x1

    goto :goto_0

    .line 7158
    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_0

    .line 7159
    const/4 v2, 0x2

    goto :goto_0

    .line 7161
    .end local v0    # "band":I
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 7162
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiFrequencyBand() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiHotspotEnabledState()I
    .locals 9

    .prologue
    .line 8012
    const/4 v1, 0x0

    .line 8013
    .local v1, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 8015
    .local v2, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 8016
    .local v5, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 8017
    .local v4, "wifiApState":I
    const/16 v6, 0xc

    if-eq v4, v6, :cond_0

    const/16 v6, 0xd

    if-ne v4, v6, :cond_1

    .line 8019
    :cond_0
    const/4 v1, 0x1

    .line 8024
    .end local v4    # "wifiApState":I
    .end local v5    # "wm":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8025
    return v1

    .line 8021
    :catch_0
    move-exception v0

    .line 8022
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getWifiHotspotEnabledState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getWifiState()Z
    .locals 8

    .prologue
    .line 9025
    const/4 v1, 0x0

    .line 9026
    .local v1, "result":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 9028
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v5, 0x3e8

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "WifiState"

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 9032
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9033
    return v1

    .line 9029
    :catch_0
    move-exception v0

    .line 9030
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getBASturnoffFlag() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 717
    :try_start_0
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 718
    .local v1, "md":Ljava/security/MessageDigest;
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/security/MessageDigest;->update([BII)V

    .line 719
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->asHex([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 722
    .end local v1    # "md":Ljava/security/MessageDigest;
    .end local p1    # "text":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 720
    .restart local p1    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 722
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 288
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 296
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 292
    return-void
.end method

.method public removeLockScreen()I
    .locals 12

    .prologue
    .line 2274
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    .line 2277
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2279
    .local v6, "token":J
    :try_start_0
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2280
    .local v3, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2281
    .local v0, "UserID":I
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 2282
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 2284
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lock_pattern_autolock"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2285
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.disabled"

    const-wide/16 v10, 0x1

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2286
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.password_type"

    const-wide/32 v10, 0x10000

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2287
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "lockscreen.password_type_alternate"

    const-wide/16 v10, 0x0

    invoke-static {v5, v8, v10, v11}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2288
    const/4 v4, 0x0

    .line 2292
    .end local v0    # "UserID":I
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .local v4, "result":I
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2294
    return v4

    .line 2289
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 2290
    .local v2, "e":Ljava/lang/Exception;
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public removePackagesFromUltraPowerSaving(Ljava/util/List;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6789
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6790
    .local v0, "callingUid":I
    const/4 v8, -0x1

    .line 6794
    .local v8, "result":I
    :try_start_0
    const-string v10, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 6795
    .local v3, "em":Ljava/lang/Class;
    const-string/jumbo v11, "supportUltraPowerSavingMode"

    const/4 v10, 0x0

    check-cast v10, [Ljava/lang/Class;

    invoke-virtual {v3, v11, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 6796
    .local v9, "supported":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_0

    .line 6797
    const/4 v10, -0x6

    .line 6835
    .end local v3    # "em":Ljava/lang/Class;
    .end local v9    # "supported":Ljava/lang/reflect/Method;
    :goto_0
    return v10

    .line 6799
    :catch_0
    move-exception v2

    .line 6800
    .local v2, "e":Ljava/lang/Exception;
    const/4 v10, -0x6

    goto :goto_0

    .line 6803
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "em":Ljava/lang/Class;
    .restart local v9    # "supported":Ljava/lang/reflect/Method;
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 6805
    :cond_1
    const/16 v10, -0x28

    goto :goto_0

    .line 6810
    :cond_2
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 6811
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6812
    .local v6, "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 6813
    const/16 v10, -0x32

    goto :goto_0

    .line 6818
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4
    const-string v10, "content://com.sec.android.emergencymode/launcheradd"

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 6819
    .local v4, "emergencyUri":Landroid/net/Uri;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 6820
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 6821
    .restart local v6    # "packageName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getDefaultActivity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6822
    .local v1, "className":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "package=? and class=?"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    aput-object v1, v12, v13

    invoke-virtual {v10, v4, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 6825
    .local v7, "resolverResult":I
    if-gtz v7, :cond_5

    .line 6826
    const/16 v10, -0x32

    goto :goto_0

    .line 6829
    .end local v1    # "className":Ljava/lang/String;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "resolverResult":I
    :cond_6
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 6830
    const/4 v8, 0x0

    .end local v4    # "emergencyUri":Landroid/net/Uri;
    .end local v5    # "it":Ljava/util/Iterator;
    :goto_1
    move v10, v8

    .line 6835
    goto :goto_0

    .line 6831
    :catch_1
    move-exception v2

    .line 6832
    .restart local v2    # "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "removePackagesFromUltraPowerSaving() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6833
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public sendDtmfTone(CI)I
    .locals 9
    .param p1, "tone"    # C
    .param p2, "duration"    # I

    .prologue
    const/16 v6, -0x32

    .line 7897
    const/4 v2, -0x6

    .line 7898
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7900
    .local v0, "callingUid":I
    const/16 v7, 0x30

    if-lt p1, v7, :cond_0

    const/16 v7, 0x39

    if-le p1, v7, :cond_2

    :cond_0
    const/16 v7, 0x2a

    if-eq p1, v7, :cond_2

    const/16 v7, 0x23

    if-eq p1, v7, :cond_2

    .line 7919
    :cond_1
    :goto_0
    return v6

    .line 7903
    :cond_2
    const/16 v7, 0x64

    if-lt p2, v7, :cond_1

    const/16 v7, 0x1388

    if-gt p2, v7, :cond_1

    .line 7908
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7909
    .local v4, "token":J
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v6, "samsung.intent.action.knoxcustom.SEND_DTMF"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7910
    .local v3, "systemIntent":Landroid/content/Intent;
    const-string/jumbo v6, "tone"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 7911
    const-string/jumbo v6, "duration"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7912
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 7913
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7914
    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :goto_1
    move v6, v2

    .line 7919
    goto :goto_0

    .line 7915
    :catch_0
    move-exception v1

    .line 7916
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendDtmfTone() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7917
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setAccessibilitySettingsItems(II)I
    .locals 11
    .param p1, "state"    # I
    .param p2, "elements"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 8862
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8863
    .local v0, "callingUid":I
    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    .line 8864
    const/16 v2, -0x2b

    .line 8903
    :goto_0
    return v2

    .line 8867
    :cond_0
    if-ltz p2, :cond_1

    const/16 v8, 0x1f

    if-le p2, v8, :cond_2

    .line 8868
    :cond_1
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAccessibilitySettingsItems() failed - Invalid Settings type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8869
    const/16 v2, -0x32

    goto :goto_0

    .line 8871
    :cond_2
    const/4 v2, -0x6

    .line 8872
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8875
    .local v4, "token":J
    and-int/lit8 v8, p2, 0x1

    if-ne v8, v3, :cond_3

    .line 8877
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "anykey_mode"

    if-ne p1, v3, :cond_8

    move v8, v3

    :goto_1
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8879
    :cond_3
    and-int/lit8 v8, p2, 0x2

    if-ne v8, v7, :cond_4

    .line 8881
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "voice_input_control_incomming_calls"

    if-ne p1, v3, :cond_9

    move v8, v3

    :goto_2
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8883
    :cond_4
    and-int/lit8 v8, p2, 0x4

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    .line 8884
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "incall_power_button_behavior"

    if-ne p1, v3, :cond_a

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8887
    :cond_5
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    .line 8888
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "notification_reminder_selectable"

    if-ne p1, v3, :cond_b

    move v7, v3

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8890
    :cond_6
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_7

    .line 8891
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "easy_interaction"

    if-ne p1, v3, :cond_c

    :goto_5
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8895
    :cond_7
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8897
    const/4 v2, 0x0

    .line 8902
    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_8
    move v8, v6

    .line 8877
    goto :goto_1

    :cond_9
    move v8, v6

    .line 8881
    goto :goto_2

    :cond_a
    move v7, v3

    .line 8884
    goto :goto_3

    :cond_b
    move v7, v6

    .line 8888
    goto :goto_4

    :cond_c
    move v3, v6

    .line 8891
    goto :goto_5

    .line 8898
    :catch_0
    move-exception v1

    .line 8899
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAccessibilitySettingsItems() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8900
    const/4 v2, -0x1

    goto :goto_6
.end method

.method public setAdbState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 1474
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1477
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1478
    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    .line 1479
    .local v2, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isUsbDebuggingEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    move v1, v3

    .line 1480
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1481
    if-eqz v1, :cond_1

    .line 1482
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setAdbState() - eSDK USB debugging disabled"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    const/4 v6, -0x7

    .line 1493
    :goto_1
    return v6

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v6

    .line 1479
    goto :goto_0

    .line 1486
    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1487
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "adb_enabled"

    if-eqz p1, :cond_3

    :goto_2
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1488
    if-eqz p1, :cond_2

    .line 1489
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "persist.sys.auto_confirm"

    const-string v8, "1"

    invoke-static {v3, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1491
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_3
    move v3, v6

    .line 1487
    goto :goto_2
.end method

.method public setAirGestureOptionState(IZ)I
    .locals 10
    .param p1, "mode"    # I
    .param p2, "state"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 7248
    const/4 v3, -0x6

    .line 7249
    .local v3, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 7252
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7253
    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 7254
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isAirCommandModeAllowed()Z

    move-result v8

    if-nez v8, :cond_0

    move v1, v6

    .line 7255
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7256
    if-eqz v1, :cond_1

    .line 7257
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setAirGestureOptionState() - eSDK Air Command not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7258
    const/4 v6, -0x7

    .line 7277
    :goto_1
    return v6

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v7

    .line 7254
    goto :goto_0

    .line 7260
    .restart local v1    # "isRestricted":Z
    :cond_1
    if-ltz p1, :cond_2

    if-le p1, v6, :cond_3

    .line 7261
    :cond_2
    const/16 v6, -0x32

    goto :goto_1

    .line 7264
    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_S_PEN_HOVERING_N_DETACHMENT"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7265
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7266
    packed-switch p1, :pswitch_data_0

    .line 7274
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7275
    const/4 v3, 0x0

    :cond_4
    move v6, v3

    .line 7277
    goto :goto_1

    .line 7268
    :pswitch_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "air_button_onoff"

    if-eqz p2, :cond_5

    :goto_3
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_5
    move v6, v7

    goto :goto_3

    .line 7271
    :pswitch_1
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "pen_hovering"

    if-eqz p2, :cond_6

    :goto_4
    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v6, v7

    goto :goto_4

    .line 7266
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAppBlockDownloadNamespaces(Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "namespaces":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v4, -0x32

    .line 5455
    if-nez p1, :cond_1

    .line 5486
    :cond_0
    :goto_0
    return v4

    .line 5459
    :cond_1
    const-string v3, ""

    .line 5461
    .local v3, "namespacesSeparated":Ljava/lang/String;
    const-string v6, "*"

    invoke-interface {p1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5462
    const-string v3, "*"

    .line 5477
    :cond_2
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5478
    .local v0, "callingUid":I
    const/4 v4, -0x6

    .line 5480
    .local v4, "result":I
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string v8, "blockDownloadNamespaces"

    invoke-virtual {v6, v0, v7, v8, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5481
    const/4 v4, 0x0

    goto :goto_0

    .line 5464
    .end local v0    # "callingUid":I
    .end local v4    # "result":I
    :cond_3
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_2

    .line 5465
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5467
    .local v5, "tmp":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5470
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5471
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_4

    .line 5472
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5464
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5482
    .end local v2    # "k":I
    .end local v5    # "tmp":Ljava/lang/String;
    .restart local v0    # "callingUid":I
    .restart local v4    # "result":I
    :catch_0
    move-exception v1

    .line 5483
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAppBlockDownloadNamespaces () failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5484
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setAppBlockDownloadState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 5417
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5418
    .local v0, "callingUid":I
    const/4 v1, -0x6

    .line 5420
    .local v1, "downloadStateResult":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "blockDownloadState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5421
    const/4 v1, 0x0

    .line 5426
    :goto_0
    return v1

    .line 5422
    :catch_0
    move-exception v2

    .line 5423
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAppBlockDownloadState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5424
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setAudioVolume(II)I
    .locals 10
    .param p1, "stream"    # I
    .param p2, "volume"    # I

    .prologue
    .line 2310
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .line 2311
    .local v2, "callingUid":I
    const/4 v5, -0x6

    .line 2313
    .local v5, "result":I
    if-ltz p1, :cond_4

    .line 2314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2315
    .local v6, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 2316
    .local v1, "am":Landroid/media/AudioManager;
    if-eqz v1, :cond_2

    .line 2318
    const/4 v8, 0x5

    if-gt p1, v8, :cond_3

    .line 2319
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v4

    .line 2320
    .local v4, "maxVolume":I
    move v0, p2

    .line 2321
    .local v0, "actualVolume":I
    if-le v0, v4, :cond_0

    .line 2322
    move v0, v4

    .line 2324
    :cond_0
    if-gez v0, :cond_1

    .line 2325
    const/4 v0, 0x0

    .line 2327
    :cond_1
    const/4 v8, 0x0

    invoke-virtual {v1, p1, v0, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2328
    const/4 v5, 0x0

    .line 2336
    .end local v0    # "actualVolume":I
    .end local v4    # "maxVolume":I
    :cond_2
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2341
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v6    # "token":J
    :goto_1
    return v5

    .line 2330
    .restart local v1    # "am":Landroid/media/AudioManager;
    .restart local v6    # "token":J
    :cond_3
    const/16 v5, -0x26

    goto :goto_0

    .line 2332
    :catch_0
    move-exception v3

    .line 2333
    .local v3, "e":Ljava/lang/Exception;
    const/16 v5, -0x26

    goto :goto_0

    .line 2338
    .end local v1    # "am":Landroid/media/AudioManager;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v6    # "token":J
    :cond_4
    const/16 v5, -0x26

    goto :goto_1
.end method

.method public setAutoRotationState(ZI)I
    .locals 9
    .param p1, "status"    # Z
    .param p2, "rotation"    # I

    .prologue
    .line 1775
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 1776
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1777
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1780
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    .line 1781
    .local v3, "wm":Landroid/view/IWindowManager;
    if-eqz p1, :cond_0

    .line 1782
    invoke-interface {v3}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1783
    const/4 v2, 0x0

    .line 1797
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1798
    return v2

    .line 1785
    .restart local v3    # "wm":Landroid/view/IWindowManager;
    :cond_0
    const/4 v6, 0x3

    if-gt p2, v6, :cond_1

    const/4 v6, -0x1

    if-ge p2, v6, :cond_2

    .line 1786
    :cond_1
    :try_start_1
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setAutoRotationState() failed - Invalid Rotation"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    const/16 v2, -0x27

    goto :goto_0

    .line 1789
    :cond_2
    invoke-interface {v3, p2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1790
    const/4 v2, 0x0

    goto :goto_0

    .line 1793
    .end local v3    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v1

    .line 1794
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setAutoRotationState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setBackupRestoreState(IZ)I
    .locals 13
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 2961
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 2963
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2964
    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 2965
    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4, v9}, Landroid/app/enterprise/RestrictionPolicy;->isBackupAllowed(Z)Z

    move-result v10

    if-nez v10, :cond_1

    move v3, v8

    .line 2966
    .local v3, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2967
    if-eqz v3, :cond_2

    .line 2968
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setBackupRestoreState() - eSDK backup is disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2969
    const/4 v5, -0x7

    .line 3000
    :cond_0
    :goto_1
    return v5

    .end local v3    # "isRestricted":Z
    :cond_1
    move v3, v9

    .line 2965
    goto :goto_0

    .line 2971
    .restart local v3    # "isRestricted":Z
    :cond_2
    if-lt p1, v8, :cond_3

    const/4 v10, 0x3

    if-le p1, v10, :cond_4

    .line 2972
    :cond_3
    const/16 v5, -0x32

    goto :goto_1

    .line 2974
    :cond_4
    const/4 v5, 0x0

    .line 2975
    .local v5, "ret":I
    and-int/lit8 v10, p1, 0x1

    if-eqz v10, :cond_5

    .line 2976
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2977
    const-string v10, "backup"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 2978
    .local v0, "backupManager":Landroid/app/backup/IBackupManager;
    if-nez v0, :cond_7

    .line 2979
    const-string v10, "KnoxCustomManagerService"

    const-string v11, "Failed to get BackupManager"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    const/4 v5, -0x1

    .line 2989
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2990
    if-nez v5, :cond_0

    .line 2994
    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_5
    and-int/lit8 v10, p1, 0x2

    if-eqz v10, :cond_6

    .line 2995
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2996
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "backup_auto_restore"

    if-eqz p2, :cond_8

    :goto_3
    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2998
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_6
    move v5, v9

    .line 3000
    goto :goto_1

    .line 2983
    .restart local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_7
    :try_start_0
    invoke-interface {v0, p2}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2984
    :catch_0
    move-exception v2

    .line 2985
    .local v2, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setBackupEnabled exception:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    const/4 v5, -0x1

    goto :goto_2

    .end local v0    # "backupManager":Landroid/app/backup/IBackupManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8
    move v8, v9

    .line 2996
    goto :goto_3
.end method

.method public setBatteryLevelColourItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)I
    .locals 14
    .param p1, "batteryIconItem"    # Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;

    .prologue
    .line 5221
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .line 5222
    .local v2, "callingUid":I
    const/4 v9, -0x6

    .line 5223
    .local v9, "result":I
    const/4 v3, 0x0

    .line 5225
    .local v3, "dbBytes":[B
    if-eqz p1, :cond_6

    .line 5226
    :try_start_0
    invoke-virtual {p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->getIcon()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_0

    .line 5227
    const/16 v10, -0x32

    .line 5259
    :goto_0
    return v10

    .line 5229
    :cond_0
    invoke-virtual {p1}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;->getAttributeColourArray()[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;

    move-result-object v1

    .line 5230
    .local v1, "batteryColoursArray":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    if-eqz v1, :cond_6

    array-length v10, v1

    if-lez v10, :cond_6

    .line 5231
    array-length v10, v1

    const/4 v11, 0x5

    if-le v10, v11, :cond_1

    .line 5232
    const/16 v10, -0x33

    goto :goto_0

    .line 5234
    :cond_1
    const/4 v8, -0x1

    .line 5235
    .local v8, "previousBatteryLevel":I
    move-object v0, v1

    .local v0, "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_5

    aget-object v6, v0, v5

    .line 5236
    .local v6, "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    if-nez v6, :cond_2

    .line 5237
    const/4 v10, -0x1

    goto :goto_0

    .line 5239
    :cond_2
    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    if-ltz v10, :cond_3

    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    const/16 v11, 0x64

    if-gt v10, v11, :cond_3

    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v10

    if-gt v10, v8, :cond_4

    .line 5241
    :cond_3
    const/16 v10, -0x32

    goto :goto_0

    .line 5243
    :cond_4
    invoke-virtual {v6}, Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v8

    .line 5235
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 5245
    .end local v6    # "item":Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->serializeKnoxCustomStatusbarIconItem(Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem;)[B

    move-result-object v3

    .line 5248
    .end local v0    # "arr$":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .end local v1    # "batteryColoursArray":[Landroid/app/enterprise/knoxcustom/KnoxCustomStatusbarIconItem$AttributeColour;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .end local v8    # "previousBatteryLevel":I
    :cond_6
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v11, 0x3e8

    const-string v12, "KNOX_CUSTOM"

    const-string v13, "batteryLevelColourItems"

    invoke-virtual {v10, v11, v12, v13, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->updateBlob(ILjava/lang/String;Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_7

    .line 5252
    const/4 v10, -0x1

    goto :goto_0

    .line 5254
    :cond_7
    const/4 v9, 0x0

    :goto_2
    move v10, v9

    .line 5259
    goto :goto_0

    .line 5255
    :catch_0
    move-exception v4

    .line 5256
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5257
    const/4 v9, -0x1

    goto :goto_2
.end method

.method public setBluetoothState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1536
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 1539
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1540
    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1541
    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v2}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    .line 1542
    .local v2, "isRestricted":Z
    :cond_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1543
    if-eqz v2, :cond_1

    .line 1544
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setBluetoothState() - eSDK bluetooth disabled"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v4, -0x7

    .line 1562
    :goto_0
    return v4

    .line 1550
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1551
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    .line 1552
    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1553
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 1557
    :cond_2
    :goto_1
    const/4 v4, 0x0

    .local v4, "result":I
    goto :goto_0

    .line 1554
    .end local v4    # "result":I
    :cond_3
    if-nez p1, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1555
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    goto :goto_1

    .line 1559
    :cond_4
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public setBluetoothVisibilityTimeout(I)I
    .locals 9
    .param p1, "timeout"    # I

    .prologue
    const/16 v6, -0x2d

    .line 2785
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2786
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 2787
    .local v2, "result":I
    const v7, 0x20c49b

    if-lt p1, v7, :cond_1

    .line 2804
    :cond_0
    :goto_0
    return v6

    .line 2790
    :cond_1
    if-ltz p1, :cond_0

    .line 2793
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2795
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "bluetooth_discoverable_timeout"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2796
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2797
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2798
    const/4 v2, 0x0

    .line 2803
    .end local v3    # "systemIntent":Landroid/content/Intent;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v2

    .line 2804
    goto :goto_0

    .line 2799
    :catch_0
    move-exception v1

    .line 2800
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBluetoothVisibilityTimeout() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2801
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setBootAnimation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 21
    .param p1, "animationFilePath"    # Ljava/lang/String;
    .param p2, "loopFilePath"    # Ljava/lang/String;
    .param p3, "soundFilePath"    # Ljava/lang/String;
    .param p4, "delay"    # I

    .prologue
    .line 7410
    const/4 v14, 0x0

    .line 7411
    .local v14, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v6

    .line 7412
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 7415
    .local v18, "token":J
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_3

    :cond_2
    const/4 v12, 0x1

    .line 7421
    .local v12, "isDelete":Z
    :goto_0
    if-nez v12, :cond_6

    .line 7422
    invoke-direct/range {p0 .. p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 7423
    if-eqz v14, :cond_4

    move/from16 v17, v14

    .line 7519
    :goto_1
    return v17

    .line 7415
    .end local v12    # "isDelete":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_0

    .line 7428
    .restart local v12    # "isDelete":Z
    :cond_4
    const v17, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    if-gez p4, :cond_6

    .line 7429
    :cond_5
    const/16 v17, -0x32

    goto :goto_1

    .line 7433
    :cond_6
    new-instance v9, Ljava/io/File;

    const-string v17, "/data/b2b"

    move-object/from16 v0, v17

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7434
    .local v9, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .line 7435
    .local v7, "created":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_7

    .line 7436
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 7437
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7440
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_8

    if-eqz v7, :cond_14

    .line 7441
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7443
    new-instance v11, Ljava/io/File;

    const-string v17, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7444
    .local v11, "fileInfo":Ljava/io/File;
    new-instance v16, Ljava/io/File;

    const-string v17, "/data/b2b/SoundFileInfo.txt"

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7445
    .local v16, "soundInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v17, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7448
    .local v8, "delayInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 7449
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7451
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 7452
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7454
    :cond_a
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 7455
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7458
    :cond_b
    if-eqz v12, :cond_c

    .line 7460
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7461
    const/16 v17, 0x0

    goto :goto_1

    .line 7464
    :cond_c
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 7465
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z

    .line 7466
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 7468
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7469
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7470
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7478
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7479
    .local v2, "animationFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 7480
    .local v13, "loopFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 7481
    .local v15, "soundFileName":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7482
    .local v3, "bootAnimTargetPath":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 7483
    .local v4, "bootLoopTargetpath":Ljava/lang/String;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/b2b/"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7485
    .local v5, "bootSoundTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_d

    .line 7486
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7473
    .end local v2    # "animationFileName":Ljava/lang/String;
    .end local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .end local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .end local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .end local v13    # "loopFileName":Ljava/lang/String;
    .end local v15    # "soundFileName":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 7475
    .local v10, "e":Ljava/io/IOException;
    const/16 v14, -0x32

    goto :goto_2

    .line 7488
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v2    # "animationFileName":Ljava/lang/String;
    .restart local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .restart local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .restart local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .restart local v13    # "loopFileName":Ljava/lang/String;
    .restart local v15    # "soundFileName":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_e

    .line 7489
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7491
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_f

    .line 7492
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7494
    :cond_f
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v8, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_10

    .line 7495
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7497
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_11

    .line 7498
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7500
    :cond_11
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_12

    .line 7501
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7503
    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_13

    .line 7504
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 7507
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7508
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7509
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7510
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7512
    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 7514
    const/4 v14, -0x1

    move/from16 v17, v14

    .line 7515
    goto/16 :goto_1

    .line 7518
    .end local v2    # "animationFileName":Ljava/lang/String;
    .end local v3    # "bootAnimTargetPath":Ljava/lang/String;
    .end local v4    # "bootLoopTargetpath":Ljava/lang/String;
    .end local v5    # "bootSoundTargetPath":Ljava/lang/String;
    .end local v8    # "delayInfo":Ljava/io/File;
    .end local v11    # "fileInfo":Ljava/io/File;
    .end local v13    # "loopFileName":Ljava/lang/String;
    .end local v15    # "soundFileName":Ljava/lang/String;
    .end local v16    # "soundInfo":Ljava/io/File;
    :cond_14
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v17, v14

    .line 7519
    goto/16 :goto_1
.end method

.method public setBootingAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)I
    .locals 21
    .param p1, "animFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "loopFD"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "soundFD"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "delay"    # I

    .prologue
    .line 7523
    const/4 v14, 0x0

    .line 7524
    .local v14, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v6

    .line 7525
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 7527
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 7529
    const/16 v18, -0x6

    .line 7660
    :goto_0
    return v18

    .line 7532
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const v18, 0x7fffffff

    move/from16 v0, p4

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    if-gez p4, :cond_2

    .line 7533
    :cond_1
    const-string v18, "KnoxCustomManagerService"

    const-string v19, "FileDescriptor is null or Delay is invalid"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7534
    const/16 v18, -0x32

    goto :goto_0

    .line 7538
    :cond_2
    new-instance v9, Ljava/io/File;

    const-string v18, "/data/b2b"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7539
    .local v9, "dir":Ljava/io/File;
    const/4 v7, 0x0

    .line 7540
    .local v7, "created":Z
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_4

    .line 7541
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 7544
    if-nez v7, :cond_3

    .line 7545
    const-string v18, "KnoxCustomManagerService"

    const-string v19, "/data/b2b directory creating fail"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7546
    const/16 v18, -0x1

    goto :goto_0

    .line 7549
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7552
    :cond_4
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_5

    if-eqz v7, :cond_10

    .line 7553
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7555
    new-instance v13, Ljava/io/File;

    const-string v18, "/data/b2b/BootFileInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7556
    .local v13, "fileInfo":Ljava/io/File;
    new-instance v15, Ljava/io/File;

    const-string v18, "/data/b2b/SoundFileInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7557
    .local v15, "soundInfo":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    const-string v18, "/data/b2b/DelayInfo.txt"

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7561
    .local v8, "delayInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 7562
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7564
    :cond_6
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 7565
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7567
    :cond_7
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 7568
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7571
    :cond_8
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 7572
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7574
    invoke-virtual {v15}, Ljava/io/File;->createNewFile()Z

    .line 7575
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7577
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    .line 7578
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7586
    :goto_1
    const-string v2, "/data/b2b/bootanimation.qmg"

    .line 7587
    .local v2, "AnimTargetPath":Ljava/lang/String;
    const-string v3, "/data/b2b/bootloop.qmg"

    .line 7588
    .local v3, "LoopTargetpath":Ljava/lang/String;
    const-string v4, "/data/b2b/bootsound.ogg"

    .line 7590
    .local v4, "SoundTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_9

    .line 7591
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7581
    .end local v2    # "AnimTargetPath":Ljava/lang/String;
    .end local v3    # "LoopTargetpath":Ljava/lang/String;
    .end local v4    # "SoundTargetPath":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 7582
    .local v11, "e":Ljava/io/IOException;
    const-string v18, "KnoxCustomManagerService"

    invoke-virtual {v11}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7583
    const/4 v14, -0x1

    goto :goto_1

    .line 7593
    .end local v11    # "e":Ljava/io/IOException;
    .restart local v2    # "AnimTargetPath":Ljava/lang/String;
    .restart local v3    # "LoopTargetpath":Ljava/lang/String;
    .restart local v4    # "SoundTargetPath":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 7594
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7596
    :cond_a
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 7597
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7599
    :cond_b
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v8, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 7600
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7603
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 7604
    const-string v18, "KnoxCustomManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "AnimTargetPath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7605
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7607
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 7608
    const-string v18, "KnoxCustomManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "LoopTargetpath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7609
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7611
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_f

    .line 7612
    const-string v18, "KnoxCustomManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "SoundTargetPath = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7613
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7616
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7617
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7618
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7619
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7622
    .end local v2    # "AnimTargetPath":Ljava/lang/String;
    .end local v3    # "LoopTargetpath":Ljava/lang/String;
    .end local v4    # "SoundTargetPath":Ljava/lang/String;
    .end local v8    # "delayInfo":Ljava/io/File;
    .end local v13    # "fileInfo":Ljava/io/File;
    .end local v15    # "soundInfo":Ljava/io/File;
    :cond_10
    if-nez v14, :cond_14

    .line 7623
    new-instance v5, Ljava/io/File;

    const-string v18, "/data/b2b/bootanimation.qmg"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7624
    .local v5, "animationFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 7626
    new-instance v10, Ljava/io/File;

    const-string v18, "/efs/knoxcustom"

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7627
    .local v10, "dirEFS":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_11

    .line 7628
    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 7631
    :cond_11
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 7632
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7633
    new-instance v12, Ljava/io/File;

    const-string v18, "/efs/knoxcustom/KnoxCustomBootEnable.txt"

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7636
    .local v12, "efsFileInfo":Ljava/io/File;
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 7637
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 7640
    :cond_12
    invoke-virtual {v12}, Ljava/io/File;->createNewFile()Z

    .line 7641
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 7648
    :goto_2
    const-string/jumbo v18, "true"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v12, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_13

    .line 7649
    const/16 v18, -0x1

    goto/16 :goto_0

    .line 7643
    :catch_1
    move-exception v11

    .line 7644
    .local v11, "e":Ljava/lang/Exception;
    const-string v18, "KnoxCustomManagerService"

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7645
    const/4 v14, -0x1

    goto :goto_2

    .line 7652
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7653
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7659
    .end local v5    # "animationFile":Ljava/io/File;
    .end local v10    # "dirEFS":Ljava/io/File;
    .end local v12    # "efsFileInfo":Ljava/io/File;
    :cond_14
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v14

    .line 7660
    goto/16 :goto_0
.end method

.method public setBrowserHomepage(Ljava/lang/String;)I
    .locals 9
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 5769
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5775
    .local v0, "callingUid":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 5776
    :cond_0
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setBrowserHomepage() failed - blank URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5777
    const/16 v2, -0x28

    .line 5796
    :goto_0
    return v2

    .line 5779
    :cond_1
    sget-object v6, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-nez v6, :cond_2

    .line 5780
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setBrowserHomepage() failed - invalid URL"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5781
    const/16 v2, -0x32

    goto :goto_0

    .line 5784
    :cond_2
    const/4 v2, -0x6

    .line 5786
    .local v2, "result":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5787
    .local v4, "token":J
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5788
    .local v3, "systemIntent":Landroid/content/Intent;
    const-string/jumbo v6, "homepage"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5789
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 5790
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5791
    const/4 v2, 0x0

    goto :goto_0

    .line 5792
    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v4    # "token":J
    :catch_0
    move-exception v1

    .line 5793
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBrowserHomepage() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5794
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCallScreenDisabledItems(ZI)I
    .locals 11
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 3356
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3359
    .local v0, "callingUid":I
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "android.hardware.telephony"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3360
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3361
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3362
    const/4 v5, -0x6

    .line 3394
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v5

    .line 3367
    :cond_0
    if-ltz p2, :cond_1

    const/16 v8, 0xff

    if-le p2, v8, :cond_2

    .line 3368
    :cond_1
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCallScreenDisabledItems() failed - Invalid Settings type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    const/16 v5, -0x32

    goto :goto_0

    .line 3372
    :cond_2
    const/4 v5, -0x6

    .line 3373
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3377
    .local v6, "token":J
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3378
    .local v2, "currentElements":I
    if-eqz p1, :cond_4

    .line 3380
    or-int v4, v2, p2

    .line 3385
    .local v4, "newElements":I
    :goto_1
    if-eq v4, v2, :cond_3

    .line 3386
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "callScreenItems"

    invoke-virtual {v8, v0, v9, v10, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3388
    :cond_3
    const/4 v5, 0x0

    .line 3393
    .end local v2    # "currentElements":I
    .end local v4    # "newElements":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3383
    .restart local v2    # "currentElements":I
    :cond_4
    xor-int/lit8 v8, p2, -0x1

    and-int v4, v2, v8

    .restart local v4    # "newElements":I
    goto :goto_1

    .line 3389
    .end local v2    # "currentElements":I
    .end local v4    # "newElements":I
    :catch_0
    move-exception v3

    .line 3390
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setCallScreenDisabledItems() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public setChargerConnectionSoundEnabledState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 5809
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5810
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 5812
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "chargerConnectionSoundEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5813
    const/4 v2, 0x0

    .line 5818
    :goto_0
    return v2

    .line 5814
    :catch_0
    move-exception v1

    .line 5815
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setChargerConnectionSoundEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5816
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setChargingLEDState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 3940
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 3941
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3943
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3945
    .local v4, "token":J
    if-eqz p1, :cond_0

    .line 3946
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x1

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3950
    :goto_0
    const/4 v2, 0x0

    .line 3955
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3956
    return v2

    .line 3948
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "led_indicator_charing"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3951
    :catch_0
    move-exception v1

    .line 3952
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setChargingLEDState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3953
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setCheckCoverPopupState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 3150
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3151
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3153
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string v5, "checkCoverPopupState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3154
    const/4 v2, 0x0

    .line 3159
    :goto_0
    return v2

    .line 3155
    :catch_0
    move-exception v1

    .line 3156
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setCpuPowerSavingState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2128
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2131
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2132
    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "psm_cpu_clock"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2135
    if-eqz p1, :cond_2

    .line 2137
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "powersaving_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2151
    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2153
    return v6

    :cond_1
    move v4, v6

    .line 2132
    goto :goto_0

    .line 2142
    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_display"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2143
    .local v1, "screenSetting":I
    if-nez v1, :cond_0

    .line 2145
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "powersaving_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public setCustomOperatorName(Ljava/lang/String;)I
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3895
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3896
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 3897
    .local v3, "result":I
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x5a

    if-le v6, v7, :cond_1

    .line 3898
    :cond_0
    const/16 v6, -0x32

    .line 3911
    :goto_0
    return v6

    .line 3900
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3902
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "customOperatorName"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3903
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.action.knoxcustom.OPERATOR_NAME"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3904
    .local v2, "i":Landroid/content/Intent;
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3905
    const/4 v3, 0x0

    .line 3910
    .end local v2    # "i":Landroid/content/Intent;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v6, v3

    .line 3911
    goto :goto_0

    .line 3906
    :catch_0
    move-exception v1

    .line 3907
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCustomOperatorName() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setDeveloperOptionsHidden()I
    .locals 10

    .prologue
    .line 2602
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 2604
    .local v1, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2608
    .local v6, "token":J
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/data/com.android.settings/shared_prefs/development.xml"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2609
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2611
    :cond_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2612
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v5, "com.android.settings"

    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2613
    const/4 v4, 0x0

    .line 2624
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v3    # "f":Ljava/io/File;
    .local v4, "result":I
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2625
    return v4

    .line 2617
    .end local v4    # "result":I
    .restart local v3    # "f":Ljava/io/File;
    :cond_1
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0

    .line 2620
    .end local v3    # "f":Ljava/io/File;
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 2621
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDeveloperOptionsHidden() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_0
.end method

.method public setDeviceSpeakerEnabledState(Z)I
    .locals 10
    .param p1, "state"    # Z

    .prologue
    .line 5723
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    .line 5724
    .local v1, "callingUid":I
    const/4 v3, -0x1

    .line 5725
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5727
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 5728
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz p1, :cond_0

    .line 5729
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V

    .line 5733
    :goto_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v7, 0x3e8

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "deviceSpeakerEnabledState"

    invoke-virtual {v6, v7, v8, v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5734
    const/4 v3, 0x0

    .line 5738
    .end local v0    # "am":Landroid/media/AudioManager;
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5739
    return v3

    .line 5731
    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setForceSpeakerOn(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 5735
    .end local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .line 5736
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDeviceSpeakerEnabledState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setDisplayMirroringState(Z)I
    .locals 10
    .param p1, "state"    # Z

    .prologue
    .line 7179
    const/4 v6, -0x6

    .line 7180
    .local v6, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7185
    .local v0, "callingUid":I
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 7186
    .local v1, "dm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 7187
    .local v2, "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_1

    .line 7188
    const-string/jumbo v7, "scanWifiDisplays"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 7189
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7190
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7191
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 7192
    const-string/jumbo v7, "show_dialog_once"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7193
    const-string/jumbo v7, "tag_write_if_success"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7194
    const/high16 v7, 0x14800000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 7196
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7204
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 7209
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_1
    return v6

    .line 7199
    .restart local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .restart local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const-string/jumbo v7, "disconnectWifiDisplay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 7200
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7201
    const-string/jumbo v7, "disableWifiDisplay"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 7202
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7205
    .end local v1    # "dm":Landroid/hardware/display/DisplayManager;
    .end local v2    # "dmClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 7206
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setDisplayMirroringState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7207
    const/4 v6, -0x1

    goto :goto_1
.end method

.method public setEthernetConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 29
    .param p1, "connectionType"    # I
    .param p2, "staticIpAddress"    # Ljava/lang/String;
    .param p3, "staticNetmask"    # Ljava/lang/String;
    .param p4, "staticDnsAddress"    # Ljava/lang/String;
    .param p5, "staticDefaultRouter"    # Ljava/lang/String;

    .prologue
    .line 5623
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v5

    .line 5624
    .local v5, "callingUid":I
    const/16 v21, -0x1

    .line 5626
    .local v21, "result":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string/jumbo v25, "ethernet"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 5627
    .local v13, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v13, :cond_4

    .line 5628
    const-string v24, "android.net.ethernet.EthernetDevInfo"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 5629
    .local v4, "c":Ljava/lang/Class;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    .line 5630
    .local v8, "constructor":Ljava/lang/reflect/Constructor;
    const/16 v24, 0x0

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 5631
    .local v12, "ethernetDevInfoObject":Ljava/lang/Object;
    const-string/jumbo v14, "eth0"

    .line 5632
    .local v14, "interfaceName":Ljava/lang/String;
    const-string/jumbo v7, "dhcp"

    .line 5633
    .local v7, "connType":Ljava/lang/String;
    const/4 v15, 0x0

    .line 5634
    .local v15, "ipAddr":Ljava/lang/String;
    const/16 v18, 0x0

    .line 5635
    .local v18, "netMask":Ljava/lang/String;
    const/4 v10, 0x0

    .line 5636
    .local v10, "dnsAddr":Ljava/lang/String;
    const/4 v9, 0x0

    .line 5638
    .local v9, "dfltRouter":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 5639
    const/16 v21, 0x0

    .line 5654
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetConnectionType"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, p1

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetInterfaceName"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v14}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticIpAddr"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticNetMask"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move-object/from16 v3, v18

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticDnsAddr"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v24, v0

    const-string v25, "KNOX_CUSTOM"

    const-string/jumbo v26, "ethernetStaticDfltRouter"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v5, v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 5661
    .local v22, "token":J
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setIfName"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5662
    .local v17, "m":Ljava/lang/reflect/Method;
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v14, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5663
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setConnectMode"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5664
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v7, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5665
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setIpAddress"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5666
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v15, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5667
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setNetMask"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5668
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v18, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5669
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setDnsAddr"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5670
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v10, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5671
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string/jumbo v25, "setRouteAddr"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const-class v28, Ljava/lang/String;

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5672
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v9, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v12, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5673
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    const-string v25, "UpdateEthDevInfo"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aput-object v4, v26, v27

    invoke-virtual/range {v24 .. v26}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v17

    .line 5674
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual {v4, v12}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5675
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v4    # "c":Ljava/lang/Class;
    .end local v7    # "connType":Ljava/lang/String;
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v9    # "dfltRouter":Ljava/lang/String;
    .end local v10    # "dnsAddr":Ljava/lang/String;
    .end local v12    # "ethernetDevInfoObject":Ljava/lang/Object;
    .end local v13    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v14    # "interfaceName":Ljava/lang/String;
    .end local v15    # "ipAddr":Ljava/lang/String;
    .end local v17    # "m":Ljava/lang/reflect/Method;
    .end local v18    # "netMask":Ljava/lang/String;
    .end local v22    # "token":J
    :goto_1
    move/from16 v24, v21

    .line 5695
    :goto_2
    return v24

    .line 5640
    .restart local v4    # "c":Ljava/lang/Class;
    .restart local v7    # "connType":Ljava/lang/String;
    .restart local v8    # "constructor":Ljava/lang/reflect/Constructor;
    .restart local v9    # "dfltRouter":Ljava/lang/String;
    .restart local v10    # "dnsAddr":Ljava/lang/String;
    .restart local v12    # "ethernetDevInfoObject":Ljava/lang/Object;
    .restart local v13    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v14    # "interfaceName":Ljava/lang/String;
    .restart local v15    # "ipAddr":Ljava/lang/String;
    .restart local v18    # "netMask":Ljava/lang/String;
    :cond_0
    const/16 v24, 0x1

    move/from16 v0, p1

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 5641
    if-eqz p2, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkIpAddressString(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_1

    if-nez p5, :cond_2

    .line 5643
    :cond_1
    const/16 v24, -0x32

    goto :goto_2

    .line 5645
    :cond_2
    const-string/jumbo v7, "manual"
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 5646
    move-object/from16 v15, p2

    .line 5647
    move-object/from16 v18, p3

    .line 5648
    move-object/from16 v10, p4

    .line 5649
    move-object/from16 v9, p5

    .line 5650
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 5652
    :cond_3
    const/16 v24, -0x2b

    goto :goto_2

    .line 5677
    .end local v4    # "c":Ljava/lang/Class;
    .end local v7    # "connType":Ljava/lang/String;
    .end local v8    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v9    # "dfltRouter":Ljava/lang/String;
    .end local v10    # "dnsAddr":Ljava/lang/String;
    .end local v12    # "ethernetDevInfoObject":Ljava/lang/Object;
    .end local v14    # "interfaceName":Ljava/lang/String;
    .end local v15    # "ipAddr":Ljava/lang/String;
    .end local v18    # "netMask":Ljava/lang/String;
    :cond_4
    const/16 v21, -0x6

    goto :goto_1

    .line 5679
    .end local v13    # "ethernetManagerObject":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 5680
    .local v6, "cnfe":Ljava/lang/ClassNotFoundException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5681
    const/16 v21, -0x6

    .line 5694
    goto :goto_1

    .line 5682
    .end local v6    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v19

    .line 5683
    .local v19, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5684
    const/16 v21, -0x6

    .line 5694
    goto :goto_1

    .line 5685
    .end local v19    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v16

    .line 5686
    .local v16, "ite":Ljava/lang/reflect/InvocationTargetException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5687
    const/16 v21, -0x6

    .line 5694
    goto/16 :goto_1

    .line 5688
    .end local v16    # "ite":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v20

    .line 5689
    .local v20, "re":Ljava/lang/RuntimeException;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() Not Supported "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5690
    const/16 v21, -0x6

    .line 5694
    goto/16 :goto_1

    .line 5691
    .end local v20    # "re":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v11

    .line 5692
    .local v11, "e":Ljava/lang/Exception;
    const-string v24, "KnoxCustomManagerService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "setEthernetConfiguration() failed - persistence problem "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5693
    const/16 v21, -0x1

    goto/16 :goto_1
.end method

.method public setEthernetState(Z)I
    .locals 18
    .param p1, "state"    # Z

    .prologue
    .line 5528
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v2

    .line 5529
    .local v2, "callingUid":I
    const/4 v10, -0x1

    .line 5531
    .local v10, "result":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "ethernet"

    invoke-virtual {v11, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 5532
    .local v4, "ethernetManagerObject":Ljava/lang/Object;
    if-eqz v4, :cond_3

    .line 5533
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v14, "getEthState"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v11, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 5534
    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 5535
    .local v5, "ethernetState":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "ethernetState"

    move/from16 v0, p1

    invoke-virtual {v11, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 5536
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 5537
    .local v12, "token":J
    if-eqz p1, :cond_1

    .line 5538
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v14, 0x2

    if-ne v11, v14, :cond_0

    .line 5539
    const/4 v10, 0x0

    .line 5552
    :goto_0
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5553
    const/4 v10, 0x0

    .line 5569
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :goto_1
    return v10

    .line 5541
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v5    # "ethernetState":Ljava/lang/Integer;
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    .restart local v12    # "token":J
    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v14, "setEthernetState"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 5542
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 5557
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :catch_0
    move-exception v8

    .line 5558
    .local v8, "nsme":Ljava/lang/NoSuchMethodException;
    const-string v11, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setEthernetState() Not Supported "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5559
    const/4 v10, -0x6

    .line 5568
    goto :goto_1

    .line 5545
    .end local v8    # "nsme":Ljava/lang/NoSuchMethodException;
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .restart local v5    # "ethernetState":Ljava/lang/Integer;
    .restart local v7    # "m":Ljava/lang/reflect/Method;
    .restart local v12    # "token":J
    :cond_1
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_2

    .line 5546
    const/4 v10, 0x0

    goto :goto_0

    .line 5548
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string/jumbo v14, "setEthernetState"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    sget-object v17, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v17, v15, v16

    invoke-virtual {v11, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 5549
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v14

    invoke-virtual {v7, v4, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 5560
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    .end local v5    # "ethernetState":Ljava/lang/Integer;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v12    # "token":J
    :catch_1
    move-exception v6

    .line 5561
    .local v6, "ite":Ljava/lang/reflect/InvocationTargetException;
    const-string v11, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setEthernetState() Not Supported "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5562
    const/4 v10, -0x6

    .line 5568
    goto/16 :goto_1

    .line 5555
    .end local v6    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .restart local v4    # "ethernetManagerObject":Ljava/lang/Object;
    :cond_3
    const/4 v10, -0x6

    goto/16 :goto_1

    .line 5563
    .end local v4    # "ethernetManagerObject":Ljava/lang/Object;
    :catch_2
    move-exception v9

    .line 5564
    .local v9, "re":Ljava/lang/RuntimeException;
    const-string v11, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setEthernetState() Not Supported "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    const/4 v10, -0x6

    .line 5568
    goto/16 :goto_1

    .line 5566
    .end local v9    # "re":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v3

    .line 5567
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setEthernetState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setExcludedMessagesNotifications(ZLjava/util/List;)I
    .locals 14
    .param p1, "excluded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3600
    .local p2, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3601
    .local v0, "callingUid":I
    const/4 v6, -0x1

    .line 3604
    .local v6, "result":I
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3606
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 3607
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 3608
    const/4 v10, -0x6

    .line 3656
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v10

    .line 3612
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 3614
    :cond_1
    const/16 v10, -0x32

    goto :goto_0

    .line 3617
    :cond_2
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getExcludedMessagesNotifications()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 3618
    .local v2, "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_3

    .line 3619
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3622
    .restart local v2    # "currentExcluded":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "toExcludeIterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 3623
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 3625
    .local v8, "toExclude":Ljava/lang/String;
    const-string v5, "[0-9+]+"

    .line 3626
    .local v5, "regex":Ljava/lang/String;
    if-eqz v8, :cond_5

    invoke-virtual {v8, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 3627
    :cond_5
    const/16 v10, -0x32

    goto :goto_0

    .line 3629
    :cond_6
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    if-eqz p1, :cond_7

    .line 3630
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3633
    :cond_7
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-nez p1, :cond_4

    .line 3634
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3639
    .end local v5    # "regex":Ljava/lang/String;
    .end local v8    # "toExclude":Ljava/lang/String;
    :cond_8
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/16 v11, 0xc8

    if-le v10, v11, :cond_9

    .line 3641
    const/16 v10, -0x32

    goto :goto_0

    .line 3644
    :cond_9
    const-string v7, ""

    .line 3645
    .local v7, "toDB":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 3646
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 3650
    :cond_a
    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v11, 0x3e8

    const-string v12, "KNOX_CUSTOM"

    const-string/jumbo v13, "excludedSMSNumbers"

    invoke-virtual {v10, v11, v12, v13, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3651
    const/4 v6, 0x0

    :goto_3
    move v10, v6

    .line 3656
    goto/16 :goto_0

    .line 3652
    :catch_0
    move-exception v3

    .line 3653
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setExcludedMessagesNotifications() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    const/4 v6, -0x1

    goto :goto_3
.end method

.method public setExitUI(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "exitUIPackage"    # Ljava/lang/String;
    .param p2, "exitUIClass"    # Ljava/lang/String;

    .prologue
    .line 979
    const/4 v2, -0x6

    .line 980
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 982
    .local v0, "callingUid":I
    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 983
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 984
    :cond_1
    const/16 v3, -0x21

    .line 995
    :goto_0
    return v3

    .line 988
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiPackage"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 989
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedExitUiClass"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 995
    goto :goto_0

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setExitUI() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setExtendedCallInfoState(Z)I
    .locals 7
    .param p1, "status"    # Z

    .prologue
    .line 2638
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2639
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2640
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2641
    const/4 v3, -0x6

    .line 2653
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 2644
    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2645
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 2647
    .local v3, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "extendedCallInfoState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2648
    const/4 v3, 0x0

    goto :goto_0

    .line 2649
    :catch_0
    move-exception v2

    .line 2650
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setExtendedCallInfoState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2651
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setFlightModeState(I)I
    .locals 13
    .param p1, "state"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 8381
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 8382
    .local v0, "callingUid":I
    const/4 v5, 0x0

    .line 8383
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 8384
    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 8385
    .local v4, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isAirplaneModeAllowed()Z

    move-result v10

    if-nez v10, :cond_0

    move v3, v8

    .line 8386
    .local v3, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8387
    if-eqz v3, :cond_1

    .line 8388
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setFlightModeState() - eSDK flight mode disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8389
    const/4 v8, -0x7

    .line 8410
    :goto_1
    return v8

    .end local v3    # "isRestricted":Z
    :cond_0
    move v3, v9

    .line 8385
    goto :goto_0

    .line 8391
    .restart local v3    # "isRestricted":Z
    :cond_1
    if-eq p1, v8, :cond_2

    if-eqz p1, :cond_2

    .line 8392
    const/16 v8, -0x2b

    goto :goto_1

    .line 8395
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 8397
    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    if-ne p1, v8, :cond_3

    move v10, v8

    :goto_2
    invoke-static {v11, v12, v10}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8400
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8401
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v2, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 8402
    const-string/jumbo v10, "state"

    if-ne p1, v8, :cond_4

    :goto_3
    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 8403
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v2, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8404
    const/4 v5, 0x0

    .line 8409
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v8, v5

    .line 8410
    goto :goto_1

    :cond_3
    move v10, v9

    .line 8397
    goto :goto_2

    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    move v8, v9

    .line 8402
    goto :goto_3

    .line 8405
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 8406
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setFlightModeState() failed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8407
    const/4 v5, -0x1

    goto :goto_4
.end method

.method public setForceAutoStartUpState(I)I
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v5, 0x1

    .line 8954
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8955
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 8957
    .local v3, "result":I
    if-eq p1, v5, :cond_0

    if-eqz p1, :cond_0

    .line 8958
    const/16 v5, -0x2b

    .line 8975
    :goto_0
    return v5

    .line 8962
    :cond_0
    const/4 v4, 0x0

    .line 8963
    .local v4, "status":Z
    if-ne p1, v5, :cond_1

    .line 8964
    const/4 v4, 0x1

    .line 8966
    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;

    move-result-object v2

    .line 8967
    .local v2, "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string v7, "AutoStartUpState"

    invoke-virtual {v5, v0, v6, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8968
    invoke-virtual {v2, v4}, Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;->setKnoxCustomAutoStartUp(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8969
    const/4 v3, 0x0

    .end local v2    # "privateKnoxCustom":Lcom/sec/server/enterprise/knoxcustom/PrivateKnoxCustom;
    :goto_1
    move v5, v3

    .line 8975
    goto :goto_0

    .line 8971
    :catch_0
    move-exception v1

    .line 8972
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setForceAutoStartUpState() failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8973
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setGearNotificationState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4429
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4430
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4432
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "gearNotificationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4433
    const/4 v2, 0x0

    .line 4438
    :goto_0
    return v2

    .line 4434
    :catch_0
    move-exception v1

    .line 4435
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGearNotificationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4436
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setGpsState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1716
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1719
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1720
    .local v4, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 1721
    .local v2, "locationPolicy":Landroid/app/enterprise/LocationPolicy;
    invoke-virtual {v2}, Landroid/app/enterprise/LocationPolicy;->isGPSStateChangeAllowed()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x1

    .line 1722
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1723
    if-eqz v1, :cond_1

    .line 1724
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v6, "setGpsState() - eSDK GPS state change not allowed"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1725
    const/4 v3, -0x7

    .line 1732
    :goto_1
    return v3

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v3

    .line 1721
    goto :goto_0

    .line 1728
    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1729
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "gps"

    invoke-static {v6, v7, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 1730
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1
.end method

.method public setHardKeyIntentState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 3304
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 3305
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3308
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHardKeyIntentState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3309
    const/4 v2, 0x0

    .line 3314
    :goto_0
    return v2

    .line 3310
    :catch_0
    move-exception v1

    .line 3311
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHardKeyIntentState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setHideNotificationMessages(I)I
    .locals 7
    .param p1, "mask"    # I

    .prologue
    .line 3101
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 3103
    .local v0, "callingUid":I
    const/16 v4, 0x1f

    if-gt p1, v4, :cond_0

    if-gez p1, :cond_1

    .line 3104
    :cond_0
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHideNotificationMessages() failed - Invalid Notifications type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3105
    const/16 v3, -0x32

    .line 3119
    :goto_0
    return v3

    .line 3107
    :cond_1
    const/4 v3, -0x6

    .line 3109
    .local v3, "result":I
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I

    move-result v1

    .line 3111
    .local v1, "currentMask":I
    if-eq p1, v1, :cond_2

    .line 3112
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "notificationMessagesMask"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3114
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 3115
    .end local v1    # "currentMask":I
    :catch_0
    move-exception v2

    .line 3116
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setHideNotificationMessages() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setHomeActivity(Ljava/lang/String;)I
    .locals 6
    .param p1, "homePackage"    # Ljava/lang/String;

    .prologue
    .line 1189
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1190
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1192
    .local v2, "result":I
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1193
    const/16 v3, -0x21

    .line 1202
    :goto_0
    return v3

    .line 1196
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedHomeActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1197
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 1202
    goto :goto_0

    .line 1198
    :catch_0
    move-exception v1

    .line 1199
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHomeActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setInfraredState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    .line 3778
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3779
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 3780
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3782
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "consumer_ir"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/ConsumerIrManager;

    .line 3783
    .local v1, "cim":Landroid/hardware/ConsumerIrManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/hardware/ConsumerIrManager;->hasIrEmitter()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 3784
    :cond_0
    const/4 v3, -0x6

    .line 3793
    .end local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3794
    return v3

    .line 3786
    .restart local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "infraredState"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3787
    const/4 v3, 0x0

    goto :goto_0

    .line 3789
    .end local v1    # "cim":Landroid/hardware/ConsumerIrManager;
    :catch_0
    move-exception v2

    .line 3790
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setInfraredState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public setInputMethod(Ljava/lang/String;Z)I
    .locals 11
    .param p1, "inputMethodClassName"    # Ljava/lang/String;
    .param p2, "force"    # Z

    .prologue
    .line 1990
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1993
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1994
    const/16 v4, -0x30

    .line 2025
    :goto_0
    return v4

    .line 1997
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1999
    .local v6, "token":J
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2000
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "enabled_input_methods"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2001
    .local v3, "methodList":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2002
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2003
    .local v1, "defaultInput":Ljava/lang/String;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2004
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2005
    const/4 v4, 0x0

    .line 2023
    .end local v1    # "defaultInput":Ljava/lang/String;
    .end local v3    # "methodList":Ljava/lang/String;
    .local v4, "result":I
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2007
    .end local v4    # "result":I
    .restart local v3    # "methodList":Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 2008
    :try_start_1
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "enabled_input_methods"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2010
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "default_input_method"

    invoke-static {v5, v8, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2011
    const/4 v4, 0x0

    .restart local v4    # "result":I
    goto :goto_1

    .line 2013
    .end local v4    # "result":I
    :cond_2
    const/16 v4, -0x30

    .restart local v4    # "result":I
    goto :goto_1

    .line 2017
    .end local v3    # "methodList":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_3
    const/16 v4, -0x30

    .restart local v4    # "result":I
    goto :goto_1

    .line 2019
    .end local v4    # "result":I
    :catch_0
    move-exception v2

    .line 2020
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setInputMethod() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    const/4 v4, -0x1

    .restart local v4    # "result":I
    goto :goto_1
.end method

.method public setInputMethodRestrictionState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 2038
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 2045
    .local v0, "callingUid":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "inputRestrictionState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2046
    const/4 v2, 0x0

    .line 2052
    .local v2, "result":I
    :goto_0
    return v2

    .line 2047
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 2048
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setInputMethodRestrictionState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setKeyboardMode(I)I
    .locals 9
    .param p1, "mode"    # I

    .prologue
    .line 5851
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5852
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5853
    .local v4, "token":J
    const/4 v3, -0x1

    .line 5855
    .local v3, "result":I
    if-ltz p1, :cond_0

    const/4 v6, 0x2

    if-le p1, v6, :cond_1

    .line 5857
    :cond_0
    const/16 v6, -0x2b

    .line 5869
    :goto_0
    return v6

    .line 5860
    :cond_1
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.app.enterprise.knoxcustom"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5861
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "mode"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5862
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, -0x2

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v8, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM"

    invoke-virtual {v6, v2, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5863
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "keyboardMode"

    invoke-virtual {v6, v0, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5864
    const/4 v3, 0x0

    .end local v2    # "intent":Landroid/content/Intent;
    :goto_1
    move v6, v3

    .line 5869
    goto :goto_0

    .line 5865
    :catch_0
    move-exception v1

    .line 5866
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setKeyboardMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5867
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setLTESettingState(Z)I
    .locals 7
    .param p1, "status"    # Z

    .prologue
    .line 4588
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 4589
    .local v0, "callingUid":I
    const/4 v3, -0x6

    .line 4591
    .local v3, "result":I
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.telephony"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4592
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 4593
    .local v1, "cm":Landroid/net/ConnectivityManager;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 4594
    const/4 v4, -0x6

    .line 4612
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v4

    .line 4600
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string v6, "LTESettingState"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4606
    const/4 v3, 0x0

    :goto_1
    move v4, v3

    .line 4612
    goto :goto_0

    .line 4607
    :catch_0
    move-exception v2

    .line 4608
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setLTESettingState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setLcdBacklightState(Z)I
    .locals 9
    .param p1, "state"    # Z

    .prologue
    .line 5898
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5899
    .local v0, "callingUid":I
    const/4 v3, -0x1

    .line 5901
    .local v3, "result":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 5902
    .local v4, "token":J
    sget-boolean v1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .line 5903
    .local v1, "currentState":Z
    if-eq p1, v1, :cond_0

    .line 5904
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setScreenCurtainDirect()V

    .line 5905
    const/4 v3, 0x0

    .line 5906
    sput-boolean p1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mForceLcdBacklightOffEnabled:Z

    .line 5909
    :cond_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5910
    const/4 v3, 0x0

    .line 5914
    .end local v1    # "currentState":Z
    .end local v4    # "token":J
    :goto_0
    return v3

    .line 5911
    :catch_0
    move-exception v2

    .line 5912
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setLcdBacklightState() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLockScreenHiddenItems(ZI)I
    .locals 28
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 4929
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v8

    .line 4932
    .local v8, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v23, 0x3ff

    move/from16 v0, p2

    move/from16 v1, v23

    if-le v0, v1, :cond_1

    .line 4934
    :cond_0
    const/16 v19, -0x32

    .line 5054
    :goto_0
    return v19

    .line 4937
    :cond_1
    const/16 v19, -0x6

    .line 4938
    .local v19, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v24

    .line 4942
    .local v24, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "lockScreenItems"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v8, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 4943
    .local v9, "currentElements":I
    and-int/lit8 v10, p2, 0xe

    .line 4946
    .local v10, "customElements":I
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x3e0

    move/from16 v20, v0

    .line 4951
    .local v20, "settingsElements":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v26, "lock_screen_show_clock"

    const/16 v27, -0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v23

    const/16 v26, -0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_d

    const/4 v15, 0x1

    .line 4952
    .local v15, "isNewKeyguard":Z
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    .line 4953
    if-eqz v15, :cond_2

    .line 4954
    and-int/lit8 v23, p2, 0x11

    or-int v10, v10, v23

    .line 4962
    :cond_2
    :goto_2
    if-eqz p1, :cond_f

    .line 4964
    or-int v18, v9, v10

    .line 4969
    .local v18, "newElements":I
    :goto_3
    move/from16 v0, v18

    if-eq v0, v9, :cond_3

    .line 4970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "lockScreenItems"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v18

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4975
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    .line 4976
    if-nez v15, :cond_5

    .line 4977
    and-int/lit8 v23, p2, 0x1

    const/16 v26, 0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_4

    .line 4978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_screen_show_clock"

    if-eqz p1, :cond_10

    const/16 v23, 0x0

    :goto_4
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4980
    :cond_4
    and-int/lit8 v23, p2, 0x10

    const/16 v26, 0x10

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 4981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_screen_date_and_year"

    if-eqz p1, :cond_11

    const/16 v23, 0x0

    :goto_5
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4985
    :cond_5
    and-int/lit8 v23, p2, 0x20

    const/16 v26, 0x20

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 4986
    new-instance v17, Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 4988
    .local v17, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v17, :cond_6

    .line 4989
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 4990
    .local v4, "UserID":I
    if-nez p1, :cond_12

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->setOwnerInfoEnabled(ZI)V

    .line 4991
    const/16 v22, 0x0

    .line 4992
    .local v22, "temp":I
    if-eqz p1, :cond_13

    .line 4993
    const/16 v22, 0x1

    .line 4996
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v26, "KNOX_CUSTOM"

    const-string/jumbo v27, "ownerInfoHide"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move/from16 v3, v22

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4999
    .end local v4    # "UserID":I
    .end local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "temp":I
    :cond_6
    and-int/lit8 v23, p2, 0x40

    const/16 v26, 0x40

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 5000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v26, "lock_application_shortcut"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5002
    .local v6, "appShortcut_Info":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_15

    .line 5003
    if-nez v6, :cond_7

    .line 5005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "set_shortcuts_mode"

    if-eqz p1, :cond_14

    const/16 v23, 0x0

    :goto_8
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5023
    .end local v6    # "appShortcut_Info":Ljava/lang/String;
    :cond_7
    :goto_9
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x80

    move/from16 v23, v0

    const/16 v26, 0x80

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_8

    .line 5024
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_additional_info"

    if-eqz p1, :cond_19

    const/16 v23, 0x0

    :goto_a
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5025
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mAmericanoUI:Z

    move/from16 v23, v0

    if-eqz v23, :cond_8

    .line 5026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_additional_weather"

    if-eqz p1, :cond_1a

    const/16 v23, 0x0

    :goto_b
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5027
    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setLockscreenWeatherHiddenForLegacy(Z)Z

    .line 5028
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_additional_steps"

    if-eqz p1, :cond_1b

    const/16 v23, 0x0

    :goto_c
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5031
    :cond_8
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x100

    move/from16 v23, v0

    const/16 v26, 0x100

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 5032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "unlock_text"

    if-eqz p1, :cond_1c

    const/16 v23, 0x0

    :goto_d
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5034
    :cond_9
    move/from16 v0, p2

    and-int/lit16 v0, v0, 0x200

    move/from16 v23, v0

    const/16 v26, 0x200

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 5035
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string/jumbo v27, "lock_screen_show_notifications"

    if-eqz p1, :cond_1d

    const/16 v23, 0x0

    :goto_e
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 5038
    :cond_a
    if-eqz v20, :cond_b

    .line 5039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string v26, "activity"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    .line 5040
    .local v5, "am":Landroid/app/ActivityManager;
    const-string v23, "com.android.settings"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 5043
    .end local v5    # "am":Landroid/app/ActivityManager;
    :cond_b
    if-eqz v10, :cond_c

    .line 5044
    new-instance v12, Landroid/content/Intent;

    const-string v23, "com.sec.android.keyguard.REFRESH"

    move-object/from16 v0, v23

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5045
    .local v12, "i":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    new-instance v26, Landroid/os/UserHandle;

    const/16 v27, -0x2

    invoke-direct/range {v26 .. v27}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v12, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5048
    .end local v12    # "i":Landroid/content/Intent;
    :cond_c
    const/16 v19, 0x0

    .line 5053
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 4951
    .end local v15    # "isNewKeyguard":Z
    .end local v18    # "newElements":I
    :cond_d
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 4957
    .restart local v15    # "isNewKeyguard":Z
    :cond_e
    if-nez v15, :cond_2

    .line 4958
    and-int/lit8 v23, p2, 0x11

    or-int v20, v20, v23

    goto/16 :goto_2

    .line 4967
    :cond_f
    xor-int/lit8 v23, v10, -0x1

    and-int v18, v9, v23

    .restart local v18    # "newElements":I
    goto/16 :goto_3

    .line 4978
    :cond_10
    const/16 v23, 0x1

    goto/16 :goto_4

    .line 4981
    :cond_11
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 4990
    .restart local v4    # "UserID":I
    .restart local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_12
    const/16 v23, 0x0

    goto/16 :goto_6

    .line 4995
    .restart local v22    # "temp":I
    :cond_13
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 5005
    .end local v4    # "UserID":I
    .end local v17    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    .end local v22    # "temp":I
    .restart local v6    # "appShortcut_Info":Ljava/lang/String;
    :cond_14
    const/16 v23, 0x1

    goto/16 :goto_8

    .line 5010
    :cond_15
    :try_start_1
    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 5011
    .local v21, "shortcutInfo":[Ljava/lang/String;
    const/16 v26, 0x0

    if-eqz p1, :cond_16

    const-string v23, "0"

    :goto_f
    aput-object v23, v21, v26

    .line 5012
    const/16 v26, 0x2

    if-eqz p1, :cond_17

    const-string v23, "0"

    :goto_10
    aput-object v23, v21, v26

    .line 5013
    const-string v6, ""

    .line 5014
    move-object/from16 v7, v21

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_11
    move/from16 v0, v16

    if-ge v13, v0, :cond_18

    aget-object v14, v7, v13

    .local v14, "info":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v26, ";"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 5011
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "info":Ljava/lang/String;
    .end local v16    # "len$":I
    :cond_16
    const-string v23, "1"

    goto :goto_f

    .line 5012
    :cond_17
    const-string v23, "1"

    goto :goto_10

    .line 5015
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v13    # "i$":I
    .restart local v16    # "len$":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string/jumbo v26, "lock_application_shortcut"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_9

    .line 5016
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "shortcutInfo":[Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 5017
    .local v11, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 5018
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 5024
    .end local v6    # "appShortcut_Info":Ljava/lang/String;
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_19
    const/16 v23, 0x1

    goto/16 :goto_a

    .line 5026
    :cond_1a
    const/16 v23, 0x1

    goto/16 :goto_b

    .line 5028
    :cond_1b
    const/16 v23, 0x1

    goto/16 :goto_c

    .line 5032
    :cond_1c
    const/16 v23, 0x1

    goto/16 :goto_d

    .line 5035
    :cond_1d
    const/16 v23, 0x1

    goto/16 :goto_e

    .line 5049
    .end local v9    # "currentElements":I
    .end local v10    # "customElements":I
    .end local v15    # "isNewKeyguard":Z
    .end local v18    # "newElements":I
    .end local v20    # "settingsElements":I
    :catch_1
    move-exception v11

    .line 5050
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string v23, "KnoxCustomManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "setLockScreenHiddenItems() failed - persistence problem "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5051
    const/16 v19, -0x1

    goto/16 :goto_0
.end method

.method public setLockScreenOverrideMode(I)I
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const/4 v8, 0x2

    .line 6011
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6012
    .local v0, "callingUid":I
    const/4 v4, -0x1

    .line 6014
    .local v4, "result":I
    if-eqz p1, :cond_0

    const/4 v5, 0x1

    if-eq p1, v5, :cond_0

    if-eq p1, v8, :cond_0

    .line 6017
    const/16 v5, -0x2b

    .line 6053
    :goto_0
    return v5

    .line 6020
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6022
    .local v6, "token":J
    :try_start_0
    sput p1, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mLockScreenOverrideMode:I

    .line 6023
    if-eq p1, v8, :cond_1

    .line 6025
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 6026
    .local v3, "lpu":Lcom/android/internal/widget/LockPatternUtils;
    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6028
    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 6034
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 6036
    :try_start_2
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "keyguard"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 6037
    .local v2, "km":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6038
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/os/UserHandle;

    const/4 v10, -0x2

    invoke-direct {v9, v10}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 6039
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mHandler:Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;

    new-instance v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;

    invoke-direct {v8, p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$4;-><init>(Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v5, v8, v10, v11}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService$KioskHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 6047
    .end local v2    # "km":Landroid/app/KeyguardManager;
    :cond_2
    const/4 v4, 0x0

    .line 6052
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .line 6053
    goto :goto_0

    .line 6029
    .restart local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_0
    move-exception v1

    .line 6030
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "KnoxCustomManagerService"

    const-string v8, "Error while trying to lock device: "

    invoke-static {v5, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 6048
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "lpu":Lcom/android/internal/widget/LockPatternUtils;
    :catch_1
    move-exception v1

    .line 6049
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLockScreenOverrideMode() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setLockscreenWallpaper(Ljava/lang/String;I)I
    .locals 10
    .param p1, "filepath"    # Ljava/lang/String;
    .param p2, "SIM"    # I

    .prologue
    const/4 v9, 0x1

    .line 3730
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3731
    .local v0, "callingUid":I
    const/4 v4, -0x6

    .line 3733
    .local v4, "result":I
    if-eq p2, v9, :cond_0

    const/4 v5, 0x2

    if-eq p2, v5, :cond_0

    .line 3734
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setLockscreenWallpaper: invalid SIM value"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3735
    const/16 v5, -0x32

    .line 3765
    :goto_0
    return v5

    .line 3737
    :cond_0
    if-eqz p1, :cond_1

    .line 3739
    :try_start_0
    const-string v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3740
    .local v3, "extension":Ljava/lang/String;
    const-string v5, ".png"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3741
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setLockscreenWallpaper: file must be a PNG"

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3742
    const/16 v5, -0x28

    goto :goto_0

    .line 3744
    .end local v3    # "extension":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 3745
    .local v2, "e":Ljava/lang/StringIndexOutOfBoundsException;
    const/4 v5, -0x1

    goto :goto_0

    .line 3749
    .end local v2    # "e":Ljava/lang/StringIndexOutOfBoundsException;
    :cond_1
    if-ne p2, v9, :cond_2

    const-string/jumbo v1, "lockscreen_wallpaper_path"

    .line 3750
    .local v1, "destSettings":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 3752
    .local v6, "token":J
    if-nez p1, :cond_3

    .line 3753
    :try_start_1
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v8, ""

    invoke-static {v5, v1, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3759
    :goto_2
    const/4 v4, 0x0

    .line 3764
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v4

    .line 3765
    goto :goto_0

    .line 3749
    .end local v1    # "destSettings":Ljava/lang/String;
    .end local v6    # "token":J
    :cond_2
    const-string/jumbo v1, "lockscreen_wallpaper_path_2"

    goto :goto_1

    .line 3756
    .restart local v1    # "destSettings":Ljava/lang/String;
    .restart local v6    # "token":J
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 3760
    :catch_1
    move-exception v2

    .line 3761
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setLockscreenWallpaper() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3762
    const/4 v4, -0x1

    goto :goto_3
.end method

.method public setMobileDataRoamingState(Z)I
    .locals 11
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 2817
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2819
    .local v0, "callingUid":I
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2821
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2822
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 2823
    const/4 v3, -0x6

    .line 2844
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 2827
    :cond_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 2828
    .local v4, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    if-ne v9, v5, :cond_1

    .line 2829
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_1

    .line 2830
    const/16 v3, -0x38

    goto :goto_0

    .line 2834
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2836
    .local v6, "token":J
    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "data_roaming"

    if-eqz p1, :cond_2

    :goto_1
    invoke-static {v9, v10, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2837
    const/4 v3, 0x0

    .line 2842
    .local v3, "result":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v3    # "result":I
    :cond_2
    move v5, v8

    .line 2836
    goto :goto_1

    .line 2838
    :catch_0
    move-exception v2

    .line 2839
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setMobileDataRoamingState() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2840
    const/4 v3, -0x1

    .restart local v3    # "result":I
    goto :goto_2
.end method

.method public setMobileDataState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1746
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1747
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1748
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1749
    const/4 v3, -0x6

    .line 1760
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v3

    .line 1753
    :cond_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1755
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1756
    .local v4, "token":J
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1757
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 1758
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public setMobileNetworkType(I)I
    .locals 13
    .param p1, "type"    # I

    .prologue
    const/16 v9, -0x32

    const/4 v8, 0x0

    .line 8042
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8045
    .local v0, "callingUid":I
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android.hardware.telephony"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 8046
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 8047
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v2, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 8048
    const/4 v8, -0x6

    .line 8099
    .end local v2    # "cm":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v8

    .line 8053
    :cond_1
    const/4 v3, -0x1

    .line 8054
    .local v3, "phoneType":I
    sparse-switch p1, :sswitch_data_0

    move v8, v9

    .line 8083
    goto :goto_0

    .line 8056
    :sswitch_0
    const/4 v3, 0x0

    .line 8086
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 8087
    .local v6, "token":J
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 8088
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v9

    invoke-virtual {v5, v9, v3}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v4

    .line 8090
    .local v4, "ret":Z
    if-eqz v4, :cond_2

    .line 8092
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    .line 8094
    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 8095
    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 8098
    :cond_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 8099
    if-nez v4, :cond_0

    const/4 v8, -0x1

    goto :goto_0

    .line 8059
    .end local v4    # "ret":Z
    .end local v5    # "tm":Landroid/telephony/TelephonyManager;
    .end local v6    # "token":J
    :sswitch_1
    const/4 v3, 0x1

    .line 8060
    goto :goto_1

    .line 8062
    :sswitch_2
    const/4 v3, 0x2

    .line 8063
    goto :goto_1

    .line 8065
    :sswitch_3
    const/16 v3, 0x9

    .line 8066
    goto :goto_1

    .line 8069
    :sswitch_4
    const/4 v1, 0x0

    .line 8070
    .local v1, "canUseLteOnly":Z
    invoke-virtual {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getLTESettingState()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 8071
    const/4 v1, 0x1

    .line 8076
    :goto_2
    if-eqz v1, :cond_4

    .line 8077
    const/16 v3, 0xb

    goto :goto_1

    .line 8073
    :cond_3
    const-string v10, "LTEONLY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Setting_CustNetworkSelMenu4"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_2

    :cond_4
    move v8, v9

    .line 8079
    goto :goto_0

    .line 8054
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x9 -> :sswitch_3
        0xb -> :sswitch_4
    .end sparse-switch
.end method

.method public setMotionControlState(IZ)I
    .locals 10
    .param p1, "type"    # I
    .param p2, "status"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 3014
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 3015
    .local v0, "callingUid":I
    if-lt p1, v3, :cond_0

    const/4 v7, 0x3

    if-le p1, v7, :cond_1

    .line 3016
    :cond_0
    const/16 v2, -0x32

    .line 3055
    :goto_0
    return v2

    .line 3019
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3023
    .local v4, "token":J
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_2

    .line 3024
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pick_up"

    if-eqz p2, :cond_4

    move v7, v3

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3026
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pick_up_to_call_out"

    if-eqz p2, :cond_5

    move v7, v3

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3028
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_engine"

    if-eqz p2, :cond_6

    move v7, v3

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3030
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "master_motion"

    if-eqz p2, :cond_7

    move v7, v3

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3033
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_pan_to_browse_image"

    if-eqz p2, :cond_8

    move v7, v3

    :goto_5
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3036
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_zooming"

    if-eqz p2, :cond_9

    move v7, v3

    :goto_6
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3039
    :cond_2
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_3

    .line 3040
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "motion_merged_mute_pause"

    if-eqz p2, :cond_a

    move v7, v3

    :goto_7
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3042
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "surface_palm_swipe"

    if-eqz p2, :cond_b

    move v7, v3

    :goto_8
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3044
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "surface_palm_touch"

    if-eqz p2, :cond_c

    move v7, v3

    :goto_9
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3046
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "surface_motion_engine"

    if-eqz p2, :cond_d

    :goto_a
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3049
    :cond_3
    const/4 v2, 0x0

    .line 3054
    .local v2, "result":I
    :goto_b
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .end local v2    # "result":I
    :cond_4
    move v7, v6

    .line 3024
    goto/16 :goto_1

    :cond_5
    move v7, v6

    .line 3026
    goto/16 :goto_2

    :cond_6
    move v7, v6

    .line 3028
    goto :goto_3

    :cond_7
    move v7, v6

    .line 3030
    goto :goto_4

    :cond_8
    move v7, v6

    .line 3033
    goto :goto_5

    :cond_9
    move v7, v6

    .line 3036
    goto :goto_6

    :cond_a
    move v7, v6

    .line 3040
    goto :goto_7

    :cond_b
    move v7, v6

    .line 3042
    goto :goto_8

    :cond_c
    move v7, v6

    .line 3044
    goto :goto_9

    :cond_d
    move v3, v6

    .line 3046
    goto :goto_a

    .line 3050
    :catch_0
    move-exception v1

    .line 3051
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setMotionControlState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_b
.end method

.method public setMultiWindowFixedState(II)I
    .locals 12
    .param p1, "fixed"    # I
    .param p2, "percentageSplit"    # I

    .prologue
    const/4 v8, 0x1

    .line 1899
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1901
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1902
    .local v6, "token":J
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v3

    .line 1903
    .local v3, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v3}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v9

    if-nez v9, :cond_1

    move v2, v8

    .line 1904
    .local v2, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1905
    if-eqz v2, :cond_2

    .line 1906
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setMultiWindowFixedState() - eSDK multi window mode not allowed"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    const/4 v4, -0x7

    .line 1941
    :cond_0
    :goto_1
    return v4

    .line 1903
    .end local v2    # "isRestricted":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1909
    .restart local v2    # "isRestricted":Z
    :cond_2
    const/4 v4, -0x6

    .line 1911
    .local v4, "result":I
    if-eq p1, v8, :cond_3

    if-eqz p1, :cond_3

    .line 1912
    const/16 v4, -0x2b

    goto :goto_1

    .line 1914
    :cond_3
    const/16 v9, 0xa

    if-lt p2, v9, :cond_4

    const/16 v9, 0x5a

    if-le p2, v9, :cond_5

    .line 1915
    :cond_4
    const/16 v4, -0x2a

    goto :goto_1

    .line 1917
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1919
    if-ne p1, v8, :cond_6

    .line 1920
    :try_start_0
    iget-object v9, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "multi_window_enabled"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eq v9, v8, :cond_6

    .line 1921
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setMultiWindowState(Z)I

    move-result v4

    .line 1922
    if-nez v4, :cond_0

    .line 1927
    :cond_6
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "multiWindowFixed"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1928
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "multiWindowPercentageSplit"

    invoke-virtual {v8, v0, v9, v10, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 1931
    const-string v8, "content://com.sec.knox.provider2/KnoxCustomManagerService2"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1932
    .local v5, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v8, v5, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1934
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateMultiWindowCenterBar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1935
    const/4 v4, 0x0

    .line 1940
    .end local v5    # "uri":Landroid/net/Uri;
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1936
    :catch_0
    move-exception v1

    .line 1937
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setMultiWindowFixedState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setMultiWindowState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1863
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 1865
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1866
    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v2

    .line 1867
    .local v2, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isMultiWindowModeAllowed()Z

    move-result v8

    if-nez v8, :cond_0

    move v1, v6

    .line 1868
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1869
    if-eqz v1, :cond_1

    .line 1870
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setMultiWindowState() - eSDK multi window mode not allowed"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    const/4 v3, -0x7

    .line 1882
    :goto_1
    return v3

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v7

    .line 1867
    goto :goto_0

    .line 1873
    .restart local v1    # "isRestricted":Z
    :cond_1
    const/4 v3, -0x6

    .line 1874
    .local v3, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1875
    if-eqz p1, :cond_2

    .line 1876
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "multi_window_enabled"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1880
    :goto_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1881
    const/4 v3, 0x0

    .line 1882
    goto :goto_1

    .line 1878
    :cond_2
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v8, "multi_window_enabled"

    invoke-static {v6, v8, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2
.end method

.method public setPackageVerifierState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 2935
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2937
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2939
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "package_verifier_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2941
    const/4 v2, 0x0

    .line 2946
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2947
    return v2

    .line 2939
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2942
    :catch_0
    move-exception v1

    .line 2943
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setPackageVerifierState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2944
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setPassCode(Ljava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "currentPassCode"    # Ljava/lang/String;
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 932
    const/4 v4, -0x6

    .line 933
    .local v4, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 935
    .local v0, "callingUid":I
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "sealedState"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 936
    .local v1, "currentStatus":Z
    if-eqz v1, :cond_4

    .line 937
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "prokioskPinCode"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 938
    .local v5, "storedPassCode":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    move v3, v6

    .line 939
    .local v3, "passCodeOk":Z
    :goto_0
    if-nez v3, :cond_0

    .line 940
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "sealedPinCode"

    invoke-virtual {v8, v0, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 941
    if-eqz v5, :cond_2

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v3, v6

    .line 943
    :cond_0
    :goto_1
    if-eqz v3, :cond_3

    .line 945
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "prokioskPinCode"

    invoke-virtual {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 946
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "KNOX_CUSTOM"

    const-string/jumbo v8, "sealedPinCode"

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 947
    const/4 v4, 0x0

    .line 960
    .end local v1    # "currentStatus":Z
    .end local v3    # "passCodeOk":Z
    .end local v5    # "storedPassCode":Ljava/lang/String;
    :goto_2
    return v4

    .restart local v1    # "currentStatus":Z
    .restart local v5    # "storedPassCode":Ljava/lang/String;
    :cond_1
    move v3, v7

    .line 938
    goto :goto_0

    .restart local v3    # "passCodeOk":Z
    :cond_2
    move v3, v7

    .line 941
    goto :goto_1

    .line 949
    :cond_3
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setPassCode() - Invalid passcode"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/16 v4, -0x20

    goto :goto_2

    .line 953
    .end local v3    # "passCodeOk":Z
    .end local v5    # "storedPassCode":Ljava/lang/String;
    :cond_4
    const-string v6, "KnoxCustomManagerService"

    const-string/jumbo v7, "setPassCode() - Not in ProKiosk Mode "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 954
    const/4 v4, -0x2

    goto :goto_2

    .line 956
    .end local v1    # "currentStatus":Z
    :catch_0
    move-exception v2

    .line 957
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPassCode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setPowerDialogCustomItems(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 6306
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6307
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setPowerDialogCustomItemsState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 6255
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6256
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setPowerDialogItems(I)I
    .locals 7
    .param p1, "value"    # I

    .prologue
    .line 2471
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 2472
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 2474
    .local v2, "result":I
    if-ltz p1, :cond_0

    const/16 v3, 0x3ff

    if-le p1, v3, :cond_1

    .line 2475
    :cond_0
    const/16 v2, -0x32

    .line 2489
    :goto_0
    return v2

    .line 2477
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/16 v4, 0x3e8

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "sealedPowerDialogItems"

    invoke-virtual {v3, v4, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 2480
    const/4 v2, 0x0

    goto :goto_0

    .line 2482
    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    .line 2485
    :catch_0
    move-exception v1

    .line 2486
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerDialogItems() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerDialogOptionMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1045
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1048
    .local v2, "result":I
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    if-nez p1, :cond_1

    .line 1049
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedPowerDialogOptionMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    const/4 v2, 0x0

    .line 1058
    :goto_0
    return v2

    .line 1052
    :cond_1
    const/16 v2, -0x2b

    goto :goto_0

    .line 1054
    :catch_0
    move-exception v1

    .line 1055
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerDialogOptionMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerMenuLockedState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4233
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4234
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4237
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "powerMenuLockedState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4238
    const/4 v2, 0x0

    .line 4243
    :goto_0
    return v2

    .line 4239
    :catch_0
    move-exception v1

    .line 4240
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPowerMenuLockedState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setPowerSavingMode(I)I
    .locals 14
    .param p1, "mode"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x1

    .line 3430
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 3431
    .local v0, "callingUid":I
    const/4 v6, -0x6

    .line 3433
    .local v6, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3436
    .local v8, "token":J
    if-nez p1, :cond_1

    .line 3438
    :try_start_0
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "powersaving_switch"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3442
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "low_power"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3443
    const/4 v6, 0x0

    .line 3496
    :cond_0
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3497
    return v6

    .line 3444
    :cond_1
    if-ne p1, v5, :cond_2

    .line 3446
    :try_start_1
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "powersaving_switch"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3450
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "low_power"

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3451
    const/4 v6, 0x0

    goto :goto_0

    .line 3452
    :cond_2
    const/4 v11, 0x2

    if-ne p1, v11, :cond_3

    .line 3454
    :try_start_2
    const-string v10, "com.sec.android.emergencymode.EmergencyManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 3455
    .local v3, "em":Ljava/lang/Class;
    const-string/jumbo v10, "supportUltraPowerSavingMode"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 3456
    .local v7, "supported":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3457
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3458
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3459
    const-string/jumbo v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3460
    const-string/jumbo v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3461
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 3462
    const/4 v6, 0x0

    goto :goto_0

    .line 3466
    .end local v3    # "em":Ljava/lang/Class;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "supported":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v2

    .line 3467
    .local v2, "e1":Ljava/lang/Exception;
    :try_start_3
    const-string v10, "KnoxCustomManagerService"

    const-string/jumbo v11, "setPowerSavingMode() failed - ultra power mode not supported"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3491
    .end local v2    # "e1":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 3492
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "KnoxCustomManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3493
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 3469
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v11, 0x3

    if-ne p1, v11, :cond_6

    .line 3471
    :try_start_4
    iget-object v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "ultra_powersaving_mode"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_4

    .line 3474
    .local v5, "isUltraPowerSavingEnabled":Z
    :goto_1
    if-eqz v5, :cond_5

    .line 3475
    new-instance v4, Landroid/content/Intent;

    const-string v10, "com.samsung.intent.action.EMERGENCY_START_SERVICE_BY_ORDER"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3476
    .restart local v4    # "intent":Landroid/content/Intent;
    const-string/jumbo v10, "enabled"

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3477
    const-string/jumbo v10, "flag"

    const/16 v11, 0x200

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3478
    const-string/jumbo v10, "skipdialog"

    const/4 v11, 0x1

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3479
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v10, v4, v11}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3480
    const/4 v6, 0x0

    .line 3481
    goto/16 :goto_0

    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "isUltraPowerSavingEnabled":Z
    :cond_4
    move v5, v10

    .line 3471
    goto :goto_1

    .line 3483
    .restart local v5    # "isUltraPowerSavingEnabled":Z
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3489
    .end local v5    # "isUltraPowerSavingEnabled":Z
    :cond_6
    const/16 v6, -0x32

    goto/16 :goto_0

    .line 3485
    :catch_2
    move-exception v10

    goto/16 :goto_0
.end method

.method public setProKioskState(ZLjava/lang/String;)I
    .locals 17
    .param p1, "status"    # Z
    .param p2, "passCode"    # Ljava/lang/String;

    .prologue
    .line 825
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v2

    .line 828
    .local v2, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 829
    .local v10, "token":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v6

    .line 830
    .local v6, "kioskMode":Landroid/app/enterprise/kioskmode/KioskMode;
    invoke-virtual {v6}, Landroid/app/enterprise/kioskmode/KioskMode;->isKioskModeEnabled()Z

    move-result v5

    .line 832
    .local v5, "isRestricted":Z
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 833
    if-eqz v5, :cond_0

    .line 834
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - eSDK kiosk mode already enabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/4 v8, -0x7

    .line 895
    :goto_0
    return v8

    .line 838
    :cond_0
    const/4 v8, -0x1

    .line 841
    .local v8, "result":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 842
    .local v3, "currentStatus":Z
    if-eqz p1, :cond_3

    .line 843
    if-eqz v3, :cond_1

    .line 844
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Already in ProKiosk mode - Passcode not changed"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/4 v8, -0x3

    goto :goto_0

    .line 848
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2

    .line 849
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "prokioskPinCode"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedPinCode"

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->startProKioskMode()V

    .line 853
    const/4 v8, 0x0

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V

    .line 859
    const-string v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 860
    .local v12, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 891
    .end local v3    # "currentStatus":Z
    .end local v12    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v4

    .line 892
    .local v4, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setProKioskState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v8, -0x1

    goto/16 :goto_0

    .line 862
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "currentStatus":Z
    :cond_2
    :try_start_1
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    const/16 v8, -0x20

    goto/16 :goto_0

    .line 867
    :cond_3
    if-eqz v3, :cond_8

    .line 868
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "prokioskPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 869
    .local v9, "storedPassCode":Ljava/lang/String;
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v7, 0x1

    .line 870
    .local v7, "passCodeOk":Z
    :goto_1
    if-nez v7, :cond_4

    .line 871
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedPinCode"

    invoke-virtual {v13, v2, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 872
    if-eqz v9, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v7, 0x1

    .line 874
    :cond_4
    :goto_2
    if-eqz v7, :cond_7

    .line 875
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "KNOX_CUSTOM"

    const-string/jumbo v15, "sealedState"

    move/from16 v0, p1

    invoke-virtual {v13, v2, v14, v15, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 876
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->stopProKioskMode()V

    .line 877
    const/4 v8, 0x0

    .line 880
    const-string v13, "content://com.sec.knox.provider2/KnoxCustomManagerService1"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 881
    .restart local v12    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v13, v12, v14}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0

    .line 869
    .end local v7    # "passCodeOk":Z
    .end local v12    # "uri":Landroid/net/Uri;
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 872
    .restart local v7    # "passCodeOk":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 883
    :cond_7
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Invalid passcode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/16 v8, -0x20

    goto/16 :goto_0

    .line 887
    .end local v7    # "passCodeOk":Z
    .end local v9    # "storedPassCode":Ljava/lang/String;
    :cond_8
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setProKioskState() - Not in ProKiosk Mode"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 888
    const/4 v8, -0x2

    goto/16 :goto_0
.end method

.method public setProKioskString(ILjava/lang/String;)I
    .locals 6
    .param p1, "stringType"    # I
    .param p2, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1094
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1095
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1097
    .local v2, "result":I
    packed-switch p1, :pswitch_data_0

    .line 1126
    const-string v3, "KnoxCustomManagerService"

    const-string/jumbo v4, "setProKioskString() failed - unrecognized type"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/16 v2, -0x29

    .line 1130
    :goto_0
    return v2

    .line 1100
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOn"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1101
    const/4 v2, 0x0

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v1

    .line 1103
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_ON_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v2, -0x1

    .line 1106
    goto :goto_0

    .line 1109
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOff"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1110
    const/4 v2, 0x0

    goto :goto_0

    .line 1111
    :catch_1
    move-exception v1

    .line 1112
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OFF_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 v2, -0x1

    .line 1115
    goto :goto_0

    .line 1118
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "sealedModeStringOption"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1119
    const/4 v2, 0x0

    goto :goto_0

    .line 1120
    :catch_2
    move-exception v1

    .line 1121
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setProKioskString() failed - persistence problem (PRO_KIOSK_OPTION_STRING) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const/4 v2, -0x1

    .line 1124
    goto :goto_0

    .line 1097
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setQuickPanelButtons(I)I
    .locals 11
    .param p1, "buttons"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 8722
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8723
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 8724
    .local v2, "result":I
    if-ltz p1, :cond_0

    const/4 v7, 0x7

    if-le p1, v7, :cond_1

    .line 8725
    :cond_0
    const/16 v3, -0x32

    .line 8741
    :goto_0
    return v3

    .line 8728
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8729
    .local v4, "token":J
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelQuickConnect"

    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_2

    move v7, v3

    :goto_1
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8731
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string/jumbo v10, "quickPanelSFinder"

    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_3

    move v7, v3

    :goto_2
    invoke-virtual {v8, v0, v9, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8733
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "quickPanelBrightness"

    and-int/lit8 v10, p1, 0x4

    if-eqz v10, :cond_4

    :goto_3
    invoke-virtual {v7, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 8735
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8736
    const/4 v2, 0x0

    .end local v4    # "token":J
    :goto_4
    move v3, v2

    .line 8741
    goto :goto_0

    .restart local v4    # "token":J
    :cond_2
    move v7, v6

    .line 8729
    goto :goto_1

    :cond_3
    move v7, v6

    .line 8731
    goto :goto_2

    :cond_4
    move v3, v6

    .line 8733
    goto :goto_3

    .line 8737
    .end local v4    # "token":J
    :catch_0
    move-exception v1

    .line 8738
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setQuickPanelButtons() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8739
    const/4 v2, -0x1

    goto :goto_4
.end method

.method public setQuickPanelEditMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 8422
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8423
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 8424
    .local v2, "result":I
    const/4 v3, 0x1

    if-eq p1, v3, :cond_0

    if-eqz p1, :cond_0

    .line 8425
    const/16 v3, -0x2b

    .line 8434
    :goto_0
    return v3

    .line 8428
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "quickPanelEditMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8429
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 8434
    goto :goto_0

    .line 8430
    :catch_0
    move-exception v1

    .line 8431
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setQuickPanelEditMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8432
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setQuickPanelItems(Ljava/lang/String;)I
    .locals 10
    .param p1, "items"    # Ljava/lang/String;

    .prologue
    .line 8456
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8457
    .local v0, "callingUid":I
    const/4 v7, -0x6

    .line 8458
    .local v7, "result":I
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 8459
    .local v3, "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 8460
    new-instance v3, Ljava/util/LinkedList;

    .end local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, ","

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 8463
    .restart local v3    # "itemList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5}, Ljava/lang/String;-><init>()V

    .line 8464
    .local v5, "newItems":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8465
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 8466
    .local v6, "qpItem":I
    invoke-direct {p0, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getQuickPanelItemString(I)Ljava/lang/String;

    move-result-object v4

    .line 8467
    .local v4, "itemString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 8468
    const/16 v8, -0x32

    .line 8472
    .end local v2    # "item":Ljava/lang/String;
    .end local v4    # "itemString":Ljava/lang/String;
    .end local v6    # "qpItem":I
    :goto_1
    return v8

    .line 8470
    .restart local v2    # "item":Ljava/lang/String;
    .restart local v4    # "itemString":Ljava/lang/String;
    .restart local v6    # "qpItem":I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8471
    goto :goto_0

    .line 8472
    .end local v2    # "item":Ljava/lang/String;
    .end local v4    # "itemString":Ljava/lang/String;
    .end local v6    # "qpItem":I
    :cond_2
    invoke-direct {p0, v5}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->updateQuickPanelItems(Ljava/lang/String;)I

    move-result v8

    goto :goto_1
.end method

.method public setRecentLongPressActivity(Ljava/lang/String;)I
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 3192
    const/4 v2, -0x6

    .line 3193
    .local v2, "result":I
    const/4 v0, 0x0

    .line 3195
    .local v0, "callingUid":I
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceRubensFeaturesPermission()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3200
    :goto_0
    if-eqz p1, :cond_0

    .line 3201
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3202
    const/16 v3, -0x21

    .line 3213
    :goto_1
    return v3

    .line 3196
    :catch_0
    move-exception v1

    .line 3197
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    goto :goto_0

    .line 3207
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressActivity"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3208
    const/4 v2, 0x0

    :goto_2
    move v3, v2

    .line 3213
    goto :goto_1

    .line 3209
    :catch_1
    move-exception v1

    .line 3210
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressActivity() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public setRecentLongPressMode(I)I
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 3244
    const/4 v2, -0x6

    .line 3245
    .local v2, "result":I
    const/4 v0, 0x0

    .line 3247
    .local v0, "callingUid":I
    :try_start_0
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceRubensFeaturesPermission()I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 3252
    :goto_0
    if-ltz p1, :cond_0

    const/4 v3, 0x2

    if-le p1, v3, :cond_1

    .line 3253
    :cond_0
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressMode() failed - Invalid Mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    const/16 v3, -0x2b

    .line 3263
    :goto_1
    return v3

    .line 3248
    :catch_0
    move-exception v1

    .line 3249
    .local v1, "e":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    goto :goto_0

    .line 3257
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "recentLongPressMode"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3258
    const/4 v2, 0x0

    :goto_2
    move v3, v2

    .line 3263
    goto :goto_1

    .line 3259
    :catch_1
    move-exception v1

    .line 3260
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setRecentLongPressMode() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    const/4 v2, -0x1

    goto :goto_2
.end method

.method public setScreenOffOnHomeLongPressState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4642
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4643
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4645
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnHomeLongPressState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4646
    const/4 v2, 0x0

    .line 4651
    :goto_0
    return v2

    .line 4647
    :catch_0
    move-exception v1

    .line 4648
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffOnHomeLongPressState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4649
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenOffOnStatusBarDoubleTapState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4680
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4681
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4683
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenOffOnStatusBarDoubleTapState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4684
    const/4 v2, 0x0

    .line 4689
    :goto_0
    return v2

    .line 4685
    :catch_0
    move-exception v1

    .line 4686
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenOffOnStatusBarDoubleTapState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setScreenPowerSavingState(Z)I
    .locals 9
    .param p1, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2087
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2090
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2091
    .local v2, "token":J
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "psm_display"

    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2094
    if-eqz p1, :cond_2

    .line 2096
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "powersaving_switch"

    invoke-static {v4, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2110
    :cond_0
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2112
    return v6

    :cond_1
    move v4, v6

    .line 2091
    goto :goto_0

    .line 2101
    :cond_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "psm_cpu_clock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 2102
    .local v1, "screenSetting":I
    if-nez v1, :cond_0

    .line 2104
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "powersaving_switch"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method

.method public setScreenTimeout(I)I
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    const/16 v2, -0x2d

    .line 2166
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2168
    .local v0, "callingUid":I
    const v5, 0x20c49b

    if-lt p1, v5, :cond_1

    .line 2186
    :cond_0
    :goto_0
    return v2

    .line 2171
    :cond_1
    const/4 v5, 0x5

    if-lt p1, v5, :cond_0

    .line 2175
    mul-int/lit16 v4, p1, 0x3e8

    .line 2176
    .local v4, "timeout_val":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2177
    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "screen_off_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2178
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2179
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2180
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2181
    const/4 v2, 0x0

    .local v2, "result":I
    goto :goto_0

    .line 2182
    .end local v2    # "result":I
    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :catch_0
    move-exception v1

    .line 2183
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setScreenTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setScreenWakeupOnPowerState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4468
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4469
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4472
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "screenWakeupOnPowerState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4473
    const/4 v2, 0x0

    .line 4478
    :goto_0
    return v2

    .line 4474
    :catch_0
    move-exception v1

    .line 4475
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setScreenWakeupOnPowerState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4476
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSealedNotificationMessagesState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 1813
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1814
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 1817
    .local v2, "result":I
    if-eqz p1, :cond_0

    .line 1818
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setHideNotificationMessages(I)I

    move-result v2

    .line 1826
    :goto_0
    return v2

    .line 1820
    :cond_0
    const/16 v3, 0x1f

    invoke-virtual {p0, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setHideNotificationMessages(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1822
    :catch_0
    move-exception v1

    .line 1823
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setSealedNotificationMessagesState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setSealedPowerDialogCustomItems(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 2577
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/knoxcustom/KnoxCustomPowerItem;>;"
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 2578
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsLocal(Ljava/util/List;I)I

    move-result v1

    return v1
.end method

.method public setSealedPowerDialogCustomItemsState(Z)I
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2502
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 2503
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPowerDialogCustomItemsStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSealedStatusBarClockState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 1266
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1267
    .local v0, "callingUid":I
    const/4 v1, 0x4

    .line 1268
    .local v1, "mode":I
    if-eqz p1, :cond_0

    .line 1269
    const/4 v1, 0x2

    .line 1271
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarClockModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedStatusBarIconsState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 1296
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1297
    .local v0, "callingUid":I
    const/4 v1, 0x4

    .line 1298
    .local v1, "mode":I
    if-eqz p1, :cond_0

    .line 1299
    const/4 v1, 0x2

    .line 1301
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarIconsModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedStatusBarMode(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1236
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1237
    .local v0, "callingUid":I
    move v1, p1

    .line 1238
    .local v1, "sealedMode":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1239
    const/4 v1, 0x4

    .line 1241
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setSealedUsbMassStorageState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 1327
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1328
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSealedUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;

    .prologue
    .line 1383
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1384
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setSealedUsbNetState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 1356
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 1357
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setSensorDisabled(ZI)I
    .locals 8
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 3840
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3842
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v5, 0x3f

    if-le p2, v5, :cond_1

    .line 3844
    :cond_0
    const/16 v4, -0x32

    .line 3865
    :goto_0
    return v4

    .line 3846
    :cond_1
    const/4 v4, -0x6

    .line 3849
    .local v4, "result":I
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 3850
    .local v1, "currentElements":I
    if-eqz p1, :cond_3

    .line 3852
    or-int v3, v1, p2

    .line 3857
    .local v3, "newElements":I
    :goto_1
    if-eq v3, v1, :cond_2

    .line 3858
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "KNOX_CUSTOM"

    const-string/jumbo v7, "sensorDisabled"

    invoke-virtual {v5, v0, v6, v7, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3860
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 3855
    .end local v3    # "newElements":I
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1

    .line 3861
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_0
    move-exception v2

    .line 3862
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSensorDisabled() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public setSettingsEnabledItems(ZI)I
    .locals 10
    .param p1, "state"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 6102
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 6104
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/4 v5, 0x7

    if-le p2, v5, :cond_1

    .line 6105
    :cond_0
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsEnabledItems() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6106
    const/16 v4, -0x32

    .line 6132
    :goto_0
    return v4

    .line 6108
    :cond_1
    const/4 v4, -0x6

    .line 6109
    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 6112
    .local v6, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 6113
    .local v1, "currentElements":I
    if-eqz p1, :cond_3

    .line 6115
    or-int v3, v1, p2

    .line 6120
    .local v3, "newElements":I
    :goto_1
    if-eq v3, v1, :cond_2

    .line 6121
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "sealedModeSettingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6124
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6126
    :cond_2
    const/4 v4, 0x0

    .line 6131
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 6118
    .restart local v1    # "currentElements":I
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1

    .line 6127
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_0
    move-exception v2

    .line 6128
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsEnabledItems() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6129
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setSettingsHiddenState(ZI)I
    .locals 10
    .param p1, "status"    # Z
    .param p2, "elements"    # I

    .prologue
    .line 2725
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2727
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/16 v5, 0x7ff

    if-le p2, v5, :cond_1

    .line 2728
    :cond_0
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsHiddenState() failed - Invalid Settings type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    const/16 v4, -0x32

    .line 2755
    :goto_0
    return v4

    .line 2731
    :cond_1
    const/4 v4, -0x6

    .line 2732
    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2735
    .local v6, "token":J
    :try_start_0
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2736
    .local v1, "currentElements":I
    if-eqz p1, :cond_3

    .line 2738
    or-int v3, v1, p2

    .line 2743
    .local v3, "newElements":I
    :goto_1
    if-eq v3, v1, :cond_2

    .line 2744
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "settingsState"

    invoke-virtual {v5, v0, v8, v9, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 2747
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->closeSettingsApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2749
    :cond_2
    const/4 v4, 0x0

    .line 2754
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 2741
    .restart local v1    # "currentElements":I
    :cond_3
    xor-int/lit8 v5, p2, -0x1

    and-int v3, v1, v5

    .restart local v3    # "newElements":I
    goto :goto_1

    .line 2750
    .end local v1    # "currentElements":I
    .end local v3    # "newElements":I
    :catch_0
    move-exception v2

    .line 2751
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSettingsHiddenState() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    const/4 v4, -0x1

    goto :goto_2
.end method

.method public setShutdownAnimation(Ljava/lang/String;Ljava/lang/String;)I
    .locals 19
    .param p1, "shutdownAnimationFilePath"    # Ljava/lang/String;
    .param p2, "shutdownSoundFilePath"    # Ljava/lang/String;

    .prologue
    .line 7674
    const/4 v11, 0x0

    .line 7675
    .local v11, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v5

    .line 7676
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 7679
    .local v16, "token":J
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_2

    :cond_1
    const/4 v10, 0x1

    .line 7684
    .local v10, "isDelete":Z
    :goto_0
    if-nez v10, :cond_3

    .line 7685
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkFileConditionForBootAnim(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 7686
    if-eqz v11, :cond_3

    move v15, v11

    .line 7750
    :goto_1
    return v15

    .line 7679
    .end local v10    # "isDelete":Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_0

    .line 7692
    .restart local v10    # "isDelete":Z
    :cond_3
    new-instance v7, Ljava/io/File;

    const-string v15, "/data/b2b"

    invoke-direct {v7, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7693
    .local v7, "dir":Ljava/io/File;
    const/4 v6, 0x0

    .line 7694
    .local v6, "created":Z
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_4

    .line 7695
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    move-result v6

    .line 7696
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7699
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_5

    if-eqz v6, :cond_c

    .line 7700
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7701
    new-instance v9, Ljava/io/File;

    const-string v15, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7704
    .local v9, "fileInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 7705
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7708
    :cond_6
    if-eqz v10, :cond_7

    .line 7710
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7711
    const/4 v15, 0x0

    goto :goto_1

    .line 7714
    :cond_7
    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    .line 7715
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7722
    invoke-direct/range {p0 .. p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7723
    .local v4, "animationFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->filePathSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 7724
    .local v14, "soundFileName":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/b2b/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 7725
    .local v13, "shutdownSoundTargetPath":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "/data/b2b/"

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 7727
    .local v12, "shutdownAnimTargetPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_8

    .line 7728
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 7717
    .end local v4    # "animationFileName":Ljava/lang/String;
    .end local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .end local v14    # "soundFileName":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 7719
    .local v8, "e":Ljava/io/IOException;
    const/16 v15, -0x32

    goto/16 :goto_1

    .line 7730
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v4    # "animationFileName":Ljava/lang/String;
    .restart local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .restart local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .restart local v14    # "soundFileName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 7731
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 7733
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 7734
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 7736
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_b

    .line 7737
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 7740
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7741
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7743
    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 7745
    const/4 v11, -0x1

    move v15, v11

    .line 7746
    goto/16 :goto_1

    .line 7749
    .end local v4    # "animationFileName":Ljava/lang/String;
    .end local v9    # "fileInfo":Ljava/io/File;
    .end local v12    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v13    # "shutdownSoundTargetPath":Ljava/lang/String;
    .end local v14    # "soundFileName":Ljava/lang/String;
    :cond_c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v11

    .line 7750
    goto/16 :goto_1
.end method

.method public setShuttingDownAnimation(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)I
    .locals 13
    .param p1, "animFD"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "soundFD"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    const/4 v10, -0x1

    .line 7754
    const/4 v5, 0x0

    .line 7755
    .local v5, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7756
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 7758
    .local v8, "token":J
    iget-boolean v11, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->isNotSupported:Z

    if-eqz v11, :cond_0

    .line 7760
    const/4 v5, -0x6

    .line 7817
    .end local v5    # "result":I
    :goto_0
    return v5

    .line 7763
    .restart local v5    # "result":I
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    .line 7764
    :cond_1
    const/16 v5, -0x32

    goto :goto_0

    .line 7767
    :cond_2
    new-instance v2, Ljava/io/File;

    const-string v11, "/data/b2b"

    invoke-direct {v2, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7768
    .local v2, "dir":Ljava/io/File;
    const/4 v1, 0x0

    .line 7769
    .local v1, "created":Z
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_4

    .line 7770
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 7772
    if-nez v1, :cond_3

    .line 7773
    const-string v11, "KnoxCustomManagerService"

    const-string v12, "/data/b2b directory creating fail"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v10

    .line 7774
    goto :goto_0

    .line 7777
    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7780
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v1, :cond_b

    .line 7781
    :cond_5
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V

    .line 7782
    new-instance v4, Ljava/io/File;

    const-string v11, "/data/b2b/ShutdownFileInfo.txt"

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7785
    .local v4, "fileInfo":Ljava/io/File;
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 7786
    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->deleteExistingFile(Ljava/io/File;)V

    .line 7789
    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 7790
    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermission(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7797
    const-string v6, "/data/b2b/shutdownanimation.qmg"

    .line 7798
    .local v6, "shutdownAnimTargetPath":Ljava/lang/String;
    const-string v7, "/data/b2b/shutdownsound.ogg"

    .line 7800
    .local v7, "shutdownSoundTargetPath":Ljava/lang/String;
    invoke-direct {p0, v4, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    move v5, v10

    .line 7801
    goto :goto_0

    .line 7792
    .end local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 7793
    .local v3, "e":Ljava/io/IOException;
    const-string v11, "KnoxCustomManagerService"

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v10

    .line 7794
    goto :goto_0

    .line 7803
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .restart local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, v4, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->writePathToFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    move v5, v10

    .line 7804
    goto :goto_0

    .line 7806
    :cond_8
    invoke-direct {p0, p1, v6}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    move v5, v10

    .line 7807
    goto :goto_0

    .line 7809
    :cond_9
    invoke-direct {p0, p2, v7}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    move v5, v10

    .line 7810
    goto :goto_0

    .line 7813
    :cond_a
    invoke-direct {p0, v2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldExecutable(Ljava/io/File;)V

    .line 7814
    invoke-direct {p0, v4}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setPermissionWorldReadable(Ljava/io/File;)V

    .line 7816
    .end local v4    # "fileInfo":Ljava/io/File;
    .end local v6    # "shutdownAnimTargetPath":Ljava/lang/String;
    .end local v7    # "shutdownSoundTargetPath":Ljava/lang/String;
    :cond_b
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0
.end method

.method public setStatusBarClockState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 6453
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6454
    .local v0, "callingUid":I
    const/4 v1, 0x3

    .line 6455
    .local v1, "mode":I
    if-eqz p1, :cond_0

    .line 6456
    const/4 v1, 0x2

    .line 6458
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarClockModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setStatusBarIconsState(Z)I
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 6520
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6521
    .local v0, "callingUid":I
    const/4 v1, 0x3

    .line 6522
    .local v1, "mode":I
    if-eqz p1, :cond_0

    .line 6523
    const/4 v1, 0x2

    .line 6525
    :cond_0
    invoke-direct {p0, v1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarIconsModeLocal(II)I

    move-result v2

    return v2
.end method

.method public setStatusBarMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 6369
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6370
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setStatusBarModeLocal(II)I

    move-result v1

    return v1
.end method

.method public setStatusBarNotificationsState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 6589
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskOrSystemPermission()I

    move-result v0

    .line 6590
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 6592
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarNotificationsState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 6593
    invoke-direct {p0, p1}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enableStatusBarNotificationsLocal(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 6598
    :goto_0
    return v2

    .line 6594
    :catch_0
    move-exception v1

    .line 6595
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarNotificationsState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6596
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setStatusBarText(Ljava/lang/String;II)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I

    .prologue
    .line 4081
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4082
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 4084
    .local v2, "result":I
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    .line 4086
    const/16 v3, -0x29

    .line 4099
    :goto_0
    return v3

    .line 4088
    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1

    const/16 v3, 0x20

    if-le p3, v3, :cond_2

    .line 4089
    :cond_1
    const/16 v3, -0x32

    goto :goto_0

    .line 4091
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4092
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4093
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 4094
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4095
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 4099
    goto :goto_0

    .line 4096
    :catch_0
    move-exception v1

    .line 4097
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarText() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setStatusBarTextScrollWidth(Ljava/lang/String;III)I
    .locals 6
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "style"    # I
    .param p3, "size"    # I
    .param p4, "scrollwidth"    # I

    .prologue
    .line 6662
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6663
    .local v0, "callingUid":I
    const/4 v2, -0x1

    .line 6665
    .local v2, "result":I
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    if-eq p2, v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    .line 6667
    const/16 v3, -0x29

    .line 6684
    :goto_0
    return v3

    .line 6669
    :cond_0
    if-eqz p3, :cond_2

    const/4 v3, 0x4

    if-lt p3, v3, :cond_1

    const/16 v3, 0x20

    if-le p3, v3, :cond_2

    .line 6670
    :cond_1
    const/16 v3, -0x32

    goto :goto_0

    .line 6672
    :cond_2
    if-eqz p4, :cond_4

    const/16 v3, 0xa

    if-lt p4, v3, :cond_3

    const/16 v3, 0x140

    if-le p4, v3, :cond_4

    .line 6673
    :cond_3
    const/16 v3, -0x33

    goto :goto_0

    .line 6675
    :cond_4
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarText"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 6676
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextStyle"

    invoke-virtual {v3, v0, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6677
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextSize"

    invoke-virtual {v3, v0, v4, v5, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6678
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "statusBarTextScroll"

    invoke-virtual {v3, v0, v4, v5, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 6679
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->refreshStatusbar()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6680
    const/4 v2, 0x0

    :goto_1
    move v3, v2

    .line 6684
    goto :goto_0

    .line 6681
    :catch_0
    move-exception v1

    .line 6682
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStatusBarTextScrollWidth() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setStayAwakeState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 3067
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 3069
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3071
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "stay_on_while_plugged_in"

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3074
    const/4 v2, 0x0

    .line 3079
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3080
    return v2

    .line 3071
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 3075
    :catch_0
    move-exception v1

    .line 3076
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setStayAwakeState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3077
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setSystemLocale(Ljava/lang/String;Ljava/lang/String;)I
    .locals 13
    .param p1, "localeLanguage"    # Ljava/lang/String;
    .param p2, "localeCountry"    # Ljava/lang/String;

    .prologue
    const/16 v7, -0x2c

    .line 2355
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 2358
    .local v1, "callingUid":I
    const/4 v5, 0x0

    .line 2359
    .local v5, "locale":Ljava/util/Locale;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 2360
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2361
    .local v8, "token":J
    if-nez p2, :cond_1

    .line 2362
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 2366
    .restart local v5    # "locale":Ljava/util/Locale;
    :goto_0
    if-nez v5, :cond_2

    .line 2385
    .end local v8    # "token":J
    :cond_0
    :goto_1
    return v7

    .line 2364
    .restart local v8    # "token":J
    :cond_1
    new-instance v5, Ljava/util/Locale;

    .end local v5    # "locale":Ljava/util/Locale;
    invoke-direct {v5, p1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v5    # "locale":Ljava/util/Locale;
    goto :goto_0

    .line 2369
    :cond_2
    const/4 v10, 0x0

    .line 2370
    .local v10, "valid":Z
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v6

    .line 2371
    .local v6, "locales":[Ljava/util/Locale;
    move-object v0, v6

    .local v0, "arr$":[Ljava/util/Locale;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_2
    if-ge v2, v4, :cond_4

    aget-object v3, v0, v2

    .line 2372
    .local v3, "l":Ljava/util/Locale;
    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2373
    const/4 v10, 0x1

    .line 2371
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2376
    .end local v3    # "l":Ljava/util/Locale;
    :cond_4
    if-eqz v10, :cond_0

    .line 2379
    invoke-static {v5}, Lcom/android/internal/app/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 2380
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2381
    const/4 v7, 0x0

    .line 2382
    .local v7, "result":I
    goto :goto_1

    .line 2383
    .end local v0    # "arr$":[Ljava/util/Locale;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "locales":[Ljava/util/Locale;
    .end local v7    # "result":I
    .end local v8    # "token":J
    .end local v10    # "valid":Z
    :cond_5
    const/16 v7, -0x2c

    .restart local v7    # "result":I
    goto :goto_1
.end method

.method public setSystemRingtone(ILjava/lang/String;)I
    .locals 12
    .param p1, "ringtoneType"    # I
    .param p2, "ringtoneName"    # Ljava/lang/String;

    .prologue
    .line 2401
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2404
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2405
    .local v8, "token":J
    new-instance v6, Landroid/media/RingtoneManager;

    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v6, v10}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 2406
    .local v6, "rm":Landroid/media/RingtoneManager;
    const/4 v10, 0x1

    if-eq p1, v10, :cond_0

    const/4 v10, 0x2

    if-eq p1, v10, :cond_0

    const/4 v10, 0x4

    if-eq p1, v10, :cond_0

    .line 2409
    const/16 v2, -0x22

    .line 2436
    .local v2, "result":I
    :goto_0
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2438
    .end local v2    # "result":I
    :goto_1
    return v2

    .line 2411
    :cond_0
    if-nez p2, :cond_1

    .line 2412
    const/16 v2, -0x23

    goto :goto_1

    .line 2414
    :cond_1
    const/4 v1, 0x0

    .line 2415
    .local v1, "found":Z
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 2416
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    invoke-static {v10, p1, v11}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2417
    const/4 v1, 0x1

    .line 2430
    :cond_2
    if-eqz v1, :cond_5

    .line 2431
    const/4 v2, 0x0

    .restart local v2    # "result":I
    goto :goto_0

    .line 2419
    .end local v2    # "result":I
    :cond_3
    invoke-virtual {v6, p1}, Landroid/media/RingtoneManager;->setType(I)V

    .line 2420
    invoke-virtual {v6}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 2421
    .local v5, "ringtones":I
    const/4 v7, 0x0

    .local v7, "tone":I
    :goto_2
    if-ge v7, v5, :cond_2

    if-nez v1, :cond_2

    .line 2422
    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtone(I)Landroid/media/Ringtone;

    move-result-object v3

    .line 2423
    .local v3, "ringtone":Landroid/media/Ringtone;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v10}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2424
    invoke-virtual {v6, v7}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v4

    .line 2425
    .local v4, "ringtoneUri":Landroid/net/Uri;
    iget-object v10, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-static {v10, p1, v4}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 2426
    const/4 v1, 0x1

    .line 2421
    .end local v4    # "ringtoneUri":Landroid/net/Uri;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2433
    .end local v3    # "ringtone":Landroid/media/Ringtone;
    .end local v5    # "ringtones":I
    .end local v7    # "tone":I
    :cond_5
    const/16 v2, -0x23

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setSystemSoundsEnabledState(II)I
    .locals 10
    .param p1, "state"    # I
    .param p2, "elements"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 8775
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 8776
    .local v0, "callingUid":I
    if-eq p1, v6, :cond_0

    if-eqz p1, :cond_0

    .line 8777
    const/16 v2, -0x2b

    .line 8812
    :goto_0
    return v2

    .line 8780
    :cond_0
    if-ltz p2, :cond_1

    const/16 v7, 0x3f

    if-le p2, v7, :cond_2

    .line 8781
    :cond_1
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsEnabledState() failed - Invalid System Sounds type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8782
    const/16 v2, -0x32

    goto :goto_0

    .line 8784
    :cond_2
    const/4 v2, -0x6

    .line 8785
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 8787
    .local v4, "token":J
    and-int/lit8 v7, p2, 0x1

    if-ne v7, v6, :cond_3

    .line 8788
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "dtmf_tone"

    if-ne p1, v6, :cond_a

    move v7, v6

    :goto_1
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8790
    :cond_3
    and-int/lit8 v7, p2, 0x2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 8791
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "sound_effects_enabled"

    if-ne p1, v6, :cond_b

    move v7, v6

    :goto_2
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8793
    :cond_4
    and-int/lit8 v7, p2, 0x4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 8794
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "lockscreen_sounds_enabled"

    if-ne p1, v6, :cond_c

    move v7, v6

    :goto_3
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8796
    :cond_5
    and-int/lit8 v7, p2, 0x8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    .line 8797
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "haptic_feedback_enabled"

    if-ne p1, v6, :cond_d

    move v7, v6

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8799
    :cond_6
    and-int/lit8 v7, p2, 0x10

    const/16 v8, 0x10

    if-ne v7, v8, :cond_8

    .line 8800
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sip_key_feedback_sound"

    if-ne p1, v6, :cond_7

    move v3, v6

    :cond_7
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 8802
    :cond_8
    and-int/lit8 v3, p2, 0x20

    const/16 v7, 0x20

    if-ne v3, v7, :cond_9

    .line 8803
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "pen_detachment_notification"

    if-ne p1, v6, :cond_e

    const-string v3, "/system/media/audio/ui/Pen_att_noti1.ogg,/system/media/audio/ui/Pen_det_noti1.ogg"

    :goto_5
    invoke-static {v7, v8, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8806
    :cond_9
    const/4 v2, 0x0

    .line 8811
    :goto_6
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    :cond_a
    move v7, v3

    .line 8788
    goto :goto_1

    :cond_b
    move v7, v3

    .line 8791
    goto :goto_2

    :cond_c
    move v7, v3

    .line 8794
    goto :goto_3

    :cond_d
    move v7, v3

    .line 8797
    goto :goto_4

    .line 8803
    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    .line 8807
    :catch_0
    move-exception v1

    .line 8808
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsEnabledState() failed - persistence problem "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8809
    const/4 v2, -0x1

    goto :goto_6
.end method

.method public setSystemSoundsSilent()I
    .locals 8

    .prologue
    .line 2906
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2908
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2910
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "dtmf_tone"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2911
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "sound_effects_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2912
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "lockscreen_sounds_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2913
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "haptic_feedback_enabled"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2914
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "sip_key_feedback_sound"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2915
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "pen_detachment_notification"

    const/4 v7, 0x0

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2916
    const/4 v2, 0x0

    .line 2921
    .local v2, "result":I
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2922
    return v2

    .line 2917
    .end local v2    # "result":I
    :catch_0
    move-exception v1

    .line 2918
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setSystemSoundsSilent() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_0
.end method

.method public setToastEnabledState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4507
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4508
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4511
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4512
    const/4 v2, 0x0

    .line 4517
    :goto_0
    return v2

    .line 4513
    :catch_0
    move-exception v1

    .line 4514
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4515
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastGravity(III)I
    .locals 7
    .param p1, "gravity"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 5334
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5338
    .local v0, "callingUid":I
    const v3, 0x118000ff

    .line 5342
    .local v3, "validGravity":I
    const v4, -0x11800100

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 5344
    const/16 v2, -0x32

    .line 5357
    :goto_0
    return v2

    .line 5347
    :cond_0
    const/4 v2, -0x6

    .line 5349
    .local v2, "result":I
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravity"

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5350
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravityXOffset"

    invoke-virtual {v4, v0, v5, v6, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 5351
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "toastGravityYOffset"

    invoke-virtual {v4, v0, v5, v6, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5352
    const/4 v2, 0x0

    goto :goto_0

    .line 5353
    :catch_0
    move-exception v1

    .line 5354
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setToastGravity() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5355
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastGravityEnabledState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 5293
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 5294
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 5296
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastGravityEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5297
    const/4 v2, 0x0

    .line 5302
    :goto_0
    return v2

    .line 5298
    :catch_0
    move-exception v1

    .line 5299
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastGravityEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5300
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setToastShowPackageNameState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4547
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4548
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4551
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "toastShowPackageNameState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4552
    const/4 v2, 0x0

    .line 4557
    :goto_0
    return v2

    .line 4553
    :catch_0
    move-exception v1

    .line 4554
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setToastShowPackageNameState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setTorchOnVolumeButtonsState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 4208
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4210
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 4212
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "torchlight_enable"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4214
    const/4 v2, 0x0

    .line 4219
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4220
    return v2

    .line 4212
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4215
    :catch_0
    move-exception v1

    .line 4216
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTorchOnVolumeButtonsState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4217
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setUnknownSourcesState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1508
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1511
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1512
    .local v2, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/RestrictionPolicy;->isNonMarketAppAllowed()Z

    move-result v6

    if-nez v6, :cond_0

    move v1, v4

    .line 1513
    .local v1, "isRestricted":Z
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1514
    if-eqz v1, :cond_1

    .line 1515
    const-string v4, "KnoxCustomManagerService"

    const-string/jumbo v5, "setUnknownSourcesState() - eSDK non market app not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    const/4 v5, -0x7

    .line 1523
    :goto_1
    return v5

    .end local v1    # "isRestricted":Z
    :cond_0
    move v1, v5

    .line 1512
    goto :goto_0

    .line 1519
    .restart local v1    # "isRestricted":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1520
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "install_non_market_apps"

    if-eqz p1, :cond_2

    :goto_2
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1521
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :cond_2
    move v4, v5

    .line 1520
    goto :goto_2
.end method

.method public setUnlockSimOnBootState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 6164
    const/4 v2, -0x6

    .line 6165
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6167
    .local v0, "callingUid":I
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6169
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockOnBoot"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6170
    const/4 v2, 0x0

    .line 6176
    :cond_0
    :goto_0
    return v2

    .line 6171
    :catch_0
    move-exception v1

    .line 6172
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUnlockSimOnBootState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6173
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setUnlockSimPin(Ljava/lang/String;)I
    .locals 6
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 6207
    const/4 v2, -0x6

    .line 6208
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6210
    .local v0, "callingUid":I
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.telephony"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6212
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 6213
    const/16 v2, -0x32

    :cond_0
    :goto_0
    move v3, v2

    .line 6225
    :goto_1
    return v3

    .line 6214
    :cond_1
    const-string v3, "[0-9]+"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 6215
    const/16 v3, -0x32

    goto :goto_1

    .line 6217
    :cond_2
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "simUnlockPin"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6218
    const/4 v2, 0x0

    goto :goto_0

    .line 6220
    :catch_0
    move-exception v1

    .line 6221
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setUnlockSimOnBoot() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6222
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setUsbDeviceDefaultPackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)I
    .locals 10
    .param p1, "usbDevice"    # Landroid/hardware/usb/UsbDevice;
    .param p2, "applicationPackage"    # Ljava/lang/String;
    .param p3, "applicationUid"    # I

    .prologue
    .line 1414
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v1

    .line 1415
    .local v1, "callingUid":I
    const/4 v3, -0x6

    .line 1417
    .local v3, "result":I
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->checkDotString(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1418
    const/16 v5, -0x21

    .line 1443
    :goto_0
    return v5

    .line 1420
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1422
    .local v6, "token":J
    if-eqz p1, :cond_2

    .line 1423
    if-lez p3, :cond_1

    .line 1425
    :try_start_0
    const-string/jumbo v5, "usb"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1426
    .local v0, "binder":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v4

    .line 1427
    .local v4, "service":Landroid/hardware/usb/IUsbManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-interface {v4, p1, p2, v5}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 1428
    invoke-interface {v4, p1, p3}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1429
    const/4 v3, 0x0

    .line 1442
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v4    # "service":Landroid/hardware/usb/IUsbManager;
    :goto_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v3

    .line 1443
    goto :goto_0

    .line 1431
    :cond_1
    :try_start_1
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - Application UID not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/16 v3, -0x2e

    goto :goto_1

    .line 1435
    :cond_2
    const-string v5, "KnoxCustomManagerService"

    const-string/jumbo v8, "setUsbDeviceDefaultPackage() failed - USB device not specified "

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1436
    const/16 v3, -0x2f

    goto :goto_1

    .line 1438
    :catch_0
    move-exception v2

    .line 1439
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUsbDeviceDefaultPackage() failed - permission problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public setUsbMassStorageState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 6906
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6907
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbMassStorageStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setUsbNetAddresses(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "sourceAddress"    # Ljava/lang/String;
    .param p2, "destinationAddress"    # Ljava/lang/String;

    .prologue
    .line 7038
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7039
    .local v0, "callingUid":I
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetAddressesLocal(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public setUsbNetState(Z)I
    .locals 2
    .param p1, "status"    # Z

    .prologue
    .line 6972
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 6973
    .local v0, "callingUid":I
    invoke-direct {p0, p1, v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->setUsbNetStateLocal(ZI)I

    move-result v1

    return v1
.end method

.method public setUserInactivityTimeout(I)I
    .locals 10
    .param p1, "timeout"    # I

    .prologue
    const/16 v5, -0x2d

    .line 2207
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 2208
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 2209
    .local v2, "result":I
    const v8, 0x20c49b

    if-lt p1, v8, :cond_1

    .line 2230
    :cond_0
    :goto_0
    return v5

    .line 2212
    :cond_1
    if-ltz p1, :cond_0

    .line 2216
    mul-int/lit16 v4, p1, 0x3e8

    .line 2217
    .local v4, "timeout_val":I
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 2218
    .local v6, "token":J
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "user_activity_timeout"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2221
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2222
    .local v3, "systemIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2223
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2224
    const/4 v2, 0x0

    .end local v3    # "systemIntent":Landroid/content/Intent;
    .end local v6    # "token":J
    :goto_1
    move v5, v2

    .line 2230
    goto :goto_0

    .line 2225
    :catch_0
    move-exception v1

    .line 2226
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setUserInactivityTimeout() failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public setVibrationIntensity(II)I
    .locals 6
    .param p1, "mode"    # I
    .param p2, "value"    # I

    .prologue
    .line 7325
    const/4 v1, -0x6

    .line 7326
    .local v1, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 7328
    .local v0, "callingUid":I
    if-ltz p2, :cond_0

    const/4 v4, 0x5

    if-le p2, v4, :cond_1

    .line 7329
    :cond_0
    const/16 v4, -0x32

    .line 7350
    :goto_0
    return v4

    .line 7331
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 7332
    .local v2, "token":J
    packed-switch p1, :pswitch_data_0

    .line 7346
    const/16 v1, -0x2b

    .line 7349
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v4, v1

    .line 7350
    goto :goto_0

    .line 7334
    :pswitch_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_RECVCALL_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7335
    const/4 v1, 0x0

    .line 7336
    goto :goto_1

    .line 7338
    :pswitch_1
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7339
    const/4 v1, 0x0

    .line 7340
    goto :goto_1

    .line 7342
    :pswitch_2
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7343
    const/4 v1, 0x0

    .line 7344
    goto :goto_1

    .line 7332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setVolumeButtonRotationState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4275
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4276
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4279
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeButtonRotationState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4280
    const/4 v2, 0x0

    .line 4286
    :goto_0
    return v2

    .line 4281
    :catch_0
    move-exception v1

    .line 4282
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumeButtonRotationState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setVolumeControlStream(I)I
    .locals 7
    .param p1, "streamType"    # I

    .prologue
    .line 4018
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v1

    .line 4019
    .local v1, "callingUid":I
    const/4 v3, -0x6

    .line 4020
    .local v3, "result":I
    if-ltz p1, :cond_1

    const/4 v4, 0x4

    if-gt p1, v4, :cond_1

    .line 4022
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 4023
    .local v0, "am":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 4025
    :try_start_0
    iget-object v4, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "KNOX_CUSTOM"

    const-string/jumbo v6, "volumeControlStream"

    invoke-virtual {v4, v1, v5, v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4026
    const/4 v3, 0x0

    .line 4035
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    :goto_0
    return v3

    .line 4027
    .restart local v0    # "am":Landroid/media/AudioManager;
    :catch_0
    move-exception v2

    .line 4028
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "KnoxCustomManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setCheckCoverPopupState() failed - persistence problem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4029
    const/4 v3, -0x1

    goto :goto_0

    .line 4033
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v3, -0x32

    goto :goto_0
.end method

.method public setVolumeKeyAppState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4318
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v0

    .line 4319
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4321
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumeKeyAppState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4322
    const/4 v2, 0x0

    .line 4327
    :goto_0
    return v2

    .line 4323
    :catch_0
    move-exception v1

    .line 4324
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumeKeyAppState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4325
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setVolumeKeyAppsList(Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v7, -0x32

    .line 4362
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceProKioskPermission()I

    move-result v2

    .line 4363
    .local v2, "callingUid":I
    const/4 v6, -0x6

    .line 4365
    .local v6, "result":I
    const/4 v1, 0x0

    .line 4366
    .local v1, "appsStr":Ljava/lang/String;
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 4367
    const/4 v8, 0x0

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4391
    :cond_0
    :goto_0
    return v7

    .line 4371
    :cond_1
    const-string v5, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    .line 4372
    .local v5, "regex":Ljava/lang/String;
    const-string v1, ""

    .line 4373
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_3

    .line 4374
    if-lez v4, :cond_2

    .line 4375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4376
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4377
    .local v0, "appName":Ljava/lang/String;
    const-string v8, "(?i)^[a-z][a-z0-9_]*(\\.[a-z0-9_]+)+[a-z0-9_]$"

    invoke-virtual {v0, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4373
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4385
    .end local v0    # "appName":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "regex":Ljava/lang/String;
    :cond_3
    :try_start_0
    iget-object v7, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "KNOX_CUSTOM"

    const-string/jumbo v9, "volumeKeyAppsList"

    invoke-virtual {v7, v2, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4386
    const/4 v6, 0x0

    :goto_2
    move v7, v6

    .line 4391
    goto :goto_0

    .line 4387
    :catch_0
    move-exception v3

    .line 4388
    .local v3, "e":Ljava/lang/Exception;
    const-string v7, "KnoxCustomManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setVolumeKeyAppsList() failed - persistence problem "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4389
    const/4 v6, -0x1

    goto :goto_2
.end method

.method public setVolumePanelEnabledState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 3969
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 3970
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 3973
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "volumePanelEnabledState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3974
    const/4 v2, 0x0

    .line 3980
    :goto_0
    return v2

    .line 3975
    :catch_0
    move-exception v1

    .line 3976
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVolumePanelEnabledState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3977
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchDelay(I)I
    .locals 6
    .param p1, "delay"    # I

    .prologue
    .line 4805
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4806
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4808
    .local v2, "result":I
    if-lez p1, :cond_0

    const/16 v3, 0x258

    if-gt p1, v3, :cond_0

    .line 4809
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchDelay"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4810
    const/4 v2, 0x0

    .line 4818
    :goto_0
    return v2

    .line 4812
    :cond_0
    const/16 v2, -0x32

    goto :goto_0

    .line 4814
    :catch_0
    move-exception v1

    .line 4815
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchDelay() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4816
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchState(Z)I
    .locals 6
    .param p1, "state"    # Z

    .prologue
    .line 4722
    const/4 v2, -0x6

    .line 4723
    .local v2, "result":I
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4726
    .local v0, "callingUid":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4727
    const/4 v2, 0x0

    .line 4732
    :goto_0
    return v2

    .line 4728
    :catch_0
    move-exception v1

    .line 4729
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4730
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiAutoSwitchThreshold(I)I
    .locals 6
    .param p1, "threshold"    # I

    .prologue
    .line 4762
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4763
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4765
    .local v2, "result":I
    if-gez p1, :cond_0

    const/16 v3, -0xc8

    if-lt p1, v3, :cond_0

    .line 4766
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiAutoSwitchThreshold"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4767
    const/4 v2, 0x0

    .line 4775
    :goto_0
    return v2

    .line 4769
    :cond_0
    const/16 v2, -0x32

    goto :goto_0

    .line 4771
    :catch_0
    move-exception v1

    .line 4772
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiAutoSwitchThreshold() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4773
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiConnectedMessageState(Z)I
    .locals 6
    .param p1, "status"    # Z

    .prologue
    .line 4167
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v0

    .line 4168
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 4171
    .local v2, "result":I
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "KNOX_CUSTOM"

    const-string/jumbo v5, "wifiConnectedMessageState"

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4172
    const/4 v2, 0x0

    .line 4177
    :goto_0
    return v2

    .line 4173
    :catch_0
    move-exception v1

    .line 4174
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWifiConnectedMessageState() failed - persistence problem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4175
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiConnectionMonitorState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 2857
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2859
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2861
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_watchdog_poor_network_test_enabled"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2863
    const/4 v2, 0x0

    .line 2868
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2869
    return v2

    .line 2861
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2864
    :catch_0
    move-exception v1

    .line 2865
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiConnectionMonitorState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setWifiFrequencyBand(I)I
    .locals 10
    .param p1, "band"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 7107
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 7108
    .local v0, "callingUid":I
    const/4 v2, -0x6

    .line 7110
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 7113
    .local v4, "token":J
    :try_start_0
    iget-object v6, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 7114
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez p1, :cond_0

    .line 7115
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7116
    const/4 v2, 0x0

    .line 7135
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7136
    return v2

    .line 7117
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    if-ne p1, v8, :cond_1

    .line 7119
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_1
    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V

    .line 7120
    const/4 v2, 0x0

    goto :goto_0

    .line 7124
    :cond_1
    if-ne p1, v9, :cond_2

    .line 7125
    const/4 v6, 0x2

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 7126
    const/4 v2, 0x0

    goto :goto_0

    .line 7128
    :cond_2
    const/16 v2, -0x32

    goto :goto_0

    .line 7130
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 7131
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "KnoxCustomManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setPowerSavingMode() failed - persistence problem "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7132
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public setWifiHotspotEnabledState(I)I
    .locals 18
    .param p1, "state"    # I

    .prologue
    .line 7932
    const/4 v6, -0x6

    .line 7933
    .local v6, "result":I
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSystemPermission()I

    move-result v2

    .line 7936
    .local v2, "callingUid":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "android.hardware.telephony"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 7937
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string v16, "connectivity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 7938
    .local v3, "cm":Landroid/net/ConnectivityManager;
    const/4 v15, 0x0

    invoke-virtual {v3, v15}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 7939
    const/4 v15, -0x6

    .line 8000
    .end local v3    # "cm":Landroid/net/ConnectivityManager;
    :goto_0
    return v15

    .line 7944
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "phone"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 7945
    .local v7, "telMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 7946
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    .line 7947
    const/16 v15, -0x38

    goto :goto_0

    .line 7951
    :cond_1
    const/4 v15, 0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_2

    if-eqz p1, :cond_2

    .line 7952
    const/16 v15, -0x2b

    goto :goto_0

    .line 7954
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 7956
    .local v8, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v16, "wifi"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 7957
    .local v14, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 7958
    .local v11, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v10

    .line 7959
    .local v10, "wifiApState":I
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_7

    .line 7960
    const/16 v15, 0xc

    if-eq v10, v15, :cond_3

    const/16 v15, 0xd

    if-ne v10, v15, :cond_5

    .line 7963
    :cond_3
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 7964
    .local v5, "msg":Landroid/os/Message;
    const/16 v15, 0xc5

    iput v15, v5, Landroid/os/Message;->what:I

    .line 7965
    iput-object v11, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7966
    invoke-virtual {v14, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7994
    .end local v5    # "msg":Landroid/os/Message;
    :cond_4
    :goto_1
    const/4 v6, 0x0

    .line 7999
    .end local v10    # "wifiApState":I
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v14    # "wm":Landroid/net/wifi/WifiManager;
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v15, v6

    .line 8000
    goto :goto_0

    .line 7968
    .restart local v10    # "wifiApState":I
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "wm":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v15, 0x1

    :try_start_1
    invoke-virtual {v14, v11, v15}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 7970
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v13

    .line 7971
    .local v13, "wifiState":I
    const/4 v15, 0x2

    if-eq v13, v15, :cond_6

    const/4 v15, 0x3

    if-ne v13, v15, :cond_4

    .line 7973
    :cond_6
    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 7974
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_saved_state"

    const/16 v17, 0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 7995
    .end local v10    # "wifiApState":I
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v13    # "wifiState":I
    .end local v14    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v4

    .line 7996
    .local v4, "e":Ljava/lang/Exception;
    const-string v15, "KnoxCustomManagerService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "setWifiHotspotEnabledState() failed - persistence problem "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7997
    const/4 v6, -0x1

    goto :goto_2

    .line 7978
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v10    # "wifiApState":I
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    .restart local v14    # "wm":Landroid/net/wifi/WifiManager;
    :cond_7
    const/16 v15, 0xc

    if-eq v10, v15, :cond_8

    const/16 v15, 0xd

    if-ne v10, v15, :cond_4

    .line 7980
    :cond_8
    const/4 v15, 0x0

    const/16 v16, 0x0

    :try_start_2
    invoke-virtual/range {v14 .. v16}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7982
    const/4 v12, 0x0

    .line 7984
    .local v12, "wifiSavedState":I
    :try_start_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_saved_state"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v12

    .line 7988
    :goto_3
    const/4 v15, 0x1

    if-ne v12, v15, :cond_4

    .line 7989
    const/4 v15, 0x1

    :try_start_4
    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 7990
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string/jumbo v16, "wifi_saved_state"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 7985
    :catch_1
    move-exception v15

    goto :goto_3
.end method

.method public setWifiNetworkNotificationState(Z)I
    .locals 8
    .param p1, "status"    # Z

    .prologue
    .line 2882
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 2884
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2886
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_networks_available_notification_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v6, v7, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2888
    const/4 v2, 0x0

    .line 2893
    .local v2, "result":I
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2894
    return v2

    .line 2886
    .end local v2    # "result":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 2889
    :catch_0
    move-exception v1

    .line 2890
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "KnoxCustomManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setWifiNetworkNotificationState() failed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    const/4 v2, -0x1

    .restart local v2    # "result":I
    goto :goto_1
.end method

.method public setWifiState(ZLjava/lang/String;Ljava/lang/String;)I
    .locals 11
    .param p1, "status"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 1575
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v0

    .line 1578
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1579
    .local v6, "token":J
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    .line 1580
    .local v3, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    invoke-virtual {v3, v8}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1581
    .local v2, "isRestricted":Z
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1582
    if-eqz v2, :cond_1

    .line 1583
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - eSDK wifi disabled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    const/4 v4, -0x7

    .line 1630
    :goto_1
    return v4

    .end local v2    # "isRestricted":Z
    :cond_0
    move v2, v8

    .line 1580
    goto :goto_0

    .line 1587
    .restart local v2    # "isRestricted":Z
    :cond_1
    const/4 v4, -0x6

    .line 1589
    .local v4, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 1591
    :try_start_0
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "wifi"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 1592
    .local v5, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    .line 1593
    if-eqz v5, :cond_6

    .line 1594
    if-eqz p1, :cond_5

    .line 1596
    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    .line 1597
    const-string v8, "KnoxCustomManagerService"

    const-string/jumbo v9, "setWifiState() - ssid == null && password != null"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/16 v4, -0x28

    .line 1621
    :goto_2
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "KNOX_CUSTOM"

    const-string v10, "WifiState"

    invoke-virtual {v8, v0, v9, v10, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1629
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_3
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1600
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    if-eqz p2, :cond_3

    .line 1601
    :try_start_1
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1602
    iget-object v8, p0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v8, p2, p3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1612
    :cond_3
    :goto_4
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1613
    const/4 v4, 0x0

    goto :goto_2

    .line 1604
    :cond_4
    const/4 v8, 0x1

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    .line 1605
    const/4 v8, 0x0

    sput-boolean v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    .line 1606
    sput-object p2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    .line 1607
    const/4 v8, 0x0

    sput-object v8, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    .line 1608
    sput-object p3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1625
    .end local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 1626
    .local v1, "e":Ljava/lang/Exception;
    const-string v8, "KnoxCustomManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiState() failed - persistence problem "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/4 v4, -0x1

    goto :goto_3

    .line 1617
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v5    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_5
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1618
    const/4 v4, 0x0

    goto :goto_2

    .line 1623
    :cond_6
    const/4 v4, -0x1

    goto :goto_3
.end method

.method public setWifiStateEap(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 16
    .param p1, "status"    # Z
    .param p2, "ssid"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 1643
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->enforceSettingPermission()I

    move-result v4

    .line 1646
    .local v4, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1647
    .local v10, "token":J
    invoke-direct/range {p0 .. p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v8

    .line 1648
    .local v8, "restrictionPolicy":Landroid/app/enterprise/RestrictionPolicy;
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Landroid/app/enterprise/RestrictionPolicy;->isWiFiEnabled(Z)Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v6, 0x1

    .line 1649
    .local v6, "isRestricted":Z
    :goto_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1650
    if-eqz v6, :cond_1

    .line 1651
    const-string v13, "KnoxCustomManagerService"

    const-string/jumbo v14, "setWifiState() - eSDK wifi disabled"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    const/4 v9, -0x7

    .line 1703
    :goto_1
    return v9

    .line 1648
    .end local v6    # "isRestricted":Z
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 1655
    .restart local v6    # "isRestricted":Z
    :cond_1
    const/4 v9, -0x6

    .line 1657
    .local v9, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1659
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "wifi"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    .line 1660
    .local v12, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v13, 0x0

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1661
    if-eqz v12, :cond_8

    .line 1662
    if-eqz p1, :cond_7

    .line 1665
    const/4 v7, 0x0

    .line 1666
    .local v7, "ok":Z
    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 1667
    const/4 v7, 0x1

    .line 1671
    :cond_2
    :goto_2
    if-nez v7, :cond_4

    .line 1672
    const/16 v9, -0x28

    .line 1701
    .end local v7    # "ok":Z
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 1668
    .restart local v7    # "ok":Z
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_3
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    if-nez p4, :cond_2

    .line 1669
    const/4 v7, 0x1

    goto :goto_2

    .line 1674
    :cond_4
    :try_start_1
    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1675
    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    .line 1676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v13, v1, v2, v3}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    :cond_5
    :goto_4
    const/4 v9, 0x0

    goto :goto_3

    .line 1679
    :cond_6
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiConfigure:Z

    .line 1680
    const/4 v13, 0x1

    sput-boolean v13, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiEap:Z

    .line 1681
    sput-object p2, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiSSID:Ljava/lang/String;

    .line 1682
    sput-object p3, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiUsername:Ljava/lang/String;

    .line 1683
    sput-object p4, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->mWifiPassword:Ljava/lang/String;

    .line 1685
    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1697
    .end local v7    # "ok":Z
    .end local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v5

    .line 1698
    .local v5, "e":Ljava/lang/Exception;
    const-string v13, "KnoxCustomManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setWifiState() failed - persistence problem "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    const/4 v9, -0x1

    goto :goto_3

    .line 1691
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_7
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1692
    const/4 v9, 0x0

    goto :goto_3

    .line 1695
    :cond_8
    const/4 v9, -0x1

    goto :goto_3
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V

    .line 284
    return-void
.end method
