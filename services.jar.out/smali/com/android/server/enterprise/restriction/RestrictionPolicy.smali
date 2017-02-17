.class public Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.super Landroid/app/enterprise/IRestrictionPolicy$Stub;
.source "RestrictionPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;
    }
.end annotation


# static fields
.field private static final ACTIVATION_LOCK_MASK:J = 0x8000000L

.field private static final ADVANCED_RESTRICTION_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

.field private static final AIRPLANE_MODE_MASK:J = 0x80L

.field private static final ALLOW_NON_MARKET_MASK:J = 0x1000000000000L

.field private static final ANDROID_BEAM_MASK:J = 0x40000L

.field private static final AUDIO_RECORD_MASK:J = 0x1L

.field private static final BACKGROUND_DATA_MASK:J = 0x4000000000000L

.field private static final BACKGROUND_LIMIT_MASK:J = 0x4000L

.field private static final BACKUP_MASK:J = 0x100000000000L

.field private static final BLUETOOTH_TETHERING_MASK:J = 0x8000000000L

.field private static final BROADCAST_DELAY:I = 0x1388

.field private static final CAMERA_MASK:J = 0x1000000000L

.field private static final CCMODE_MASK:J = 0x40000000L

.field private static final CELLULAR_DATA_MASK:J = 0x400000000000L

.field private static final CLIPBOARD_MASK:J = 0x200L

.field private static final CLIPBOARD_SHARE_MASK:J = 0x20000L

.field static final CONF_FILE:Ljava/lang/String; = "/data/system/enterprise.conf"

.field private static final CONTAINER_MIGRATION_AGENT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.knox.containeragent"

.field public static final DEFAULT_NETWORK_POLICY_APPLIED:Ljava/lang/String; = "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

.field private static final DEFAULT_RESTRICTION_MASK:J = 0x3fffffc3b9fffefL

.field private static final DEVELOPER_MODE_MASK:J = 0x40L

.field private static final EDM_SDCARD_WRITEACCESS_BLOCKED:Ljava/lang/String; = "sdCardWriteAccessBlocked"

.field private static final FACTORYRESET_EFS_DIR_PATH:Ljava/lang/String; = "/efs/MDM"

.field private static final FACTORYRESET_EFS_FILE_PATH:Ljava/lang/String; = "/efs/MDM/FactoryReset"

.field private static final FACTORY_RESET_MASK:J = 0x8000000000000L

.field private static final FAST_ENCRYPTION_MASK:J = 0x10L

.field private static final FIRMWARE_RECOVER_MASK:J = 0x1000000L

.field private static final FIRMWARE_UPDATE_MASK:J = 0x4000000L

.field private static final GOOGLE_AUTOSYNC_MASK:J = 0x2000000L

.field private static final GOOGLE_CRASH_REPORT_MASK:J = 0x80000000000000L

.field private static final HEADPHONE_MASK:J = 0x10000000L

.field private static final HOME_KEY_MASK:J = 0x10000000000000L

.field private static final KILL_ACTIVITY_MASK:J = 0x8000L

.field private static final LOCKSCREEN_STATE_MASK:J = 0x800000L

.field static final MASK_AND_COLUMN_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MASS_STORAGE_MASK:J = 0x40000000000L

.field private static final MAX_BACKGROUND_PROCESSES:I = 0x14

.field private static final MESSAGE_ID:I = 0x1

.field private static final MICROPHONE_MASK:J = 0x4L

.field private static final MOBILE_LIMIT_MASK:J = 0x10000L

.field private static final MOCK_LOCATION_MASK:J = 0x80000000000L

.field private static final NFC_MASK:J = 0x200000000000L

.field private static final NON_TRUSTED_APP_MASK:J = 0x400000L

.field private static final ODE_VERIFICATION_MASK:J = 0x80000000L

.field private static final OTA_UPGRADE_MASK:J = 0x40000000000000L

.field private static final PACKAGE_CAMERA_APP:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final PACKAGE_DIRECT_SHARE_PKGNAME:Ljava/lang/String; = "com.sec.android.directshare"

.field private static final PACKAGE_SETTINGS_APP:Ljava/lang/String; = "com.android.settings"

.field static final PARAM_INDEX_FACTORY_RESET:I = 0x3

.field static final PARAM_INDEX_FIRMWARE_RECOVERY:I = 0x7

.field static final PARAM_INDEX_MDM1:I = 0x1e

.field static final PARAM_INDEX_MDM2:I = 0x1f

.field static final PARAM_MDM1_VALUE:I = 0x2

.field static final PARAM_MDM2_VALUE:I = 0x6

.field static final PARAM_PATH:Ljava/lang/String; = "/dev/block/param"

.field static final PARAM_POLICY_VALUE:I = 0x8

.field static final PARAM_START_POS:I = 0x600

.field private static final POWER_OFF_MASK:J = 0x800L

.field private static final PREVENT_ADMIN_ACTIVATION_MASK:J = 0x200000000L

.field private static final PREVENT_ADMIN_INSTALL_MASK:J = 0x100000000L

.field private static final SBEAM_MASK:J = 0x400L

.field private static final SCREEN_CAPTURE_MASK:J = 0x10000000000L

.field private static final SCREEN_PINNING_MASK:J = 0x200000000000000L

.field private static final SDCARD_MASK:J = 0x800000000000L

.field private static final SDCARD_MOVE_MASK:J = 0x20000000L

.field private static final SDCARD_WRITE_MASK:J = 0x800000000L

.field private static final SECURE_KEY_PAD_MASK:J = 0x200000L

.field private static final SETTINGS_MASK:J = 0x8L

.field private static final SHARE_LIST_MASK:J = 0x100000L

.field private static final SMART_CLIP_MASK:J = 0x100000000000000L

.field private static final STATUS_BAR_MASK:J = 0x100L

.field private static final STOP_SYSTEM_APP_MASK:J = 0x1000L

.field private static final SVOICE_MASK:J = 0x20L

.field private static final TAG:Ljava/lang/String; = "RestrictionPolicy"

.field private static final USB_DEBUGGING_MASK:J = 0x20000000000L

.field private static final USB_MEDIAPLAYER_MASK:J = 0x2000000000000L

.field private static final USB_STORAGE_MASK:J = 0x80000L

.field private static final USB_TETHERING_MASK:J = 0x2000000000L

.field private static final VIDEO_RECORD_MASK:J = 0x2L

.field private static final VPN_MASK:J = 0x20000000000000L

.field private static final WALLPAPER_CHANGE_MASK:J = 0x400000000L

.field private static final WIFI_DIRECT_MASK:J = 0x2000L

.field private static final WIFI_TETHERING_MASK:J = 0x4000000000L

.field private static final excludedAdminList:[Ljava/lang/String;


# instance fields
.field private mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBootReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsbMassStorageAvailable:Z

.field private mPersonaMgr:Landroid/os/PersonaManager;

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mRestrictionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private preAdminRemoval_SDCardWrite:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 207
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.sec.enterprise.knox.cloudmdm.smdms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.sec.sprextension.phoneinfo"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    .line 292
    new-instance v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    .line 402
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/vpn/VpnInfoPolicy;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "appPolicy"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p3, "vpnPolicy"    # Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 414
    invoke-direct {p0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;-><init>()V

    .line 209
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 210
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 213
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 223
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    .line 378
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    .line 379
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 450
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$2;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 492
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 584
    iput-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 865
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$4;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    .line 2585
    new-instance v1, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$5;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 415
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    .line 416
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 417
    iput-object p2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 418
    iput-object p3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    .line 419
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 420
    .local v0, "filterBoot":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 421
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    const-string/jumbo v1, "edm.intent.action.internal.sec.DEFAULT_NETWORK_POLICY_APPLIED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 423
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 424
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 428
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;

    .line 430
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;

    new-instance v2, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;

    invoke-direct {v2, p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Lcom/android/server/enterprise/restriction/RestrictionPolicy$1;)V

    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 433
    :cond_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBar:Landroid/app/StatusBarManager;

    .line 434
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    .line 437
    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mWindowManager:Landroid/view/IWindowManager;

    .line 438
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    .line 440
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mountSdCard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/enterprise/restriction/RestrictionPolicy;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/storage/StorageEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/os/PersonaManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateUSBMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/restriction/RestrictionPolicy;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/restriction/RestrictionPolicy;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserAdded(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/restriction/RestrictionPolicy;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    .param p1, "x1"    # I

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->onUserRemoved(I)V

    return-void
.end method

.method private applySdCardWriteAccessPolicy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2563
    const-string/jumbo v1, "sdCardWriteAccessBlocked"

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "0"

    :goto_0
    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2564
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isExternalSdCardPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2565
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageManager()Landroid/os/storage/StorageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 2566
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->unmountSdCard(Z)Z

    .line 2568
    :cond_0
    return-void

    .line 2563
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method private clearCacheAsUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2720
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2722
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2724
    return-void

    .line 2722
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private createEFSFile(Ljava/io/File;)Z
    .locals 7
    .param p1, "efsFile"    # Ljava/io/File;

    .prologue
    const/4 v4, 0x1

    .line 5070
    const/4 v1, 0x0

    .line 5071
    .local v1, "ret":Z
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "createEFSFile"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5073
    if-nez p1, :cond_0

    .line 5074
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "createEFSFile : efsFile fail"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5075
    const/4 v4, 0x0

    .line 5091
    :goto_0
    return v4

    .line 5077
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5078
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "createEFSFile : efsFile exist"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5083
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 5084
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v2

    .line 5085
    .local v2, "retread":Z
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v3

    .line 5086
    .local v3, "retwrite":Z
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createEFSFile: setReadable - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " setWritable - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5090
    .end local v2    # "retread":Z
    .end local v3    # "retwrite":Z
    :goto_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "createEFSFile : create "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    .line 5091
    goto :goto_0

    .line 5087
    :catch_0
    move-exception v0

    .line 5088
    .local v0, "ie":Ljava/io/IOException;
    const-string v4, "RestrictionPolicy"

    const-string v5, "Exception : "

    invoke-static {v4, v5, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private deleteEFSFile(Ljava/io/File;)Z
    .locals 4
    .param p1, "efsFile"    # Ljava/io/File;

    .prologue
    .line 5095
    const/4 v0, 0x0

    .line 5096
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "createEFSFile"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5098
    if-nez p1, :cond_0

    .line 5099
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "deleteEFSFile : efsFile fail"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5100
    const/4 v1, 0x0

    .line 5108
    :goto_0
    return v1

    .line 5102
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5103
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v2, "deleteEFSFile : efsFile exist"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5104
    const/4 v1, 0x1

    goto :goto_0

    .line 5106
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 5107
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "deleteEFSFile : delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 5108
    goto :goto_0
.end method

.method private disableNFC()V
    .locals 5

    .prologue
    .line 1553
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1555
    .local v2, "token":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 1557
    .local v1, "nfcAdapter":Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1565
    .end local v1    # "nfcAdapter":Landroid/nfc/NfcAdapter;
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1566
    return-void

    .line 1562
    :catch_0
    move-exception v0

    .line 1563
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 657
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 662
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_CERTIFICATE"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 600
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceMigrationAgentSecurityCheck()V
    .locals 8

    .prologue
    .line 553
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 554
    .local v4, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 555
    .local v3, "pid":I
    const-string v2, ""

    .line 557
    .local v2, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/app/IActivityManager;->getPackageFromAppProcesses(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 561
    :goto_0
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check permission for : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, "caller":Ljava/lang/String;
    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    if-eqz v0, :cond_0

    const-string v5, "com.sec.knox.containeragent"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 567
    :cond_0
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No Container Migration Permission to calling Package : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 558
    .end local v0    # "caller":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 559
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to getPackageFromAppProcesses : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "caller":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private enforceOwnerOnlyAndAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 652
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_HW_CONTROL"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_LOCATION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 647
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 642
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceStatusBarExpansion()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2942
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2943
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 2947
    :goto_0
    return-void

    .line 2945
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStatusBar:Landroid/app/StatusBarManager;

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0
.end method

.method private enforceTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 614
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_RESTRICTION"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 615
    return-object p1
.end method

.method private extractFromRestrictionCache(JZI)Z
    .locals 5
    .param p1, "policyMask"    # J
    .param p3, "defaultValue"    # Z
    .param p4, "userId"    # I

    .prologue
    .line 924
    move v1, p3

    .line 926
    .local v1, "result":Z
    invoke-direct {p0, p4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v0

    .line 928
    .local v0, "restrictionPolicies":Ljava/lang/Long;
    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    and-long/2addr v2, p1

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 932
    :cond_0
    :goto_0
    return v1

    .line 929
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAppUid(ILjava/lang/String;)I
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1248
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1250
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1253
    :goto_0
    return v2

    .line 1251
    :catch_0
    move-exception v0

    .line 1252
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package Name not found error = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getExternalSdCardPath()Ljava/lang/String;
    .locals 7

    .prologue
    .line 2639
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageManagerAdapter()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    .line 2640
    .local v3, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object v0, v3

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 2641
    .local v4, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "sd"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2642
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 2645
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :goto_1
    return-object v5

    .line 2640
    .restart local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2645
    .end local v4    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private declared-synchronized getMountService()Landroid/os/storage/IMountService;
    .locals 5

    .prologue
    .line 2571
    monitor-enter p0

    const/4 v1, 0x0

    .line 2573
    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string/jumbo v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 2574
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 2575
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2582
    .end local v2    # "service":Landroid/os/IBinder;
    :goto_0
    monitor-exit p0

    return-object v1

    .line 2577
    .restart local v2    # "service":Landroid/os/IBinder;
    :cond_0
    :try_start_1
    const-string v3, "RestrictionPolicy"

    const-string v4, "Can\'t get mount service"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2579
    .end local v2    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 2580
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2571
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 4984
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN_INFO"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4986
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 4987
    const/4 v2, 0x0

    .line 4991
    :goto_0
    return-object v2

    .line 4990
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 4991
    .local v0, "compName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getRestrictionPoliciesLocked(I)Ljava/lang/Long;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 976
    const/4 v0, 0x0

    .line 977
    .local v0, "restrictionPolicies":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 979
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "restrictionPolicies":Ljava/lang/Long;
    check-cast v0, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 981
    .restart local v0    # "restrictionPolicies":Ljava/lang/Long;
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 983
    return-object v0

    .line 981
    .end local v0    # "restrictionPolicies":Ljava/lang/Long;
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method private getService()Landroid/app/enterprise/IEnterpriseDeviceManager;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 444
    const-string/jumbo v0, "enterprise_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEnterpriseDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    return-object v0
.end method

.method private getTopActivityUserId()I
    .locals 7

    .prologue
    .line 2364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2365
    .local v2, "token":J
    const/4 v1, 0x0

    .line 2368
    .local v1, "userId":I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v4, :cond_0

    .line 2369
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getFocusedUser()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 2376
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    :goto_1
    return v1

    .line 2371
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/app/IActivityManager;->getTasks(II)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2373
    :catch_0
    move-exception v0

    .line 2374
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "RestrictionPolicy"

    const-string v5, "Failed to get top activity user id"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2376
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private getUidForAdminActivation(I)I
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v5, -0x1

    .line 4844
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 4846
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4848
    .local v3, "uid":Ljava/lang/Integer;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "RESTRICTION"

    const-string/jumbo v9, "preventAdminActivation"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 4850
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 4851
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 4858
    .end local v2    # "ret":Z
    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_1
    :goto_0
    return v5

    .line 4852
    .restart local v3    # "uid":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 4853
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v6, "RestrictionPolicy"

    const-string v7, "Admin not found on database "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUidForAdminInstallation(I)I
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v5, -0x1

    .line 4864
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "RESTRICTION"

    const-string v8, "adminUid"

    invoke-virtual {v6, v7, v8, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 4866
    .local v4, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 4868
    .local v3, "uid":Ljava/lang/Integer;
    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-string v8, "RESTRICTION"

    const-string/jumbo v9, "preventAdminInstallation"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 4870
    .local v2, "ret":Z
    if-eqz v2, :cond_0

    .line 4871
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 4878
    .end local v2    # "ret":Z
    .end local v3    # "uid":Ljava/lang/Integer;
    :cond_1
    :goto_0
    return v5

    .line 4872
    .restart local v3    # "uid":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 4873
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const-string v6, "RestrictionPolicy"

    const-string v7, "Admin not found on database "

    invoke-static {v6, v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3951
    if-nez p1, :cond_0

    .line 3952
    new-instance p1, Landroid/app/enterprise/ContextInfo;

    .end local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p1, v5}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 3955
    .restart local p1    # "cxtInfo":Landroid/app/enterprise/ContextInfo;
    :cond_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 3956
    .local v0, "caller":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 3957
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 3958
    .local v1, "index":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 3959
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 3961
    :cond_1
    const-string v5, "android.uid.systemui"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3963
    .local v2, "token":J
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 3964
    .local v4, "userId":I
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3968
    .end local v1    # "index":I
    .end local v2    # "token":J
    .end local v4    # "userId":I
    :goto_0
    return v4

    :cond_2
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    goto :goto_0
.end method

.method private initializeCacheAsUser(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2709
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2711
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide v2, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2713
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2715
    return-void

    .line 2713
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method private isCameraEnabledAsUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 773
    const-wide v0, 0x1000000000L

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method private isCameraEnabledEx(ILandroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "useId"    # I
    .param p2, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 745
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 746
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isCameraEnabledEx isCameraEnabledEx with OWNER return false"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :goto_0
    return v1

    .line 750
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 751
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isCameraEnabledEx isRestrictedByConstrainedState return true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :cond_1
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 757
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iget v3, p2, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabledWithUID(Landroid/content/ComponentName;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 758
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "isCameraEnabledEx dpm.getCameraDisabledWithUID return true"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledAsUser(I)Z

    move-result v1

    goto :goto_0
.end method

.method private isExistEFSFile()Z
    .locals 7

    .prologue
    .line 5113
    const/4 v1, 0x0

    .line 5114
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5115
    .local v2, "token":J
    new-instance v0, Ljava/io/File;

    const-string v4, "/efs/MDM/FactoryReset"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5117
    .local v0, "efsFile":Ljava/io/File;
    if-nez v0, :cond_0

    .line 5118
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "isExistEFSFile : efsFile fail"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5119
    const/4 v4, 0x0

    .line 5126
    :goto_0
    return v4

    .line 5122
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 5123
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5125
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isExistEFSFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v1

    .line 5126
    goto :goto_0
.end method

.method private isExternalSdCardPresent()Z
    .locals 3

    .prologue
    .line 2631
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getStorageManagerAdapter()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v0

    .line 2632
    .local v0, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 2633
    const/4 v1, 0x1

    .line 2635
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFactoryResetAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2307
    const-wide/high16 v0, 0x8000000000000L

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    return v0
.end method

.method private isFirmwareRecoveryAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4098
    const-wide/32 v2, 0x1000000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4102
    .local v0, "ret":Z
    return v0
.end method

.method private isNewAdminActivationEnabledInternal(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 4919
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    move-result v0

    return v0
.end method

.method private isNewAdminActivationEnabledInternal(IZ)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4907
    const-wide v4, 0x200000000L

    invoke-direct {p0, v4, v5, v3, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4911
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 4912
    const v1, 0x1040c27

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4914
    :cond_0
    const-string v4, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isNewAdminActivationEnabledInternal : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4915
    if-nez v0, :cond_2

    :goto_1
    return v2

    :cond_1
    move v1, v3

    .line 4914
    goto :goto_0

    :cond_2
    move v2, v3

    .line 4915
    goto :goto_1
.end method

.method private isNewAdminInstallationEnabledInternal(IZ)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4791
    const-wide v2, 0x100000000L

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4795
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNewAdminInstallationEnabledInternal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4796
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 4797
    const v2, 0x1040c28

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4799
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isScreenCaptureEnabled(IZ)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 1301
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabledEx(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    const/4 v0, 0x0

    .line 1304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSmartClipModeAllowedAsUser(ZI)Z
    .locals 4
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 5156
    const-wide/high16 v2, 0x100000000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 5160
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 5161
    const v1, 0x1040c2a

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5164
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSmartClipModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5166
    return v0
.end method

.method private isValidDevice(I)Z
    .locals 1
    .param p1, "device"    # I

    .prologue
    const/4 v0, 0x1

    .line 5369
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadRestrictionCache(I)V
    .locals 30
    .param p1, "userId"    # I

    .prologue
    .line 2727
    const-wide v24, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2729
    .local v14, "restrictionPolicies":Ljava/lang/Long;
    const/16 v16, 0x0

    .line 2730
    .local v16, "selectionValues":Landroid/content/ContentValues;
    const/16 v23, -0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_2

    .line 2731
    new-instance v16, Landroid/content/ContentValues;

    .end local v16    # "selectionValues":Landroid/content/ContentValues;
    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2732
    .restart local v16    # "selectionValues":Landroid/content/ContentValues;
    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v23

    const-string v24, "#SelectClause#"

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2737
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2755
    :goto_0
    sget-object v23, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    .line 2757
    .local v10, "hashValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v23

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-interface {v10, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 2759
    .local v5, "columns":[Ljava/lang/String;
    array-length v0, v5

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    const-string v24, "adminUid"

    aput-object v24, v5, v23

    .line 2761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v23, v0

    const-string v24, "RESTRICTION"

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursor(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2766
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_8

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2769
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2770
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v23

    if-nez v23, :cond_7

    .line 2771
    const-wide v24, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 2773
    const-string v23, "adminUid"

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 2779
    .local v6, "adminUid":J
    long-to-int v0, v6

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v23, v6, v24

    if-nez v23, :cond_6

    .line 2780
    long-to-int v0, v6

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v19

    .line 2784
    .local v19, "userIdInternal":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 2785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    check-cast v0, Ljava/lang/Long;

    move-object v14, v0

    .line 2788
    :cond_0
    sget-object v23, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->MASK_AND_COLUMN_NAME:Ljava/util/Map;

    invoke-interface/range {v23 .. v23}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2789
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v23

    move/from16 v0, v23

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 2790
    .local v15, "ret":I
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    .line 2792
    .local v13, "restrictionMask":Ljava/lang/Long;
    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v15, v0, :cond_4

    const-wide v24, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    and-long v24, v24, v26

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-eqz v23, :cond_4

    .line 2793
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    or-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v14

    goto :goto_2

    .line 2739
    .end local v5    # "columns":[Ljava/lang/String;
    .end local v6    # "adminUid":J
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v10    # "hashValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "restrictionMask":Ljava/lang/Long;
    .end local v15    # "ret":I
    .end local v19    # "userIdInternal":I
    :catchall_0
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v23

    .line 2742
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "user"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/UserManager;

    .line 2743
    .local v20, "userManager":Landroid/os/UserManager;
    invoke-virtual/range {v20 .. v20}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v21

    .line 2744
    .local v21, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 2746
    :try_start_2
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12    # "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/pm/UserInfo;

    .line 2747
    .local v17, "user":Landroid/content/pm/UserInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 2750
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "user":Landroid/content/pm/UserInfo;
    :catchall_1
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v23

    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto/16 :goto_0

    .line 2794
    .end local v20    # "userManager":Landroid/os/UserManager;
    .end local v21    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v5    # "columns":[Ljava/lang/String;
    .restart local v6    # "adminUid":J
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .restart local v10    # "hashValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v13    # "restrictionMask":Ljava/lang/Long;
    .restart local v15    # "ret":I
    .restart local v19    # "userIdInternal":I
    :cond_4
    if-nez v15, :cond_1

    const-wide v24, 0x3fffffc3b9fffefL    # 2.05226471418323E-289

    :try_start_3
    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    and-long v24, v24, v26

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    cmp-long v23, v24, v26

    if-nez v23, :cond_1

    .line 2795
    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    const-wide/16 v28, -0x1

    xor-long v26, v26, v28

    and-long v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    goto/16 :goto_2

    .line 2799
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v13    # "restrictionMask":Ljava/lang/Long;
    .end local v15    # "ret":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2801
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v19    # "userIdInternal":I
    :cond_6
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/16 :goto_1

    .line 2804
    .end local v6    # "adminUid":J
    :catchall_2
    move-exception v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2805
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v23

    .line 2804
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 2805
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2810
    :cond_8
    const/16 v23, -0x1

    move/from16 v0, p1

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    .line 2811
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v23

    if-nez v23, :cond_a

    const/16 v23, 0x1

    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 2823
    :cond_9
    return-void

    .line 2811
    :cond_a
    const/16 v23, 0x0

    goto :goto_4

    .line 2814
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v22

    .line 2815
    .local v22, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v4

    .line 2816
    .local v4, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_5
    if-ge v11, v4, :cond_9

    .line 2817
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v18, v0

    .line 2819
    .local v18, "userHandle":I
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v23

    if-nez v23, :cond_c

    const/16 v23, 0x1

    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V

    .line 2816
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 2819
    :cond_c
    const/16 v23, 0x0

    goto :goto_6
.end method

.method private manageEFSFile(Z)Z
    .locals 11
    .param p1, "allow"    # Z

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 5033
    const-string v8, "RestrictionPolicy"

    const-string/jumbo v9, "manageEFSFile"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5035
    const/4 v2, 0x0

    .line 5036
    .local v2, "ret":Z
    new-instance v0, Ljava/io/File;

    const-string v8, "/efs/MDM"

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5038
    .local v0, "efsDir":Ljava/io/File;
    if-nez v0, :cond_0

    .line 5039
    const-string v8, "RestrictionPolicy"

    const-string/jumbo v9, "manageEFSFile : efsDir fail"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5066
    :goto_0
    return v5

    .line 5043
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5044
    .local v6, "token":J
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_2

    .line 5045
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 5046
    invoke-virtual {v0, v10, v5}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v3

    .line 5047
    .local v3, "retread":Z
    invoke-virtual {v0, v10, v10}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v4

    .line 5048
    .local v4, "retwrite":Z
    const-string v5, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "manageEFSFile: setReadable - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " setWritable - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5059
    .end local v3    # "retread":Z
    .end local v4    # "retwrite":Z
    :goto_1
    new-instance v1, Ljava/io/File;

    const-string v5, "/efs/MDM/FactoryReset"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5060
    .local v1, "efsFile":Ljava/io/File;
    if-eqz p1, :cond_3

    .line 5061
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->deleteEFSFile(Ljava/io/File;)Z

    move-result v2

    .line 5065
    :goto_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v2

    .line 5066
    goto :goto_0

    .line 5050
    .end local v1    # "efsFile":Ljava/io/File;
    :cond_1
    const-string v8, "RestrictionPolicy"

    const-string/jumbo v9, "manageEFSFile : mkdirs fail"

    invoke-static {v8, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5051
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 5055
    :cond_2
    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 5056
    invoke-virtual {v0, v10, v10}, Ljava/io/File;->setWritable(ZZ)Z

    goto :goto_1

    .line 5063
    .restart local v1    # "efsFile":Ljava/io/File;
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->createEFSFile(Ljava/io/File;)Z

    move-result v2

    goto :goto_2
.end method

.method private matchRegex([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "tetherableRegexs"    # [Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .prologue
    .line 989
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 990
    .local v3, "regex":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 991
    const/4 v4, 0x1

    .line 993
    .end local v3    # "regex":Ljava/lang/String;
    :goto_1
    return v4

    .line 989
    .restart local v3    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 993
    .end local v3    # "regex":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private mountSdCard()Z
    .locals 10

    .prologue
    .line 2649
    const/4 v5, 0x0

    .line 2650
    .local v5, "success":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 2651
    .local v3, "mountService":Landroid/os/storage/IMountService;
    if-eqz v3, :cond_1

    .line 2653
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v2

    .line 2654
    .local v2, "ex_path":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 2655
    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "mountSdCard() : fail to mount media because path is null."

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v5

    .line 2671
    .end local v2    # "ex_path":Ljava/lang/String;
    .end local v5    # "success":Z
    .local v6, "success":I
    :goto_0
    return v6

    .line 2658
    .end local v6    # "success":I
    .restart local v2    # "ex_path":Ljava/lang/String;
    .restart local v5    # "success":Z
    :cond_0
    invoke-interface {v3, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I

    move-result v4

    .line 2659
    .local v4, "result":I
    if-nez v4, :cond_2

    .line 2660
    const/4 v5, 0x1

    .end local v2    # "ex_path":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_1
    :goto_1
    move v6, v5

    .line 2671
    .restart local v6    # "success":I
    goto :goto_0

    .line 2662
    .end local v6    # "success":I
    .restart local v2    # "ex_path":Ljava/lang/String;
    .restart local v4    # "result":I
    :cond_2
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mountSdCard() : Unable to mount media - error code : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2665
    .end local v2    # "ex_path":Ljava/lang/String;
    .end local v4    # "result":I
    :catch_0
    move-exception v1

    .line 2666
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "mountSdCard() : failed by RemoteException."

    invoke-static {v7, v8, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2667
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 2668
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "RestrictionPolicy"

    const-string/jumbo v8, "mountSdCard() : failed by Exception."

    invoke-static {v7, v8, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private onUserAdded(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 545
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCache(I)V

    .line 546
    return-void
.end method

.method private onUserRemoved(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 581
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->clearCacheAsUser(I)V

    .line 582
    return-void
.end method

.method private readData(I)Z
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 4106
    const/4 v0, 0x1

    .line 4107
    .local v0, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4110
    .local v2, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->readParamData()[B

    move-result-object v4

    .line 4111
    .local v4, "value":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4113
    if-nez v4, :cond_0

    .line 4114
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "readParamData : fail to read"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4128
    .end local v0    # "ret":Z
    .local v1, "ret":I
    :goto_0
    return v1

    .line 4117
    .end local v1    # "ret":I
    .restart local v0    # "ret":Z
    :cond_0
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readParamData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4122
    const/16 v5, 0x1e

    aget-byte v5, v4, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/16 v5, 0x1f

    aget-byte v5, v4, v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_1

    aget-byte v5, v4, p1

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 4124
    const/4 v0, 0x0

    .line 4127
    :cond_1
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readParamData : index - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ret - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 4128
    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method private native readParamData()[B
.end method

.method private rollBackSVoice(I)V
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 3320
    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v1

    .line 3322
    .local v1, "state":Z
    if-eqz v1, :cond_0

    .line 3324
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v5, "voiceControl"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getGenericValueAsUser(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3327
    .local v0, "oldState":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3328
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3330
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "voice_input_control"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v4, v5, v6, p1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3332
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3335
    .end local v0    # "oldState":Ljava/lang/String;
    .end local v2    # "token":J
    :cond_0
    return-void
.end method

.method private sendIntentGearManagerforUpdate(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    .line 5439
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5441
    .local v2, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.edm.intent.action.GEARPOLICY_ENABLE_INTERNAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5445
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5447
    :goto_0
    return-void

    .line 5442
    :catch_0
    move-exception v0

    .line 5443
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "RestrictionPolicy"

    const-string/jumbo v4, "sendIntentGearManagerforUpdate() fas failed."

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5445
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private setLockScreenViewProperty(IZ)Z
    .locals 6
    .param p1, "view"    # I
    .param p2, "on"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3832
    const/4 v0, 0x0

    .line 3833
    .local v0, "ret":Z
    and-int/lit8 v1, p1, 0x1

    if-ne v1, v2, :cond_3

    .line 3834
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "kg_multiple_lockscreen"

    if-eqz p2, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 3837
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "kg_enable_camera_widget"

    if-eqz p2, :cond_2

    :goto_1
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    .line 3846
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v1, v3

    .line 3834
    goto :goto_0

    :cond_2
    move v2, v3

    .line 3837
    goto :goto_1

    .line 3839
    :cond_3
    and-int/lit8 v1, p1, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    .line 3840
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "lock_screen_shortcut"

    if-eqz p2, :cond_4

    move v1, v2

    :goto_3
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 3843
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "set_shortcuts_mode"

    if-eqz p2, :cond_5

    :goto_4
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    goto :goto_2

    :cond_4
    move v1, v3

    .line 3840
    goto :goto_3

    :cond_5
    move v2, v3

    .line 3843
    goto :goto_4
.end method

.method private unmountSdCard(Z)Z
    .locals 5
    .param p1, "force"    # Z

    .prologue
    .line 2612
    const/4 v3, 0x0

    .line 2613
    .local v3, "success":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v2

    .line 2614
    .local v2, "mountService":Landroid/os/storage/IMountService;
    if-eqz v2, :cond_0

    .line 2615
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getExternalSdCardPath()Ljava/lang/String;

    move-result-object v1

    .line 2617
    .local v1, "extStoragePath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2618
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v2, v1, p1, v4}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2619
    const/4 v3, 0x1

    .line 2627
    .end local v1    # "extStoragePath":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 2621
    .restart local v1    # "extStoragePath":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2623
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 2624
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateRestrictionCache(Ljava/lang/String;JZI)V
    .locals 10
    .param p1, "policy"    # Ljava/lang/String;
    .param p2, "policyMask"    # J
    .param p4, "defaultValue"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 937
    move v2, p4

    .line 938
    .local v2, "result":Z
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v6, 0x0

    const-string v7, "RESTRICTION"

    invoke-virtual {v5, v6, v7, p1, p5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanListAsUser(ILjava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v4

    .line 941
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 942
    .local v3, "value":Z
    if-eq v3, p4, :cond_0

    .line 943
    move v2, v3

    .line 948
    .end local v3    # "value":Z
    :cond_1
    invoke-direct {p0, p5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v1

    .line 949
    .local v1, "restrictionPolicies":Ljava/lang/Long;
    if-nez v1, :cond_2

    .line 954
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5, p5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 955
    invoke-direct {p0, p5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->initializeCacheAsUser(I)V

    .line 956
    invoke-direct {p0, p5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getRestrictionPoliciesLocked(I)Ljava/lang/Long;

    move-result-object v1

    .line 960
    :cond_2
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 962
    if-eqz v1, :cond_3

    .line 963
    if-eqz v2, :cond_4

    .line 964
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    or-long/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 968
    :goto_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCache:Ljava/util/HashMap;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    :cond_3
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 973
    return-void

    .line 966
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    xor-long/2addr v8, p2

    and-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 971
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mRestrictionCacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v5
.end method

.method private updateScreenCaptureDisabledInWindowManager(IZ)V
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "disabled"    # Z

    .prologue
    .line 1258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1260
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, p2}, Landroid/view/IWindowManager;->setScreenCaptureDisabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1266
    :goto_0
    return-void

    .line 1261
    :catch_0
    move-exception v0

    .line 1262
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "RestrictionPolicy"

    const-string v4, "Unable to notify WindowManager."

    invoke-static {v1, v4, v0}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1264
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private updateUSBMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2073
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2076
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2079
    :cond_0
    return-void
.end method

.method private writeData(IZ)Z
    .locals 8
    .param p1, "index"    # I
    .param p2, "allow"    # Z

    .prologue
    const/16 v7, 0x1f

    const/16 v6, 0x1e

    .line 4132
    const/4 v1, 0x0

    .line 4133
    .local v1, "ret":Z
    const/16 v5, 0x20

    new-array v4, v5, [B

    .line 4134
    .local v4, "value":[B
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 4135
    .local v0, "random":Ljava/security/SecureRandom;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4137
    .local v2, "token":J
    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 4142
    if-nez p2, :cond_0

    .line 4143
    const/16 v5, 0x8

    aput-byte v5, v4, p1

    .line 4144
    const/4 v5, 0x2

    aput-byte v5, v4, v6

    .line 4145
    const/4 v5, 0x6

    aput-byte v5, v4, v7

    .line 4152
    :goto_0
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeData : index - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " value - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeParamData([B)Z

    move-result v1

    .line 4155
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4156
    return v1

    .line 4147
    :cond_0
    const/4 v5, 0x7

    aput-byte v5, v4, p1

    .line 4148
    const/4 v5, 0x1

    aput-byte v5, v4, v6

    .line 4149
    const/4 v5, 0x5

    aput-byte v5, v4, v7

    goto :goto_0
.end method

.method private native writeParamData([B)Z
.end method


# virtual methods
.method public addAllowedFOTAVersions(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "version":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, -0x1

    .line 5272
    const/4 v5, 0x1

    .line 5273
    .local v5, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5276
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5277
    .local v1, "fotaVersion":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5278
    :cond_0
    const-string v7, "RestrictionPolicy"

    const-string v8, "addAllowedFotaVersion : null string"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5302
    .end local v1    # "fotaVersion":Ljava/lang/String;
    :cond_1
    :goto_1
    return v6

    .line 5282
    .restart local v1    # "fotaVersion":Ljava/lang/String;
    :cond_2
    const-string v7, "/"

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 5283
    .local v3, "index1":I
    const-string v7, "/"

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 5285
    .local v4, "index2":I
    if-eq v3, v6, :cond_3

    if-ne v4, v6, :cond_4

    .line 5286
    :cond_3
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllowedFotaVersion : invalid format : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5290
    :cond_4
    const-string v7, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAllowedFotaVersion : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5292
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 5293
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    iget v8, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5294
    const-string/jumbo v7, "version"

    invoke-virtual {v0, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5295
    iget-object v7, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "RESTRICTION_FOTALIST"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v7

    and-int/2addr v5, v7

    .line 5297
    goto :goto_0

    .line 5299
    .end local v0    # "cv":Landroid/content/ContentValues;
    .end local v1    # "fotaVersion":Ljava/lang/String;
    .end local v3    # "index1":I
    .end local v4    # "index2":I
    :cond_5
    if-eqz v5, :cond_1

    .line 5300
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public addNewAdminActivationAppWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 4923
    .local p2, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4924
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 4926
    .local v3, "userId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4927
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 4928
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4929
    .local v1, "s":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 4930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 4934
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "preventAdminActivationWhiteList"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putString(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    return v4
.end method

.method public allowActivationLock(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4401
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4403
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowActivationLock"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 4407
    .local v6, "ret":Z
    const-string v1, "allowActivationLock"

    const-wide/32 v2, 0x8000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4413
    return v6
.end method

.method public allowAirplaneMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 4217
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4218
    const/4 v13, 0x1

    .line 4219
    .local v13, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowAirplaneMode : allow = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4222
    if-nez p2, :cond_4

    .line 4223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4226
    .local v14, "token":J
    const/4 v12, 0x0

    .line 4227
    .local v12, "put":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v12

    .line 4229
    const-string v3, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowAirplaneMode : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v12, :cond_3

    const-string/jumbo v2, "success"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "to change settings value"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4233
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowAirplaneMode"

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v13, v2

    .line 4237
    if-eqz v12, :cond_1

    .line 4238
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4239
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v9, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4243
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4251
    .end local v12    # "put":Z
    .end local v14    # "token":J
    :goto_1
    const-string v3, "allowAirplaneMode"

    const-wide/16 v4, 0x80

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4257
    if-eqz v13, :cond_2

    .line 4258
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4260
    .local v10, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_5

    const-string v7, "allowed"

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " airplane mode."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4265
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4269
    .end local v10    # "psToken":J
    :cond_2
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowAirplaneMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    return v13

    .line 4229
    .restart local v12    # "put":Z
    .restart local v14    # "token":J
    :cond_3
    :try_start_2
    const-string/jumbo v2, "fail"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4243
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4246
    .end local v12    # "put":Z
    .end local v14    # "token":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowAirplaneMode"

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v13, v2

    goto/16 :goto_1

    .line 4260
    .restart local v10    # "psToken":J
    :cond_5
    :try_start_3
    const-string/jumbo v7, "disallowed"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 4265
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowAndroidBeam(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3527
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3528
    const/4 v11, 0x1

    .line 3529
    .local v11, "ret":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowAndroidBeam"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v11, v2

    .line 3533
    const-string v3, "allowAndroidBeam"

    const-wide/32 v4, 0x40000

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3539
    if-eqz v11, :cond_0

    if-nez p2, :cond_0

    .line 3540
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3542
    .local v14, "token":J
    :try_start_0
    const-string/jumbo v2, "nfc"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v10

    .line 3544
    .local v10, "nfcAdapter":Landroid/nfc/INfcAdapter;
    if-nez v10, :cond_2

    .line 3546
    const-string v2, "RestrictionPolicy"

    const-string v3, "RestrictionPolicy.allowAndroidBeam(): can\'t bind service"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3547
    const/4 v11, 0x0

    .line 3556
    .end local v10    # "nfcAdapter":Landroid/nfc/INfcAdapter;
    :goto_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3558
    .end local v14    # "token":J
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowAndroidBeam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    if-eqz v11, :cond_1

    .line 3560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3562
    .local v12, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_4

    const-string/jumbo v7, "enabled"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Android Beam."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3568
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3571
    .end local v12    # "psToken":J
    :cond_1
    return v11

    .line 3549
    .restart local v10    # "nfcAdapter":Landroid/nfc/INfcAdapter;
    .restart local v14    # "token":J
    :cond_2
    :try_start_2
    invoke-interface {v10}, Landroid/nfc/INfcAdapter;->disableNdefPush()Z

    .line 3550
    invoke-interface {v10}, Landroid/nfc/INfcAdapter;->isNdefPushEnabled()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    and-int/2addr v11, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 3552
    .end local v10    # "nfcAdapter":Landroid/nfc/INfcAdapter;
    :catch_0
    move-exception v9

    .line 3553
    .local v9, "e":Landroid/os/RemoteException;
    const/4 v11, 0x0

    .line 3554
    const-string v2, "RestrictionPolicy"

    const-string v3, "RestrictionPolicy.allowAndroidBeam() exception : "

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3562
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v14    # "token":J
    .restart local v12    # "psToken":J
    :cond_4
    :try_start_3
    const-string/jumbo v7, "disabled"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 3568
    :catchall_0
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowAudioRecord(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 2997
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2999
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowAudioRecording"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3002
    .local v6, "result":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowAudioRecord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    const-string v1, "allowAudioRecording"

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3010
    return v6
.end method

.method public allowBackgroundProcessLimit(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3128
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3129
    const/4 v7, 0x1

    .line 3130
    .local v7, "ret":Z
    if-nez p2, :cond_0

    .line 3132
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3134
    .local v8, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->setProcessLimit(I)V

    .line 3135
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3141
    .end local v8    # "token":J
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 3142
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "limitOfBackgroundProcess"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v7, v0

    .line 3145
    const-string/jumbo v1, "limitOfBackgroundProcess"

    const-wide/16 v2, 0x4000

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3151
    :cond_1
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isWifiDirectAllowed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    return v7

    .line 3136
    :catch_0
    move-exception v6

    .line 3137
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail getting ActivityManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public allowClipboardShare(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3282
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3283
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3284
    .local v5, "userId":I
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowClipboardShare"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3287
    .local v6, "ret":Z
    const-string v1, "allowClipboardShare"

    const-wide/32 v2, 0x20000

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3293
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowClipboardShare : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3295
    return v6
.end method

.method public allowDeveloperMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 4164
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4165
    const/4 v8, 0x1

    .line 4166
    .local v8, "resetOptions":Z
    if-nez p2, :cond_0

    .line 4171
    new-instance v7, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    .line 4175
    .local v7, "allowDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    invoke-virtual {v7}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetDeveloperModeOptions()Z

    move-result v8

    .line 4180
    .end local v7    # "allowDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowDeveloperMode"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4186
    .local v9, "ret":Z
    const-string v1, "allowDeveloperMode"

    const-wide/16 v2, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4196
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_1

    const-string v5, "allowed"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " developer mode."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 4200
    if-eqz v9, :cond_2

    if-eqz v8, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 4196
    :cond_1
    const-string/jumbo v5, "disallowed"

    goto :goto_0

    .line 4200
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public allowFactoryReset(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2225
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2226
    const/4 v10, 0x0

    .line 2227
    .local v10, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v9

    .line 2228
    .local v9, "oldState":Z
    const/4 v8, 0x1

    .line 2229
    .local v8, "newState":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2231
    .local v11, "userId":I
    new-instance v7, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 2233
    .local v7, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFactoryReset : oldState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allow - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "factoryresetallowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 2238
    const-string/jumbo v1, "factoryresetallowed"

    const-wide/high16 v2, 0x8000000000000L

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2244
    if-eqz v10, :cond_1

    .line 2245
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    .line 2247
    if-ne v9, v8, :cond_0

    .line 2248
    const-string v0, "RestrictionPolicy"

    const-string v1, "allowFactoryReset : do not need to update"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    :goto_0
    return v4

    .line 2260
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(Z)Z

    .line 2262
    if-nez v11, :cond_1

    .line 2264
    :try_start_0
    const-string v0, "Restriction"

    const-string v1, "allowFactoryReset"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 2265
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFactoryReset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " allow = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2272
    :cond_1
    :goto_1
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFactoryReset : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v10

    .line 2274
    goto :goto_0

    .line 2266
    :catch_0
    move-exception v6

    .line 2267
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public allowFastEncryption(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4541
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4543
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowFastEncryption"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 4546
    .local v8, "ret":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowFastEncryption : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4548
    const-string v1, "allowFastEncryption"

    const-wide/16 v2, 0x10

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4554
    if-eqz v8, :cond_0

    .line 4555
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4557
    .local v10, "token":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4566
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4569
    .end local v10    # "token":J
    :cond_0
    :goto_0
    return v8

    .line 4559
    .restart local v10    # "token":J
    :catch_0
    move-exception v7

    .line 4560
    .local v7, "re":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail getting ActivityManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4561
    const/4 v8, 0x0

    .line 4566
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4562
    .end local v7    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 4563
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "RestrictionPolicy"

    const-string v1, "RestrictionPolicy.allowFastEncryption() exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4564
    const/4 v8, 0x0

    .line 4566
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public allowFirmwareAutoUpdate(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4364
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4365
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowFirmwareAutoUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4367
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowFirmwareAutoUpdate"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 4370
    .local v6, "ret":Z
    const-string v1, "allowFirmwareAutoUpdate"

    const-wide/32 v2, 0x4000000

    move-object v0, p0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4376
    return v6
.end method

.method public allowFirmwareRecovery(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4040
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4041
    const/4 v9, 0x0

    .line 4042
    .local v9, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    .line 4043
    .local v7, "oldState":Z
    const/4 v6, 0x1

    .line 4045
    .local v6, "newState":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFirmwareRecovery :oldState - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", allow - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "firmwarerecoveryallowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4050
    const-string/jumbo v1, "firmwarerecoveryallowed"

    const-wide/32 v2, 0x1000000

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4056
    if-eqz v9, :cond_1

    .line 4057
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 4059
    if-ne v7, v6, :cond_0

    .line 4060
    const-string v0, "RestrictionPolicy"

    const-string v1, "allowFirmwareRecovery : do not need to update"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    :goto_0
    return v4

    .line 4063
    :cond_0
    const/4 v8, 0x0

    .line 4064
    .local v8, "param":Z
    const/4 v0, 0x7

    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeData(IZ)Z

    move-result v8

    .line 4065
    if-nez v8, :cond_1

    .line 4066
    const-string v0, "RestrictionPolicy"

    const-string v1, "allowFirmwareRecovery : write fail"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4071
    .end local v8    # "param":Z
    :cond_1
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowFirmwareRecovery : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v9

    .line 4072
    goto :goto_0
.end method

.method public allowGoogleAccountsAutoSync(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 28
    .param p1, "ctxInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 4287
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4288
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4290
    .local v8, "userId":I
    if-nez p2, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4292
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 4294
    .local v26, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v10

    .line 4295
    .local v10, "accountMngr":Landroid/accounts/AccountManager;
    const-string v2, "com.google"

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v10, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v15

    .line 4299
    .local v15, "googleAccounts":[Landroid/accounts/Account;
    array-length v2, v15

    if-eqz v2, :cond_2

    .line 4300
    invoke-static {}, Landroid/content/ContentResolver;->getContentService()Landroid/content/IContentService;

    move-result-object v13

    .line 4302
    .local v13, "contentService":Landroid/content/IContentService;
    :try_start_0
    invoke-interface {v13, v8}, Landroid/content/IContentService;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v24

    .line 4304
    .local v24, "syncAdapters":[Landroid/content/SyncAdapterType;
    move-object v11, v15

    .local v11, "arr$":[Landroid/accounts/Account;
    array-length v0, v11

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v16, 0x0

    .local v16, "i$":I
    move/from16 v17, v16

    .end local v11    # "arr$":[Landroid/accounts/Account;
    .end local v16    # "i$":I
    .end local v18    # "len$":I
    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget-object v9, v11, v17

    .line 4305
    .local v9, "account":Landroid/accounts/Account;
    move-object/from16 v12, v24

    .local v12, "arr$":[Landroid/content/SyncAdapterType;
    array-length v0, v12

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v16, 0x0

    .end local v17    # "i$":I
    .restart local v16    # "i$":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v23, v12, v16

    .line 4306
    .local v23, "sa":Landroid/content/SyncAdapterType;
    const-string v2, "com.google"

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-interface {v13, v9, v2, v8}, Landroid/content/IContentService;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4309
    move-object/from16 v0, v23

    iget-object v2, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v13, v9, v2, v3, v8}, Landroid/content/IContentService;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4305
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 4304
    .end local v23    # "sa":Landroid/content/SyncAdapterType;
    :cond_1
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    .end local v16    # "i$":I
    .restart local v17    # "i$":I
    goto :goto_0

    .line 4316
    .end local v9    # "account":Landroid/accounts/Account;
    .end local v12    # "arr$":[Landroid/content/SyncAdapterType;
    .end local v17    # "i$":I
    .end local v19    # "len$":I
    .end local v24    # "syncAdapters":[Landroid/content/SyncAdapterType;
    :catch_0
    move-exception v14

    .line 4317
    .local v14, "ex":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get content service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 4320
    .end local v13    # "contentService":Landroid/content/IContentService;
    .end local v14    # "ex":Landroid/os/RemoteException;
    :cond_2
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4323
    .end local v10    # "accountMngr":Landroid/accounts/AccountManager;
    .end local v15    # "googleAccounts":[Landroid/accounts/Account;
    .end local v26    # "token":J
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowGoogleAccountsAutoSync"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v22

    .line 4326
    .local v22, "ret":Z
    if-eqz v22, :cond_4

    .line 4327
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 4329
    .local v20, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Admin "

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v25, " has "

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    if-eqz p2, :cond_5

    const-string/jumbo v7, "enabled"

    :goto_2
    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v25, " Autosync of Google account."

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4333
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4337
    .end local v20    # "psToken":J
    :cond_4
    const-string v4, "allowGoogleAccountsAutoSync"

    const-wide/32 v5, 0x2000000

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4343
    return v22

    .line 4329
    .restart local v20    # "psToken":J
    :cond_5
    :try_start_2
    const-string/jumbo v7, "disabled"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 4333
    :catchall_0
    move-exception v2

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowGoogleCrashReport(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2478
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2480
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "googleCrashReportEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2484
    .local v6, "result":Z
    const-string/jumbo v1, "googleCrashReportEnabled"

    const-wide/high16 v2, 0x80000000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2490
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowGoogleCrashReport : allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    return v6
.end method

.method public allowKillingActivitiesOnLeave(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3171
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3172
    const/4 v7, 0x1

    .line 3173
    .local v7, "ret":Z
    if-nez p2, :cond_0

    .line 3175
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3176
    .local v8, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/app/IActivityManager;->setAlwaysFinish(Z)V

    .line 3177
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "always_finish_activities"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v4

    :goto_0
    and-int/2addr v7, v0

    .line 3179
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3185
    .end local v8    # "token":J
    :cond_0
    :goto_1
    if-eqz v7, :cond_1

    .line 3186
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowKeepActivities"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v7, v0

    .line 3189
    const-string v1, "allowKeepActivities"

    const-wide/32 v2, 0x8000

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3195
    :cond_1
    return v7

    .restart local v8    # "token":J
    :cond_2
    move v0, v5

    .line 3177
    goto :goto_0

    .line 3180
    .end local v8    # "token":J
    :catch_0
    move-exception v6

    .line 3181
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail getting ActivityManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public allowLockScreenView(Landroid/app/enterprise/ContextInfo;IZ)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "view"    # I
    .param p3, "allow"    # Z

    .prologue
    const/4 v10, 0x1

    .line 3850
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3852
    const/4 v3, 0x0

    .line 3853
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3856
    .local v4, "token":J
    if-eq p2, v10, :cond_0

    const/4 v6, 0x2

    if-eq p2, v6, :cond_0

    .line 3857
    :try_start_0
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-direct {v6}, Ljava/security/InvalidParameterException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3882
    :catch_0
    move-exception v0

    .line 3883
    .local v0, "e":Ljava/security/InvalidParameterException;
    :try_start_1
    const-string v6, "RestrictionPolicy"

    const-string v7, "allowLockScreenView() failed: INVALID PARAMETER INPUT"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3887
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3890
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :goto_0
    return v3

    .line 3860
    :cond_0
    const/4 v2, 0x0

    .line 3861
    .local v2, "propertySet":Z
    :try_start_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3862
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z
    :try_end_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 3865
    :cond_1
    const v1, 0xffff

    .line 3867
    .local v1, "lValue":I
    :try_start_3
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "RESTRICTION"

    const-string v9, "allowLockScreenViews"

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/InvalidParameterException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    .line 3873
    :goto_1
    if-ne v10, p3, :cond_3

    or-int/2addr v1, p2

    .line 3874
    :goto_2
    :try_start_4
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v8, "RESTRICTION"

    const-string v9, "allowLockScreenViews"

    invoke-virtual {v6, v7, v8, v9, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 3879
    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3880
    invoke-direct {p0, p2, p3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z
    :try_end_4
    .catch Ljava/security/InvalidParameterException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3887
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3869
    :catch_1
    move-exception v0

    .line 3870
    .local v0, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :try_start_5
    const-string v6, "RestrictionPolicy"

    const-string v7, "allowLockScreenView() failed: cannot get value from edmstorageprovider."

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/InvalidParameterException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 3884
    .end local v0    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    .end local v1    # "lValue":I
    .end local v2    # "propertySet":Z
    :catch_2
    move-exception v0

    .line 3885
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v6, "RestrictionPolicy"

    const-string v7, "allowLockScreenView() failed: unexpected exception"

    invoke-static {v6, v7, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 3887
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3873
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "lValue":I
    .restart local v2    # "propertySet":Z
    :cond_3
    xor-int/lit8 v6, p2, -0x1

    and-int/2addr v1, v6

    goto :goto_2

    .line 3887
    .end local v1    # "lValue":I
    .end local v2    # "propertySet":Z
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public allowOTAUpgrade(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 2435
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2437
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowOTAUpgrade : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    .line 2440
    .local v7, "oldState":Z
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "OTAUpgradeEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 2444
    const-string v1, "OTAUpgradeEnabled"

    const-wide/high16 v2, 0x40000000000000L

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2450
    invoke-virtual {p0, v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 2451
    .local v6, "newState":Z
    if-eq v6, v7, :cond_0

    .line 2452
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v1, "com.sec.android.fotaclient"

    invoke-virtual {v0, p1, v1, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    .line 2453
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v1, "com.wssyncmldm"

    invoke-virtual {v0, p1, v1, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    .line 2454
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v1, "com.ws.dm"

    invoke-virtual {v0, p1, v1, v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationState(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    .line 2456
    :cond_0
    return v4
.end method

.method public allowPowerOff(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 2950
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2954
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2955
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed. Caller is not COM container or owner"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2956
    const/4 v6, 0x0

    .line 2972
    :goto_0
    return v6

    .line 2959
    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 2961
    .local v5, "userId":I
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowPowerOff : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "powerOffAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2966
    .local v6, "ret":Z
    const-string/jumbo v1, "powerOffAllowed"

    const-wide/16 v2, 0x800

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    goto :goto_0
.end method

.method public allowSBeam(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3469
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3470
    const/4 v12, 0x1

    .line 3471
    .local v12, "ret":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSBeam"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v12, v2

    .line 3475
    const-string v3, "allowSBeam"

    const-wide/16 v4, 0x400

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3481
    if-eqz v12, :cond_0

    if-nez p2, :cond_0

    .line 3482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 3485
    .local v14, "token":J
    new-instance v9, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3486
    .local v9, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "turn_on"

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3488
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3490
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v14    # "token":J
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSBeam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    if-eqz v12, :cond_1

    .line 3492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 3494
    .local v10, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_2

    const-string/jumbo v7, "enabled"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " SBeam."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3499
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3502
    .end local v10    # "psToken":J
    :cond_1
    return v12

    .line 3494
    .restart local v10    # "psToken":J
    :cond_2
    :try_start_1
    const-string/jumbo v7, "disabled"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3499
    :catchall_0
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowSDCardMove(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4499
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4500
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4503
    .local v5, "userId":I
    const/16 v0, 0x64

    if-lt v5, v0, :cond_0

    .line 4504
    const/4 v6, 0x0

    .line 4516
    :goto_0
    return v6

    .line 4506
    :cond_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " allowSDCardMove : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4507
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowSDCardMove"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 4510
    .local v6, "ret":Z
    const-string v1, "allowSDCardMove"

    const-wide/32 v2, 0x20000000

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    goto :goto_0
.end method

.method public allowSDCardWrite(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v9, 0x0

    .line 2530
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2531
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v7

    .line 2532
    .local v7, "oldState":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowSDCardWrite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2533
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "sdCardWriteEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 2537
    .local v8, "ret":Z
    const-string/jumbo v1, "sdCardWriteEnabled"

    const-wide v2, 0x800000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2543
    if-eqz v8, :cond_1

    .line 2544
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2545
    .local v10, "token":J
    invoke-virtual {p0, v9}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    .line 2546
    .local v6, "newState":Z
    if-eq v6, v7, :cond_0

    .line 2547
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 2549
    :cond_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2551
    .end local v6    # "newState":Z
    .end local v10    # "token":J
    :cond_1
    return v8
.end method

.method public allowSVoice(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3343
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3344
    const/16 v23, 0x1

    .line 3346
    .local v23, "ret":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 3348
    .local v7, "userId":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v24

    .line 3350
    .local v24, "state":Z
    if-nez p2, :cond_0

    if-eqz v24, :cond_0

    .line 3351
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 3353
    .local v26, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wake_up_lock_screen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    .line 3361
    .local v17, "currentState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "voiceControl"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putGenericValueAsUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3368
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3371
    .end local v17    # "currentState":I
    .end local v26    # "token":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSVoice"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int v23, v23, v2

    .line 3375
    const-string v3, "allowSVoice"

    const-wide/16 v4, 0x20

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3381
    if-eqz p2, :cond_1

    .line 3383
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->rollBackSVoice(I)V

    .line 3386
    :cond_1
    if-eqz v23, :cond_5

    if-eqz v24, :cond_5

    if-nez p2, :cond_5

    .line 3387
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 3388
    .restart local v26    # "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager;

    .line 3391
    .local v15, "am":Landroid/app/ActivityManager;
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v22

    .line 3392
    .local v22, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3394
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 3395
    .local v25, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v20, v0

    .line 3396
    .local v20, "origInt":Landroid/content/Intent;
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    .line 3397
    .local v16, "cmp":Landroid/content/ComponentName;
    if-eqz v16, :cond_2

    .line 3398
    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 3399
    .local v21, "packageName":Ljava/lang/String;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3401
    if-eqz v21, :cond_2

    const-string v2, "com.vlingo.midas"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "com.samsung.voiceserviceplatform"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3403
    :cond_3
    move-object/from16 v0, v25

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v15, v2}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 3408
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-interface {v2, v0, v7}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3418
    .end local v16    # "cmp":Landroid/content/ComponentName;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "origInt":Landroid/content/Intent;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v25    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_4
    :goto_0
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3420
    .end local v15    # "am":Landroid/app/ActivityManager;
    .end local v22    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v26    # "token":J
    :cond_5
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSVoice : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    if-eqz v23, :cond_6

    .line 3422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v26

    .line 3424
    .restart local v26    # "token":J
    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_7

    const-string/jumbo v2, "enabled"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SVoice."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3429
    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3432
    .end local v26    # "token":J
    :cond_6
    return v23

    .line 3409
    .restart local v15    # "am":Landroid/app/ActivityManager;
    .restart local v16    # "cmp":Landroid/content/ComponentName;
    .restart local v19    # "i$":Ljava/util/Iterator;
    .restart local v20    # "origInt":Landroid/content/Intent;
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v25    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v26    # "token":J
    :catch_0
    move-exception v18

    .line 3410
    .local v18, "e":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3411
    const/16 v23, 0x0

    .line 3413
    goto/16 :goto_0

    .line 3424
    .end local v15    # "am":Landroid/app/ActivityManager;
    .end local v16    # "cmp":Landroid/content/ComponentName;
    .end local v18    # "e":Landroid/os/RemoteException;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v20    # "origInt":Landroid/content/Intent;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v25    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_7
    :try_start_2
    const-string/jumbo v2, "disabled"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 3429
    :catchall_0
    move-exception v2

    invoke-static/range {v26 .. v27}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowSafeMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3793
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3795
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSafeMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3797
    const/4 v1, 0x0

    .line 3799
    .local v1, "ret":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSafeMode"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3805
    :goto_0
    return v1

    .line 3801
    :catch_0
    move-exception v0

    .line 3802
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    const-string v3, "allowSafeMode() failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public allowScreenPinning(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v9, 0x0

    .line 5229
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5230
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 5234
    .local v12, "userId":I
    const/16 v0, 0x64

    if-lt v12, v0, :cond_1

    .line 5268
    :cond_0
    :goto_0
    return v9

    .line 5238
    :cond_1
    if-nez p2, :cond_2

    .line 5239
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5240
    .local v10, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_to_app_enabled"

    invoke-static {v0, v1, v9, v12}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 5242
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5245
    .end local v10    # "token":J
    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "screenPinningAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 5248
    .local v9, "result":Z
    const-string/jumbo v1, "screenPinningAllowed"

    const-wide/high16 v2, 0x200000000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 5254
    if-eqz v9, :cond_0

    if-nez p2, :cond_0

    .line 5255
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 5257
    .local v6, "am":Landroid/app/ActivityManager;
    invoke-virtual {v6}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5259
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopLockTaskMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5260
    :catch_0
    move-exception v7

    .line 5261
    .local v7, "ex":Landroid/os/RemoteException;
    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "failed taking activity manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5262
    .end local v7    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    .line 5264
    .local v8, "ignore":Ljava/lang/SecurityException;
    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "trying to un pin app from different user, just ignore"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public allowSettingsChanges(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1680
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1681
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 1683
    .local v7, "userId":I
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1686
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/16 v2, 0x64

    if-lt v7, v2, :cond_1

    .line 1687
    const/16 v16, 0x0

    .line 1744
    :cond_0
    :goto_0
    return v16

    .line 1690
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowSettingsChanges"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 1693
    .local v16, "ret":Z
    const-string v3, "allowSettingsChanges"

    const-wide/16 v4, 0x8

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1699
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowSettingsChanges : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    if-eqz v16, :cond_0

    .line 1702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1703
    .local v20, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 1705
    .local v8, "am":Landroid/app/ActivityManager;
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v8, v2, v3, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v15

    .line 1706
    .local v15, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const-string v17, "com.android.settings"

    .line 1707
    .local v17, "settingsPkg":Ljava/lang/String;
    if-nez p2, :cond_3

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1708
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1709
    .local v18, "task":Landroid/app/ActivityManager$RecentTaskInfo;
    move-object/from16 v0, v18

    iget-object v13, v0, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1710
    .local v13, "origInt":Landroid/content/Intent;
    invoke-virtual {v13}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 1711
    .local v9, "cmp":Landroid/content/ComponentName;
    if-eqz v9, :cond_2

    .line 1712
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 1713
    .local v14, "packageName":Ljava/lang/String;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "packageName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1715
    if-eqz v14, :cond_2

    const-string v2, "com.android.settings"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1716
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v2

    if-nez v2, :cond_2

    .line 1717
    move-object/from16 v0, v18

    iget v2, v0, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    invoke-virtual {v8, v2}, Landroid/app/ActivityManager;->removeTask(I)Z

    .line 1720
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "com.android.settings"

    invoke-interface {v2, v3, v7}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1721
    :catch_0
    move-exception v10

    .line 1722
    .local v10, "e":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v10}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    const/16 v16, 0x0

    goto :goto_1

    .line 1730
    .end local v9    # "cmp":Landroid/content/ComponentName;
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "origInt":Landroid/content/Intent;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v18    # "task":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "edm.intent.action.allow.settings"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1732
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1734
    if-nez v7, :cond_0

    .line 1736
    :try_start_1
    const-string v2, "Restriction"

    const-string v3, "allowSettingsChanges"

    move/from16 v0, p2

    invoke-virtual {v11, v2, v3, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1737
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1738
    :catch_1
    move-exception v10

    .line 1739
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public allowShareList(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3668
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3669
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3670
    .local v5, "userId":I
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowShareList"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3673
    .local v6, "ret":Z
    const-string v1, "allowShareList"

    const-wide/32 v2, 0x100000

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3679
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowShareList : allow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3681
    return v6
.end method

.method public allowSmartClipMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 5177
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5179
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "smartClipAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 5183
    .local v6, "result":Z
    const-string/jumbo v1, "smartClipAllowed"

    const-wide/high16 v2, 0x100000000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 5189
    return v6
.end method

.method public allowStatusBarExpansion(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2885
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2889
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2890
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed. Caller is not COM container or owner"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    const/4 v6, 0x0

    .line 2912
    :goto_0
    return v6

    .line 2894
    :cond_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 2895
    .local v5, "userId":I
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "statusBarExpansionEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2898
    .local v6, "ret":Z
    const-string/jumbo v1, "statusBarExpansionEnabled"

    const-wide/16 v2, 0x100

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2904
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowStatusBarExpansion : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2908
    .local v8, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2910
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public allowStopSystemApp(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3064
    const/4 v6, 0x1

    .line 3065
    .local v6, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3066
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3068
    .local v5, "userId":I
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowStopSystemApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3071
    const-string v1, "allowStopSystemApp"

    const-wide/16 v2, 0x1000

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3077
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowStopSystemApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    return v6
.end method

.method public allowUsbHostStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 22
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3596
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 3598
    .local v20, "token":J
    const/4 v13, 0x1

    .line 3599
    .local v13, "ret":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowUsbHostStorage"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v13, v2

    .line 3602
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allowUsbHostStorage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3604
    const-string v3, "allowUsbHostStorage"

    const-wide/32 v4, 0x80000

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3610
    if-eqz v13, :cond_0

    .line 3611
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_1

    const-string v7, "allowed"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " USB Host Storage."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 3618
    :cond_0
    if-eqz v13, :cond_4

    if-nez p2, :cond_4

    .line 3619
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "storage"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/storage/StorageManager;

    .line 3621
    .local v15, "storageManager":Landroid/os/storage/StorageManager;
    if-nez v15, :cond_2

    .line 3622
    const-string v2, "RestrictionPolicy"

    const-string v3, "Failed to get StorageManager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3623
    const/4 v2, 0x0

    .line 3649
    .end local v15    # "storageManager":Landroid/os/storage/StorageManager;
    :goto_1
    return v2

    .line 3611
    :cond_1
    const-string/jumbo v7, "disallowed"

    goto :goto_0

    .line 3625
    .restart local v15    # "storageManager":Landroid/os/storage/StorageManager;
    :cond_2
    :try_start_1
    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v18

    .line 3626
    .local v18, "storageVolumes":[Landroid/os/storage/StorageVolume;
    move-object/from16 v0, v18

    array-length v11, v0

    .line 3627
    .local v11, "length":I
    const-string v16, ""

    .line 3628
    .local v16, "storagePath":Ljava/lang/String;
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v12

    .line 3630
    .local v12, "mountService":Landroid/os/storage/IMountService;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v11, :cond_4

    .line 3631
    aget-object v17, v18, v10

    .line 3632
    .local v17, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v19

    .line 3633
    .local v19, "subsystem":Ljava/lang/String;
    if-eqz v19, :cond_3

    const-string/jumbo v2, "usb"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3634
    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 3635
    invoke-virtual/range {v15 .. v16}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3637
    .local v14, "state":Ljava/lang/String;
    const-string/jumbo v2, "mounted"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3638
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v12, v0, v2, v3}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3630
    .end local v14    # "state":Ljava/lang/String;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 3644
    .end local v10    # "i":I
    .end local v11    # "length":I
    .end local v12    # "mountService":Landroid/os/storage/IMountService;
    .end local v15    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v16    # "storagePath":Ljava/lang/String;
    .end local v17    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v18    # "storageVolumes":[Landroid/os/storage/StorageVolume;
    .end local v19    # "subsystem":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 3645
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 3646
    const/4 v13, 0x0

    .line 3648
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v13

    .line 3649
    goto :goto_1
.end method

.method public allowUserMobileDataLimit(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3215
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3216
    const/16 v16, 0x1

    .line 3217
    .local v16, "ret":Z
    const-wide/16 v18, 0x0

    .line 3219
    .local v18, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "allowMobileDataLimit"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int v16, v16, v2

    .line 3223
    const-string v3, "allowMobileDataLimit"

    const-wide/32 v4, 0x10000

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3229
    if-nez p2, :cond_2

    if-eqz v16, :cond_2

    .line 3232
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 3233
    const-string/jumbo v2, "netpolicy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v13

    .line 3237
    .local v13, "networkPolicyService":Landroid/net/INetworkPolicyManager;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3239
    .local v12, "networkPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v13, v2}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v14

    .line 3242
    .local v14, "policies":[Landroid/net/NetworkPolicy;
    if-eqz v14, :cond_0

    array-length v2, v14

    if-lez v2, :cond_0

    .line 3243
    move-object v8, v14

    .local v8, "arr$":[Landroid/net/NetworkPolicy;
    array-length v11, v8

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v15, v8, v10

    .line 3244
    .local v15, "policy":Landroid/net/NetworkPolicy;
    const-wide/16 v2, -0x1

    iput-wide v2, v15, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 3245
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3243
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 3249
    .end local v8    # "arr$":[Landroid/net/NetworkPolicy;
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v15    # "policy":Landroid/net/NetworkPolicy;
    :cond_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3250
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/net/NetworkPolicy;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/NetworkPolicy;

    invoke-interface {v13, v2}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 3255
    :cond_1
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3262
    .end local v12    # "networkPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    .end local v13    # "networkPolicyService":Landroid/net/INetworkPolicyManager;
    .end local v14    # "policies":[Landroid/net/NetworkPolicy;
    :cond_2
    :goto_1
    return v16

    .line 3256
    :catch_0
    move-exception v9

    .line 3257
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 3258
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RestrictionPolicy.allowUserMobileDataLimit() exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    const/16 v16, 0x0

    goto :goto_1
.end method

.method public allowVideoRecord(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    .line 3032
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3033
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowVideoRecording"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3036
    .local v6, "result":Z
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowVideoRecord : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    const-string v1, "allowVideoRecording"

    const-wide/16 v2, 0x2

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3043
    return v6
.end method

.method public allowVpn(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2387
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2388
    const/4 v7, 0x0

    .line 2390
    .local v7, "ret":Z
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "nativeVpnAllowed"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 2393
    const-string/jumbo v1, "nativeVpnAllowed"

    const-wide/high16 v2, 0x20000000000000L

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2399
    if-eqz v7, :cond_0

    if-nez p2, :cond_0

    .line 2400
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mVpnPolicy:Lcom/android/server/enterprise/vpn/VpnInfoPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/VpnInfoPolicy;->disconnectActiveVpnConnections()V

    .line 2402
    :cond_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowVpn():set :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ret:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    if-eqz v7, :cond_1

    .line 2404
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 2406
    .local v8, "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_2

    const-string/jumbo v5, "enabled"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Vpn."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2411
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2414
    .end local v8    # "token":J
    :cond_1
    return v7

    .line 2406
    .restart local v8    # "token":J
    :cond_2
    :try_start_1
    const-string/jumbo v5, "disabled"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2411
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public allowWallpaperChange(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 2854
    const/4 v6, 0x1

    .line 2855
    .local v6, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2856
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "wallpaperEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2859
    const-string/jumbo v1, "wallpaperEnabled"

    const-wide v2, 0x400000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2865
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowWallpaperChange : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    return v6
.end method

.method public allowWifiDirect(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 3096
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3097
    const/4 v7, 0x1

    .line 3098
    .local v7, "ret":Z
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowWifiDirect"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v7, v0

    .line 3101
    const-string v1, "allowWifiDirect"

    const-wide/16 v2, 0x2000

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3107
    if-eqz v7, :cond_0

    if-nez p2, :cond_0

    .line 3108
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "edm.intent.action.internal.RESTRICTION_DISABLE_WFD"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3109
    .local v6, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3111
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowWifiDirect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    return v7
.end method

.method public applyBackgroundDataRestriction()V
    .locals 24

    .prologue
    .line 2142
    :try_start_0
    const-string v20, "RestrictionPolicy"

    const-string v21, "Applying Background Data Policy"

    invoke-static/range {v20 .. v21}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    const-string/jumbo v20, "netpolicy"

    invoke-static/range {v20 .. v20}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v16

    .line 2148
    .local v16, "networkPolicyService":Landroid/net/INetworkPolicyManager;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 2151
    const-wide/16 v6, 0x400

    .line 2152
    .local v6, "KB_IN_BYTES":J
    const-wide/32 v10, 0x100000

    .line 2153
    .local v10, "MB_IN_BYTES":J
    const-wide/32 v4, 0x40000000

    .line 2154
    .local v4, "GB_IN_BYTES":J
    const-wide/16 v8, 0x64

    .line 2156
    .local v8, "MAXIMUM_SETABLE_GB_VALUE":J
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2158
    .local v19, "setPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/net/INetworkPolicyManager;->getNetworkPolicies(Ljava/lang/String;)[Landroid/net/NetworkPolicy;

    move-result-object v17

    .line 2160
    .local v17, "policies":[Landroid/net/NetworkPolicy;
    if-eqz v17, :cond_3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_3

    .line 2161
    move-object/from16 v12, v17

    .local v12, "arr$":[Landroid/net/NetworkPolicy;
    array-length v15, v12

    .local v15, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_0
    if-ge v14, v15, :cond_3

    aget-object v18, v12, v14

    .line 2162
    .local v18, "policy":Landroid/net/NetworkPolicy;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/NetworkPolicy;->template:Landroid/net/NetworkTemplate;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 2186
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2161
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2164
    :pswitch_0
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_0

    .line 2165
    const-wide v20, 0x1900000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2167
    :cond_0
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2197
    .end local v4    # "GB_IN_BYTES":J
    .end local v6    # "KB_IN_BYTES":J
    .end local v8    # "MAXIMUM_SETABLE_GB_VALUE":J
    .end local v10    # "MB_IN_BYTES":J
    .end local v12    # "arr$":[Landroid/net/NetworkPolicy;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "networkPolicyService":Landroid/net/INetworkPolicyManager;
    .end local v17    # "policies":[Landroid/net/NetworkPolicy;
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    .end local v19    # "setPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    :catch_0
    move-exception v13

    .line 2198
    .local v13, "e":Ljava/lang/Exception;
    const-string v20, "RestrictionPolicy"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "setBackgroundData EX: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2201
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 2171
    .restart local v4    # "GB_IN_BYTES":J
    .restart local v6    # "KB_IN_BYTES":J
    .restart local v8    # "MAXIMUM_SETABLE_GB_VALUE":J
    .restart local v10    # "MB_IN_BYTES":J
    .restart local v12    # "arr$":[Landroid/net/NetworkPolicy;
    .restart local v14    # "i$":I
    .restart local v15    # "len$":I
    .restart local v16    # "networkPolicyService":Landroid/net/INetworkPolicyManager;
    .restart local v17    # "policies":[Landroid/net/NetworkPolicy;
    .restart local v18    # "policy":Landroid/net/NetworkPolicy;
    .restart local v19    # "setPolicies":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkPolicy;>;"
    :pswitch_1
    :try_start_1
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    .line 2172
    const-wide v20, 0x1900000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2174
    :cond_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2178
    :pswitch_2
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x1

    cmp-long v20, v20, v22

    if-nez v20, :cond_2

    .line 2179
    const-wide v20, 0x1900000000L

    move-wide/from16 v0, v20

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/net/NetworkPolicy;->limitBytes:J

    .line 2181
    :cond_2
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2192
    .end local v12    # "arr$":[Landroid/net/NetworkPolicy;
    .end local v14    # "i$":I
    .end local v15    # "len$":I
    .end local v18    # "policy":Landroid/net/NetworkPolicy;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-lez v20, :cond_4

    .line 2193
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Landroid/net/NetworkPolicy;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/net/NetworkPolicy;

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/net/INetworkPolicyManager;->setNetworkPolicies([Landroid/net/NetworkPolicy;)V

    .line 2196
    :cond_4
    const-string v20, "RestrictionPolicy"

    const-string v21, "Applied Background Data Policy"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2162
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public checkAdminActivationEnabled(ILjava/lang/String;)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 4996
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4997
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageWhiteList(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4998
    const v0, 0x1040c27

    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4999
    const/4 v0, 0x0

    .line 5002
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public checkPackageSource(ILjava/lang/String;)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .prologue
    .line 5020
    if-eqz p2, :cond_0

    .line 5021
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminInstallation(I)I

    move-result v1

    .line 5022
    .local v1, "uid":I
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 5023
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5024
    const/4 v2, 0x1

    .line 5028
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "uid":I
    :goto_0
    return v2

    .line 5027
    :cond_0
    const v2, 0x1040c28

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 5028
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPackageWhiteList(ILjava/lang/String;)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 5007
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminActivation(I)I

    move-result v0

    .line 5009
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "preventAdminActivationWhiteList"

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5012
    .local v1, "whiteList":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5013
    const/4 v2, 0x1

    .line 5015
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public clearNewAdminActivationAppWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4967
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->addNewAdminActivationAppWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public enableODETrustedBootVerification(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4678
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4679
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableODETrustedBootVerification  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4681
    const/4 v11, 0x0

    .line 4682
    .local v11, "ret":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 4683
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/app/admin/DevicePolicyManager;->isSupportTrustedBootForODE(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4684
    const-string v2, "RestrictionPolicy"

    const-string v3, "This device doesn\'t support TrustZone for ODE!"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v12, v11

    .line 4714
    .end local v11    # "ret":Z
    .local v12, "ret":I
    :goto_0
    return v12

    .line 4688
    .end local v12    # "ret":I
    .restart local v11    # "ret":Z
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "ODETrustedBootVerification"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 4691
    const-string v3, "ODETrustedBootVerification"

    const-wide v4, 0x80000000L

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4697
    if-eqz v11, :cond_2

    .line 4698
    const-string/jumbo v2, "mount"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v9

    .line 4699
    .local v9, "mountService":Landroid/os/storage/IMountService;
    if-nez v9, :cond_1

    move v12, v11

    .line 4700
    .restart local v12    # "ret":I
    goto :goto_0

    .line 4702
    .end local v12    # "ret":I
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4704
    .local v14, "token":J
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4705
    const-string/jumbo v2, "security.mdm.trustedboot"

    const-string/jumbo v3, "true"

    invoke-interface {v9, v2, v3}, Landroid/os/storage/IMountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4711
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v9    # "mountService":Landroid/os/storage/IMountService;
    .end local v14    # "token":J
    :cond_2
    move v12, v11

    .line 4714
    .restart local v12    # "ret":I
    goto :goto_0

    .line 4707
    .end local v12    # "ret":I
    .restart local v9    # "mountService":Landroid/os/storage/IMountService;
    .restart local v14    # "token":J
    :cond_3
    :try_start_1
    const-string/jumbo v2, "security.mdm.trustedboot"

    const-string/jumbo v3, "false"

    invoke-interface {v9, v2, v3}, Landroid/os/storage/IMountService;->setPropertyIntoFooter(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 4708
    :catch_0
    move-exception v10

    .line 4709
    .local v10, "re":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableODETrustedBootVerification : RemoteException - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public enableWearablePolicy(Landroid/app/enterprise/ContextInfo;IZ)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "device"    # I
    .param p3, "enable"    # Z

    .prologue
    .line 5402
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5403
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 5404
    .local v4, "userId":I
    const/4 v2, 0x0

    .line 5405
    .local v2, "ret":Z
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enableGearPolicy() : userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", enable = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5407
    const/16 v5, 0x64

    if-lt v4, v5, :cond_0

    .line 5408
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enableGearPolicy() : this api doesn\'t support multi-user. userId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 5434
    .end local v2    # "ret":Z
    .local v3, "ret":I
    :goto_0
    return v3

    .line 5412
    .end local v3    # "ret":I
    .restart local v2    # "ret":Z
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isValidDevice(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5413
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "enableGearPolicy() : this api called unsupport device. device = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v2

    .line 5414
    .restart local v3    # "ret":I
    goto :goto_0

    .line 5417
    .end local v3    # "ret":I
    :cond_1
    const v0, 0xffff

    .line 5419
    .local v0, "lValue":I
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string/jumbo v8, "wearablePolicyEnabled"

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 5425
    :goto_1
    const/4 v5, 0x1

    if-ne v5, p3, :cond_3

    xor-int/lit8 v5, p2, -0x1

    and-int/2addr v0, v5

    .line 5427
    :goto_2
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "RESTRICTION"

    const-string/jumbo v8, "wearablePolicyEnabled"

    invoke-virtual {v5, v6, v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    .line 5429
    .local v1, "result":Z
    if-eqz v1, :cond_2

    .line 5430
    invoke-direct {p0, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->sendIntentGearManagerforUpdate(I)V

    .line 5431
    const/4 v2, 0x1

    :cond_2
    move v3, v2

    .line 5434
    .restart local v3    # "ret":I
    goto :goto_0

    .line 5425
    .end local v1    # "result":Z
    .end local v3    # "ret":I
    :cond_3
    or-int/2addr v0, p2

    goto :goto_2

    .line 5421
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public getAllowedFOTAVersions(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5330
    const/4 v2, 0x0

    .line 5331
    .local v2, "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "version"

    aput-object v4, v0, v3

    .line 5332
    .local v0, "columns":[Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "RESTRICTION_FOTALIST"

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 5334
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 5335
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5336
    .restart local v2    # "resultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5337
    const-string/jumbo v3, "version"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5339
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 5342
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v3
.end method

.method public getCCModeState(Landroid/app/enterprise/ContextInfo;)I
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x0

    .line 5194
    const/4 v0, -0x1

    .line 5195
    .local v0, "ret":I
    const-wide/32 v2, 0x40000000

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    .line 5198
    .local v1, "ret1":Z
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeSupported(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5199
    invoke-static {}, Lcom/samsung/android/security/CCManager;->updateMdfStatus()I

    move-result v0

    .line 5201
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getCCModeState : mdm ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CCManager ret = : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5202
    return v0
.end method

.method public getNewAdminActivationAppWhiteList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4970
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4972
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4973
    .local v0, "whiteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "preventAdminActivationWhiteList"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4975
    .local v1, "whiteListApps":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4976
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4980
    :goto_0
    return-object v0

    .line 4978
    :cond_0
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getSDCardState()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1835
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1837
    .local v0, "identity":J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1839
    .local v2, "ret":Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1841
    return-object v2

    .line 1839
    .end local v2    # "ret":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method getStorageManager()Landroid/os/storage/StorageManager;
    .locals 2

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    .line 2521
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "storage"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 2522
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method getStorageManagerAdapter()Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;
    .locals 1

    .prologue
    .line 2526
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/StorageManagerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public isActivationLockAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4421
    const-wide/32 v2, 0x8000000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4425
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 4426
    const v1, 0x1040c1f

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4429
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isActivationLockAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    return v0
.end method

.method public isAdminEnforcementAllowed(II)Z
    .locals 10
    .param p1, "uid"    # I
    .param p2, "userId"    # I

    .prologue
    .line 4939
    const/4 v0, 0x0

    .line 4940
    .local v0, "adminsList":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 4941
    .local v6, "token":J
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 4943
    .local v4, "pkgName":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getService()Landroid/app/enterprise/IEnterpriseDeviceManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 4944
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmService:Landroid/app/enterprise/IEnterpriseDeviceManager;

    invoke-interface {v5, p2}, Landroid/app/enterprise/IEnterpriseDeviceManager;->getActiveAdminsInfo(I)Ljava/util/List;

    move-result-object v0

    .line 4946
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 4947
    .local v3, "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    const-string v5, "RestrictionPolicy"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " preventAdminActivation packageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->excludedAdminList:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 4952
    const/4 v5, 0x0

    .line 4960
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4963
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :goto_0
    return v5

    .line 4960
    :cond_1
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4963
    :goto_1
    const/4 v5, 0x1

    goto :goto_0

    .line 4957
    :catch_0
    move-exception v1

    .line 4958
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v5, "RestrictionPolicy"

    const-string v8, "RestrictionPolicy.preventAdminInstallation exception : "

    invoke-static {v5, v8, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4960
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public isAirplaneModeAllowed(Z)Z
    .locals 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 4274
    const-wide/16 v2, 0x80

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4278
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 4279
    const v1, 0x1040be1

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4282
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAirplaneModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    return v0
.end method

.method public isAndroidBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3579
    const-wide/32 v2, 0x40000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3583
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 3584
    const v1, 0x1040bcc

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3587
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAndroidBeamAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3588
    return v0
.end method

.method public isAudioRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3014
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3015
    .local v1, "userId":I
    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3020
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAudioRecordAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 3024
    const v2, 0x1040bc7

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3028
    :cond_0
    return v0
.end method

.method public isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2210
    const-wide/high16 v2, 0x4000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2213
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBackgroundDataEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    return v0
.end method

.method public isBackgroundProcessLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3156
    const-wide/16 v2, 0x4000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3160
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiDirectAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    return v0
.end method

.method public isBackupAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1494
    const-wide v2, 0x100000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1497
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 1498
    const v1, 0x1040c15

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1500
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBackupAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    return v0
.end method

.method public isBluetoothTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1185
    const-wide v2, 0x8000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1189
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1190
    const/4 v0, 0x0

    .line 1193
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isBluetoothTetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    return v0
.end method

.method public isCCModeEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4641
    const-wide/32 v2, 0x40000000

    invoke-direct {p0, v2, v3, v4, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    .line 4645
    .local v1, "ret1":Z
    const/4 v0, 0x0

    .line 4647
    .local v0, "ret":Z
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4648
    const/4 v0, 0x1

    .line 4653
    :goto_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isCCModeEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "security.mdpp"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    mdm ret1 :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   ret :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4654
    return v0

    .line 4650
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCCModeSupported(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4662
    const/4 v1, 0x0

    .line 4663
    .local v1, "ret":Z
    const-string/jumbo v2, "ro.security.mdpp.ux"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4664
    .local v0, "proMDPP":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "Enabled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4665
    const/4 v1, 0x1

    .line 4667
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCCModeSupported : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    .line 4669
    const v2, 0x1040c29

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4671
    :cond_1
    return v1
.end method

.method public isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 731
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 732
    .local v1, "userId":I
    invoke-direct {p0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabledEx(ILandroid/app/enterprise/ContextInfo;)Z

    move-result v0

    .line 734
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 735
    const v2, 0x1040c11

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 738
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isCameraEnabled ret("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") userId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") cxtInfo.mCallerUid("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") cxtInfo.mContainerId("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    return v0
.end method

.method public isCellularDataAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1666
    const-wide v2, 0x400000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1669
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCellularDataAllowed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    return v0
.end method

.method public isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1889
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1890
    .local v0, "userId":I
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isClipboardAllowedAsUser(ZI)Z
    .locals 12
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1894
    const-wide/16 v10, 0x200

    const/4 v9, 0x1

    invoke-direct {p0, v10, v11, v9, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v7

    .line 1899
    .local v7, "ret":Z
    if-eqz v7, :cond_0

    .line 1900
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1901
    .local v2, "callerUid":I
    const-string v1, ""

    .line 1903
    .local v1, "callerPackageName":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 1904
    .local v6, "pkgList":[Ljava/lang/String;
    if-eqz v6, :cond_2

    array-length v9, v6

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    .line 1906
    const/4 v9, 0x0

    aget-object v1, v6, v9

    .line 1918
    :goto_0
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAppPolicy:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v9, v1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isPackageClipboardAllowed(Ljava/lang/String;I)Z

    move-result v7

    .line 1921
    .end local v1    # "callerPackageName":Ljava/lang/String;
    .end local v2    # "callerUid":I
    .end local v6    # "pkgList":[Ljava/lang/String;
    :cond_0
    if-eqz p1, :cond_1

    if-nez v7, :cond_1

    .line 1922
    const v9, 0x1040c16

    invoke-static {v9}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1924
    :cond_1
    const-string v9, "RestrictionPolicy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isClipboardAllowed : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    return v7

    .line 1908
    .restart local v1    # "callerPackageName":Ljava/lang/String;
    .restart local v2    # "callerUid":I
    .restart local v6    # "pkgList":[Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1910
    .local v4, "identity":J
    iget-object v9, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1911
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v8

    .line 1912
    .local v8, "runningTaskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v8, :cond_3

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 1913
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1914
    .local v3, "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v9, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1916
    .end local v3    # "foregroundTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_3
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public isClipboardShareAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3302
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3303
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isClipboardShareAllowedAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 3307
    const/4 v0, 0x1

    .line 3309
    .local v0, "ret":Z
    const-wide/32 v2, 0x20000

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3312
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isClipboardShareAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3313
    return v0
.end method

.method public isDeveloperModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4205
    const-wide/16 v2, 0x40

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4209
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 4210
    const v1, 0x1040c1d

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4212
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isDeveloperModeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4213
    return v0
.end method

.method public isFOTAVersionAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 5348
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5364
    :goto_0
    return v2

    .line 5351
    :cond_0
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION_FOTALIST"

    const-string/jumbo v6, "version"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 5352
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 5354
    .local v1, "size":I
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v3, :cond_2

    .line 5355
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isFotaVersionAllowed : fota list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5356
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5357
    const-string v2, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFotaVersionAllowed : allowed fota version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 5358
    goto :goto_0

    .line 5360
    :cond_1
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFotaVersionAllowed : disallowed fota version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 5364
    goto :goto_0
.end method

.method public isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2283
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    .line 2291
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isExistEFSFile()Z

    move-result v1

    .line 2292
    .local v1, "temp":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFactoryResetAllowed(): isExistEFSFile - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DB - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    if-ne v1, v0, :cond_0

    .line 2294
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFactoryResetAllowed(): need to sync DB("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") and efs"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->manageEFSFile(Z)Z

    .line 2298
    :cond_0
    return v0
.end method

.method public isFastEncryptionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4577
    const-wide/16 v2, 0x10

    invoke-direct {p0, v2, v3, v1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4581
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFastEncryptionAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 4584
    const v1, 0x1040c22

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4587
    :cond_0
    return v0
.end method

.method public isFirmwareAutoUpdateAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v1, 0x0

    .line 4384
    const-wide/32 v2, 0x4000000

    invoke-direct {p0, v2, v3, v1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4388
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 4389
    const v1, 0x1040c1e

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4392
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isFirmwareAutoUpdateAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4393
    return v0
.end method

.method public isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    const/4 v5, 0x7

    .line 4081
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->readData(I)Z

    move-result v0

    .line 4082
    .local v0, "param":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowedFromDB(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    .line 4084
    .local v1, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFirmwareRecoveryAllowed(): ret -  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " param - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4085
    if-eq v0, v1, :cond_0

    .line 4086
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFirmwareRecoveryAllowed(): need to sync DB("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") and param"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4087
    invoke-direct {p0, v5, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->writeData(IZ)Z

    .line 4090
    :cond_0
    return v1
.end method

.method public isGoogleAccountsAutoSyncAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4347
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4348
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isGoogleAccountsAutoSyncAllowedAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 4352
    const-wide/32 v2, 0x2000000

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4356
    .local v0, "ret":Z
    return v0
.end method

.method public isGoogleCrashReportAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2501
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowedAsUser(I)Z

    move-result v0

    return v0
.end method

.method public isGoogleCrashReportAllowedAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 2506
    const/4 v0, 0x1

    .line 2508
    .local v0, "ret":Z
    const-wide/high16 v2, 0x80000000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2513
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGoogleCrashReportAllowed : ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    return v0
.end method

.method public isHeadphoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4483
    const-wide/32 v2, 0x10000000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4487
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 4488
    const v1, 0x1040c20

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4491
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHeadphoneEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4492
    return v0
.end method

.method public isHomeKeyEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2349
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v1

    .line 2351
    .local v1, "userId":I
    const-wide/high16 v2, 0x10000000000000L

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2355
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 2356
    const v2, 0x1040bda

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2358
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isHomeKeyEnabled :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    return v0
.end method

.method public isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3203
    const-wide/32 v2, 0x8000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3206
    .local v0, "ret":Z
    return v0
.end method

.method public isLockScreenEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4018
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 4025
    .local v1, "userId":I
    const-wide/32 v2, 0x800000

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4029
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isLockScreenEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    return v0
.end method

.method public isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "view"    # I

    .prologue
    .line 3894
    const/4 v2, 0x1

    .line 3898
    .local v2, "ret":Z
    const/4 v5, 0x1

    if-eq p2, v5, :cond_1

    const/4 v5, 0x2

    if-eq p2, v5, :cond_1

    .line 3899
    const/4 v2, 0x0

    .line 3900
    :try_start_0
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-direct {v5}, Ljava/security/InvalidParameterException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3914
    :catch_0
    move-exception v0

    .line 3915
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isLockScreenViewAllowed() failed: INVALID PARAMETER INPUT"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3920
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :cond_0
    :goto_0
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isLockScreenViewAllowed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3922
    return v2

    .line 3903
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowLockScreenViews"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3906
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 3907
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_2

    .line 3908
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_2

    .line 3909
    const/4 v2, 0x0

    .line 3910
    goto :goto_0

    .line 3916
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/Integer;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    .line 3917
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isLockScreenViewAllowed() failed: unexpected exception"

    invoke-static {v5, v6, v0}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 888
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 890
    .local v0, "userId":I
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isMicrophoneEnabledAsUser(ZI)Z
    .locals 8
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    const-wide/16 v6, 0x4

    const/4 v4, 0x1

    .line 894
    const/4 v0, 0x1

    .line 898
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    .line 899
    const/4 v1, 0x0

    invoke-direct {p0, v6, v7, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 903
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMicrophoneEnabledAsUser (owner) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_0
    if-ne v0, v4, :cond_1

    .line 907
    invoke-direct {p0, v6, v7, v4, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 911
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isMicrophoneEnabledAsUser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    :cond_1
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 915
    const v1, 0x1040c12

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 917
    iget-object v1, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 920
    :cond_2
    return v0
.end method

.method public isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1434
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 1435
    .local v1, "userId":I
    const-wide v2, 0x80000000000L

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1439
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isMockLocationEnabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    return v0
.end method

.method public isNFCEnabled()Z
    .locals 1

    .prologue
    .line 1574
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v0

    return v0
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .locals 5
    .param p1, "showMsg"    # Z

    .prologue
    .line 1585
    const-wide v2, 0x200000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1588
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 1589
    const v1, 0x1040bd5

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1591
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNFCEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    return v0
.end method

.method public isNewAdminActivationEnabled(IZ)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 4888
    const/4 v1, 0x1

    .line 4889
    .local v1, "ret":Z
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    .line 4890
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 4891
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 4893
    .local v5, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4894
    .local v3, "uf":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    move-result v1

    .line 4895
    if-nez v1, :cond_0

    move v2, v1

    .line 4902
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ret":Z
    .end local v3    # "uf":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v2, "ret":Z
    :goto_0
    return v2

    .end local v2    # "ret":Z
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "ret":Z
    .restart local v4    # "userManager":Landroid/os/UserManager;
    .restart local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    move v2, v1

    .line 4899
    .end local v1    # "ret":Z
    .restart local v2    # "ret":Z
    goto :goto_0

    .line 4901
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ret":Z
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "ret":Z
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabledInternal(IZ)Z

    move-result v1

    move v2, v1

    .line 4902
    .end local v1    # "ret":Z
    .restart local v2    # "ret":Z
    goto :goto_0
.end method

.method public isNewAdminActivationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4882
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4883
    .local v0, "userId":I
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isNewAdminInstallationEnabled(IZ)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 4774
    const/4 v1, 0x1

    .line 4775
    .local v1, "ret":Z
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    .line 4776
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 4777
    .local v4, "userManager":Landroid/os/UserManager;
    invoke-virtual {v4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v5

    .line 4779
    .local v5, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 4780
    .local v3, "uf":Landroid/content/pm/UserInfo;
    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v6, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledInternal(IZ)Z

    move-result v1

    .line 4781
    if-nez v1, :cond_0

    move v2, v1

    .line 4787
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "ret":Z
    .end local v3    # "uf":Landroid/content/pm/UserInfo;
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v2, "ret":Z
    :goto_0
    return v2

    .end local v2    # "ret":Z
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "ret":Z
    .restart local v4    # "userManager":Landroid/os/UserManager;
    .restart local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    move v2, v1

    .line 4784
    .end local v1    # "ret":Z
    .restart local v2    # "ret":Z
    goto :goto_0

    .line 4786
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "ret":Z
    .end local v4    # "userManager":Landroid/os/UserManager;
    .end local v5    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v1    # "ret":Z
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabledInternal(IZ)Z

    move-result v1

    move v2, v1

    .line 4787
    .end local v1    # "ret":Z
    .restart local v2    # "ret":Z
    goto :goto_0
.end method

.method public isNewAdminInstallationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4767
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 4768
    .local v0, "userId":I
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2086
    const-wide/high16 v2, 0x1000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2090
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isNonMarketAppAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    return v0
.end method

.method public isNonTrustedAppInstallBlocked(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3772
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3773
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlockedAsUser(I)Z

    move-result v1

    return v1
.end method

.method public isNonTrustedAppInstallBlockedAsUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 3780
    const-wide/32 v2, 0x400000

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3784
    .local v0, "ret":Z
    return v0
.end method

.method public isODETrustedBootVerificationEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 4722
    const-wide v2, 0x80000000L

    invoke-direct {p0, v2, v3, v1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4726
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isODETruestedBootVerfiicationEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4727
    return v0
.end method

.method public isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2464
    const-wide/high16 v2, 0x40000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2467
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isOTAUpgradeAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2468
    return v0
.end method

.method public isPowerOffAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2977
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result v1

    .line 2979
    .local v1, "userId":I
    const-wide/16 v2, 0x800

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2983
    .local v0, "allowed":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 2984
    const v2, 0x1040b32

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2987
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isPowerOffAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    return v0
.end method

.method public isSBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3510
    const-wide/16 v2, 0x400

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3513
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 3514
    const v1, 0x1040bcb

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3517
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSBeamAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    return v0
.end method

.method public isSDCardMoveAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 4524
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 4525
    .local v1, "userId":I
    const-wide/32 v2, 0x20000000

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 4529
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 4530
    const v2, 0x1040c21

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 4533
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSDCardMoveAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4534
    return v0
.end method

.method public isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2555
    const-wide v2, 0x800000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2558
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSDCardWriteAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2559
    return v0
.end method

.method public isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3458
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3460
    .local v0, "userId":I
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isSVoiceAllowedAsUser(ZI)Z
    .locals 7
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 3437
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3438
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3439
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v0

    .line 3440
    .local v0, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3441
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    iget p2, v4, Landroid/content/pm/PersonaInfo;->id:I

    .line 3443
    .end local v0    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3445
    const-wide/16 v4, 0x20

    const/4 v6, 0x1

    invoke-direct {p0, v4, v5, v6, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v1

    .line 3448
    .local v1, "ret":Z
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 3449
    const v4, 0x1040bca

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3452
    :cond_1
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSVoiceAllowedAsUser, userId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3454
    return v1
.end method

.method public isSafeModeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3814
    const/4 v2, 0x1

    .line 3816
    .local v2, "ret":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string v7, "allowSafeMode"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 3818
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3819
    .local v3, "value":Z
    if-nez v3, :cond_0

    .line 3820
    move v2, v3

    .line 3827
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isSafeModeAllowed : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3828
    return v2

    .line 3824
    :catch_0
    move-exception v0

    .line 3825
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isSafeModeAllowed() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1275
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1276
    .local v0, "userId":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isScreenCaptureEnabledEx(IZ)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 1285
    const-wide v2, 0x10000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1289
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    const/4 v0, 0x0

    .line 1293
    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1294
    const v1, 0x1040c13

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1296
    :cond_1
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenCaptureEnabled : ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    return v0
.end method

.method public isScreenCaptureEnabledInternal(Z)Z
    .locals 2
    .param p1, "showMsg"    # Z

    .prologue
    .line 1280
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    move-result v0

    .line 1281
    .local v0, "userId":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v1

    return v1
.end method

.method public isScreenPinningAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 5209
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 5210
    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isScreenPinningAllowedAsUser(ZI)Z
    .locals 4
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 5214
    const-wide/high16 v2, 0x200000000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 5222
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isScreenPinningAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5223
    return v0
.end method

.method public isSdCardEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v0, 0x0

    .line 1848
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1859
    :cond_0
    :goto_0
    return v0

    .line 1852
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1855
    const-wide v2, 0x800000000000L

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1858
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSdCardEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1754
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUserIdByPackageNameOrUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 1756
    .local v0, "userId":I
    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isSettingsChangesAllowedAsUser(ZI)Z
    .locals 4
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 1767
    const-wide/16 v2, 0x8

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1771
    .local v0, "ret":Z
    if-eqz p1, :cond_0

    if-nez v0, :cond_0

    .line 1772
    const v1, 0x1040be5

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 1774
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSettingsChangesAllowedAsUser, userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    return v0
.end method

.method public isShareListAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3685
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 3686
    .local v0, "userId":I
    invoke-virtual {p0, v0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowedAsUser(IZ)Z

    move-result v1

    return v1
.end method

.method public isShareListAllowedAsUser(IZ)Z
    .locals 4
    .param p1, "userId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 3690
    const-wide/32 v2, 0x100000

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3694
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 3695
    const v1, 0x1040bde

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3698
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isShareListAllowed : userId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3700
    return v0
.end method

.method public isSmartClipModeAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 5138
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 5140
    .local v0, "userId":I
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isSmartClipModeAllowedInternal(Z)Z
    .locals 2
    .param p1, "showMsg"    # Z

    .prologue
    .line 5150
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getTopActivityUserId()I

    move-result v0

    .line 5152
    .local v0, "userId":I
    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedAsUser(ZI)Z

    move-result v1

    return v1
.end method

.method public isStatusBarExpansionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2916
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v0

    .line 2918
    .local v0, "allowed":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isStatusBarExpansionAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    return v0
.end method

.method public isStatusBarExpansionAllowedAsUser(ZI)Z
    .locals 4
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    .line 2926
    invoke-static {}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getKioskOrOwnerUserId()I

    move-result p2

    .line 2928
    const-wide/16 v2, 0x100

    const/4 v1, 0x1

    invoke-direct {p0, v2, v3, v1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2936
    .local v0, "allowed":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isStatusBarExpansionAllowedAsUser : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2938
    return v0
.end method

.method public isStopSystemAppAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3083
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3084
    .local v1, "userId":I
    const-wide/16 v2, 0x1000

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3088
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isStopSystemAppAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    return v0
.end method

.method public isTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x0

    .line 1015
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    .line 1016
    .local v0, "ret1":Z
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    .line 1017
    .local v1, "ret2":Z
    invoke-virtual {p0, v3}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    .line 1018
    .local v2, "ret3":Z
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isTetheringEnabled : ret1 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret2 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ret3 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1364
    const-wide v2, 0x20000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1368
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    const/4 v0, 0x0

    .line 1372
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbDebuggingEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    return v0
.end method

.method public isUsbHostStorageAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3657
    const-wide/32 v2, 0x80000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3660
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 3661
    const v1, 0x1040bdd

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3663
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbHostStorageAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3664
    return v0
.end method

.method public isUsbKiesAvailable(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1978
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMassStorageEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1384
    const/4 v0, 0x0

    return v0
.end method

.method public isUsbMediaPlayerAvailable(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2035
    const/4 v0, 0x1

    .line 2036
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2037
    const/4 v0, 0x0

    .line 2043
    :goto_0
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 2044
    const v1, 0x1040c17

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2046
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbMediaPlayerAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    return v0

    .line 2039
    :cond_1
    const-wide/high16 v2, 0x2000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    goto :goto_0
.end method

.method public isUsbTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1069
    const-wide v2, 0x2000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1073
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1074
    const/4 v0, 0x0

    .line 1077
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isUsbTetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    return v0
.end method

.method public isUseSecureKeypadEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3733
    const/4 v0, 0x0

    .line 3734
    .local v0, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3736
    .local v1, "userId":I
    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-lez v2, :cond_0

    .line 3737
    const/4 v0, 0x0

    .line 3740
    :cond_0
    const-wide/32 v2, 0x200000

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3743
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isUseSecureKeypadEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cxtInfo.mContainerId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    return v0
.end method

.method public isUserMobileDataLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3270
    const-wide/32 v2, 0x10000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3274
    .local v0, "ret":Z
    return v0
.end method

.method public isVideoRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3047
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3048
    .local v1, "userId":I
    const-wide/16 v2, 0x2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3053
    .local v0, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isVideoRecordAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3055
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 3056
    const v2, 0x1040bc8

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3059
    :cond_0
    return v0
.end method

.method public isVpnAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2421
    const-wide/high16 v2, 0x20000000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2424
    .local v0, "ret":Z
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isVpnAllowed():ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    return v0
.end method

.method public isWallpaperChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 2870
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 2871
    .local v1, "userId":I
    const-wide v2, 0x400000000L

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 2875
    .local v0, "allowed":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 2876
    const v2, 0x1040bce

    invoke-static {v2}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 2878
    :cond_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isWallpaperChangeAllowed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2879
    return v0
.end method

.method public isWearablePolicyEnabled(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "device"    # I

    .prologue
    .line 5374
    const/4 v2, 0x0

    .line 5376
    .local v2, "ret":Z
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isValidDevice(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5377
    const/4 v2, 0x0

    .line 5378
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-direct {v5}, Ljava/security/InvalidParameterException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5389
    :catch_0
    move-exception v0

    .line 5390
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isWearablePolicyEnabled() failed: INVALID PARAMETER INPUT"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5395
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :cond_0
    :goto_0
    const-string v5, "RestrictionPolicy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isWearablePolicyEnabled() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5396
    return v2

    .line 5380
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "RESTRICTION"

    const-string/jumbo v7, "wearablePolicyEnabled"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 5383
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 5384
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_2

    .line 5385
    const/4 v2, 0x1

    .line 5386
    goto :goto_0

    .line 5391
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/Integer;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    .line 5392
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "RestrictionPolicy"

    const-string/jumbo v6, "isWearablePolicyEnabled() failed."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isWifiDirectAllowed(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 3116
    const-wide/16 v2, 0x2000

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 3120
    .local v0, "allowed":Z
    if-eqz p2, :cond_0

    if-nez v0, :cond_0

    .line 3121
    const v1, 0x1040bc9

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 3123
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiDirectAllowed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    return v0
.end method

.method public isWifiTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1130
    const-wide v2, 0x4000000000L

    const/4 v1, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->extractFromRestrictionCache(JZI)Z

    move-result v0

    .line 1134
    .local v0, "ret":Z
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1135
    const/4 v0, 0x0

    .line 1138
    :cond_0
    const-string v1, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWifiTetheringEnabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 2677
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2682
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCache(I)V

    .line 2684
    const-string/jumbo v3, "microphoneEnabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2687
    const-string/jumbo v3, "screenCaptureEnabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v0, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v0, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2689
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    iget-boolean v3, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    if-eq v0, v3, :cond_0

    .line 2690
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applySdCardWriteAccessPolicy()V

    .line 2691
    iput-boolean v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 2695
    :cond_0
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceStatusBarExpansion()V

    .line 2699
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->rollBackSVoice(I)V

    .line 2704
    invoke-direct {p0, v1, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    .line 2705
    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setLockScreenViewProperty(IZ)Z

    .line 2706
    return-void

    :cond_1
    move v0, v2

    .line 2684
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2687
    goto :goto_1
.end method

.method public onContainerCreation(II)V
    .locals 8
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3928
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictionPolicy.onContainerCreation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3930
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RESTRICTION"

    const-string/jumbo v4, "useSecureKeypad"

    const/4 v5, 0x0

    move v1, p2

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(IILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    .line 3932
    .local v7, "result":Z
    if-nez v7, :cond_0

    .line 3933
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed to initialize container"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3938
    .end local v7    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 3935
    :catch_0
    move-exception v6

    .line 3936
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "onContainerCreation initialize exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onContainerRemoved(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3947
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictionPolicy.onContainerRemoved("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3948
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 1
    .param p1, "uid"    # I

    .prologue
    .line 2849
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->preAdminRemoval_SDCardWrite:Z

    .line 2850
    return-void
.end method

.method public onPreContainerRemoval(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "ownerUid"    # I

    .prologue
    .line 3942
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestrictionPolicy.onPreContainerRemoval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3943
    return-void
.end method

.method public onUserMigrated(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceMigrationAgentSecurityCheck()V

    .line 577
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCache(I)V

    .line 578
    return-void
.end method

.method public preventNewAdminActivation(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4804
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4806
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminActivationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v8

    .line 4807
    .local v8, "state":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4809
    .local v5, "userId":I
    const/4 v7, 0x0

    .line 4810
    .local v7, "ret":Z
    if-eqz v8, :cond_2

    .line 4811
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " preventAdminActivation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4814
    :try_start_0
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAdminEnforcementAllowed(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4839
    :goto_0
    return v4

    .line 4818
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "preventAdminActivation"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 4833
    :cond_1
    :goto_1
    const-string/jumbo v1, "preventAdminActivation"

    const-wide v2, 0x200000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    move v4, v7

    .line 4839
    goto :goto_0

    .line 4820
    :catch_0
    move-exception v6

    .line 4821
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    const-string v1, "RestrictionPolicy.preventAdminActivation exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4826
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminActivation(I)I

    move-result v9

    .line 4827
    .local v9, "uid":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v0, v9, :cond_1

    .line 4828
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "preventAdminActivation"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    goto :goto_1
.end method

.method public preventNewAdminInstallation(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x0

    .line 4732
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4734
    invoke-virtual {p0, p1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v7

    .line 4735
    .local v7, "state":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4737
    .local v5, "userId":I
    const/4 v6, 0x0

    .line 4738
    .local v6, "ret":Z
    if-eqz v7, :cond_2

    .line 4740
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " preventAdminInstallation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4741
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAdminEnforcementAllowed(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4763
    :goto_0
    return v4

    .line 4745
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "preventAdminInstallation"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 4757
    :cond_1
    :goto_1
    const-string/jumbo v1, "preventAdminInstallation"

    const-wide v2, 0x100000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    move v4, v6

    .line 4763
    goto :goto_0

    .line 4749
    :cond_2
    invoke-direct {p0, v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getUidForAdminInstallation(I)I

    move-result v8

    .line 4751
    .local v8, "uid":I
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v0, v8, :cond_1

    .line 4752
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "preventAdminInstallation"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    goto :goto_1
.end method

.method public removeAllowedFOTAVersions(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)I
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, "version":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, -0x1

    .line 5306
    const/4 v2, 0x1

    .line 5307
    .local v2, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 5310
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5311
    .local v0, "fotaVersion":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5312
    :cond_0
    const-string v4, "RestrictionPolicy"

    const-string/jumbo v5, "removeAllowedFotaVersion : null string"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5325
    .end local v0    # "fotaVersion":Ljava/lang/String;
    :cond_1
    :goto_1
    return v3

    .line 5316
    .restart local v0    # "fotaVersion":Ljava/lang/String;
    :cond_2
    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeAllowedFotaVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5318
    iget-object v4, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "RESTRICTION_FOTALIST"

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string/jumbo v7, "version"

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    and-int/2addr v2, v4

    .line 5320
    goto :goto_0

    .line 5322
    .end local v0    # "fotaVersion":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_1

    .line 5323
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public setAllowNonMarketApps(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1933
    const-string v0, "RestrictionPolicy"

    const-string v1, "MiscPolicy.setAllowNonMarketApps"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1934
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1936
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAllowNonMarketApps : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const/4 v7, 0x1

    .line 1938
    .local v7, "ret":Z
    if-nez p2, :cond_0

    .line 1939
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1940
    .local v8, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "install_non_market_apps"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v7

    .line 1942
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1944
    .end local v8    # "token":J
    :cond_0
    if-eqz v7, :cond_1

    .line 1945
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "allowNonMarketApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v7, v0

    .line 1948
    const-string v1, "allowNonMarketApp"

    const-wide/high16 v2, 0x1000000000000L

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1956
    .restart local v8    # "token":J
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_2

    const-string v5, "allowed"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " installation of non-Google-Play application."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1961
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1965
    .end local v8    # "token":J
    :cond_1
    return v7

    .line 1956
    .restart local v8    # "token":J
    :cond_2
    :try_start_1
    const-string/jumbo v5, "disallowed"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1961
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setBackgroundData(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2101
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2102
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2104
    .local v10, "token":J
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "backgroundDataEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 2107
    .local v8, "ret":Z
    const-string v1, "backgroundDataEnabled"

    const-wide/high16 v2, 0x4000000000000L

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 2113
    if-eqz v8, :cond_0

    .line 2114
    if-eqz p2, :cond_1

    .line 2117
    :try_start_0
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object v7

    .line 2120
    .local v7, "networkPolicyService":Landroid/net/INetworkPolicyManager;
    invoke-interface {v7}, Landroid/net/INetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-ne v0, v4, :cond_0

    .line 2121
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/net/INetworkPolicyManager;->setRestrictBackground(Z)V

    .line 2122
    const-string v0, "RestrictionPolicy"

    const-string v1, "Applied Background Data Removal Policy"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2132
    .end local v7    # "networkPolicyService":Landroid/net/INetworkPolicyManager;
    :cond_0
    :goto_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackgroundData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2133
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2134
    return v8

    .line 2124
    :catch_0
    move-exception v6

    .line 2125
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackgroundData EX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2128
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->applyBackgroundDataRestriction()V

    goto :goto_0
.end method

.method public setBackup(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1451
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1452
    const/4 v8, 0x1

    .line 1453
    .local v8, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1456
    .local v10, "token":J
    if-nez p2, :cond_1

    .line 1457
    :try_start_0
    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v6

    .line 1459
    .local v6, "backupManager":Landroid/app/backup/IBackupManager;
    if-nez v6, :cond_0

    .line 1460
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed to get BackupManager"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1485
    .end local v6    # "backupManager":Landroid/app/backup/IBackupManager;
    :goto_0
    return v5

    .line 1463
    .restart local v6    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_0
    invoke-interface {v6}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1464
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    .end local v6    # "backupManager":Landroid/app/backup/IBackupManager;
    :cond_1
    const/4 v8, 0x1

    .line 1472
    :goto_1
    if-eqz v8, :cond_2

    .line 1473
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "backupEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v8, v0

    .line 1476
    const-string v1, "backupEnabled"

    const-wide v2, 0x100000000000L

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1483
    :cond_2
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBackup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v5, v8

    .line 1485
    goto :goto_0

    .line 1467
    :catch_0
    move-exception v7

    .line 1468
    .local v7, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 1469
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setBluetoothTethering(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1148
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1149
    const/4 v8, 0x0

    .line 1150
    .local v8, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1152
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "bluetoothTetheringEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 1155
    const-string v1, "bluetoothTetheringEnabled"

    const-wide v2, 0x8000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1161
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    if-eqz v8, :cond_0

    .line 1163
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_1

    const-string/jumbo v5, "enabled"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bluetooth tethering."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1167
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :cond_0
    :goto_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1175
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return v8

    .line 1163
    :cond_1
    :try_start_1
    const-string/jumbo v5, "disabled"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1171
    :catch_0
    move-exception v7

    .line 1172
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetoothTethering Ex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setCCMode(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 17
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 4594
    const/4 v12, 0x0

    .line 4595
    .local v12, "ret":Z
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndAdvancedRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4596
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 4597
    .local v8, "userId":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCCModeEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v13

    .line 4598
    .local v13, "state":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setCCMode  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  and current MDM state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4599
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 4600
    .local v14, "token":J
    if-eqz p2, :cond_1

    .line 4601
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.sms.ENABLE_MDFPP_MODE"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4602
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4608
    :goto_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "setCCMode"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 4615
    const-string/jumbo v3, "setCCMode"

    const-wide/32 v4, 0x40000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4620
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCCMode ret : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    if-eqz v12, :cond_0

    .line 4623
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4625
    .local v10, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Admin "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " has requested to "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    if-eqz p2, :cond_2

    const-string/jumbo v7, "enable "

    :goto_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, "CCMode."

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4629
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4633
    .end local v10    # "psToken":J
    :cond_0
    return v12

    .line 4604
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v9, Landroid/content/Intent;

    const-string v2, "android.intent.action.sms.DISABLE_MDFPP_MODE"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4605
    .restart local v9    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4625
    .restart local v10    # "psToken":J
    :cond_2
    :try_start_1
    const-string/jumbo v7, "disable "
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4629
    :catchall_0
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setCamera(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 24
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 672
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 673
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v7

    .line 675
    .local v7, "userId":I
    new-instance v18, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 678
    .local v18, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "cameraEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v21

    .line 681
    .local v21, "ret":Z
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCamera : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    const-string v3, "cameraEnabled"

    const-wide v4, 0x1000000000L

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 689
    if-eqz v21, :cond_2

    if-nez p2, :cond_2

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22

    .line 691
    .local v22, "token":J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-interface {v2, v3, v7}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V

    .line 692
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getContainers(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v16

    .line 693
    .local v16, "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v16, :cond_1

    .line 694
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 695
    .local v15, "conId":I
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.camera"

    invoke-interface {v2, v3, v15}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 716
    .end local v15    # "conId":I
    .end local v16    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "ret":Z
    .end local v22    # "token":J
    :catch_0
    move-exception v20

    .line 717
    .local v20, "re":Landroid/os/RemoteException;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail getting ActivityManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v20 .. v20}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    .end local v20    # "re":Landroid/os/RemoteException;
    :goto_1
    const/16 v21, 0x0

    :cond_0
    :goto_2
    return v21

    .line 699
    .restart local v16    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "ret":Z
    .restart local v22    # "token":J
    :cond_1
    :try_start_1
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 702
    .end local v16    # "containerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v22    # "token":J
    :cond_2
    if-eqz v21, :cond_0

    .line 703
    const/4 v8, 0x5

    const/4 v9, 0x1

    const/4 v10, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_3

    const-string v2, "allowed"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " camera."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move v14, v7

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 706
    if-nez v7, :cond_0

    .line 708
    :try_start_2
    const-string v2, "Restriction"

    const-string/jumbo v3, "setCamera"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 709
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 710
    :catch_1
    move-exception v17

    .line 711
    .local v17, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    .line 718
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v21    # "ret":Z
    :catch_2
    move-exception v17

    .line 719
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "is EDMStorageProvider running?"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 703
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v21    # "ret":Z
    :cond_3
    :try_start_4
    const-string/jumbo v2, "disallowed"
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3
.end method

.method public setCellularData(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1602
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1603
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCellularData() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const/4 v11, 0x1

    .line 1605
    .local v11, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1608
    .local v14, "token":J
    const/4 v10, 0x1

    .line 1610
    .local v10, "isAllowedbyAdmin":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "cellularDataEnabled"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBoolean(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    .line 1613
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "cellularDataEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v11, v2

    .line 1616
    if-nez p2, :cond_0

    .line 1617
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 1619
    .local v12, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v12, :cond_3

    .line 1620
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1621
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1626
    :goto_1
    const/4 v11, 0x1

    .line 1637
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_2
    if-nez v11, :cond_4

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string v5, "cellularDataEnabled"

    invoke-virtual {v2, v3, v4, v5, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v11, v2

    .line 1649
    :goto_3
    if-eqz v11, :cond_1

    .line 1650
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_5

    const-string/jumbo v7, "enabled"

    :goto_4
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " cellular data."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1655
    :cond_1
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCellularData() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1657
    return v11

    .line 1611
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCellularData() : fail to get admin policy value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1624
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_2
    :try_start_2
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "setCellularData() : mobile data has already disabled"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1633
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_1
    move-exception v9

    .line 1634
    .restart local v9    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 1635
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 1629
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_3
    :try_start_3
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "setCellularData() : Failed to get Telephony Manager"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1630
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1643
    .end local v12    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_4
    const-string v3, "cellularDataEnabled"

    const-wide v4, 0x400000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    goto/16 :goto_3

    .line 1650
    :cond_5
    const-string/jumbo v7, "disabled"

    goto/16 :goto_4
.end method

.method public setClipboardEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1869
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1870
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClipboardEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1871
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "clipboardEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 1874
    .local v6, "ret":Z
    const-string v1, "clipboardEnabled"

    const-wide/16 v2, 0x200

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1880
    return v6
.end method

.method public setEnableNFC(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1511
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1513
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1515
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    if-nez p2, :cond_0

    .line 1516
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->disableNFC()V

    .line 1518
    :cond_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnableNFC : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1521
    .local v11, "userId":I
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "nfcEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 1524
    .local v9, "ret":Z
    const-string/jumbo v1, "nfcEnabled"

    const-wide v2, 0x200000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1530
    const-string v0, "content://com.sec.knox.provider/RestrictionPolicy2/isNFCEnabled"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1531
    .local v10, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1533
    if-eqz v9, :cond_1

    .line 1534
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_2

    const-string/jumbo v5, "enabled"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NFC."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1539
    if-nez v11, :cond_1

    .line 1541
    :try_start_0
    const-string v0, "Restriction"

    const-string/jumbo v1, "setEnableNFC"

    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1542
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1549
    :cond_1
    :goto_1
    return v9

    .line 1534
    :cond_2
    const-string/jumbo v5, "disabled"

    goto :goto_0

    .line 1543
    :catch_0
    move-exception v7

    .line 1544
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setHeadphoneState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v0, 0x0

    .line 4439
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4441
    const/4 v8, 0x0

    .line 4442
    .local v8, "headsetstatus":I
    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v10

    .line 4443
    .local v10, "state":Z
    const-string/jumbo v7, "h2w"

    .line 4444
    .local v7, "headsetName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4446
    .local v9, "ret":Z
    :try_start_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHeadphoneState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " old state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WiredHeadsetOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4448
    if-eqz p2, :cond_1

    .line 4449
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v10, :cond_0

    .line 4450
    const/4 v8, 0x1

    .line 4451
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 4452
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const-string v2, ""

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 4464
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "setHeadphoneState"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 4467
    const-string/jumbo v1, "setHeadphoneState"

    const-wide/32 v2, 0x10000000

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 4475
    :goto_1
    return v9

    .line 4456
    :cond_1
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4457
    const/4 v8, 0x0

    .line 4458
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x4

    const-string v2, ""

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V

    .line 4459
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mAudioManager:Landroid/media/AudioManager;

    const/16 v1, 0x8

    const-string v2, ""

    invoke-virtual {v0, v1, v8, v2, v7}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4472
    :catch_0
    move-exception v6

    .line 4473
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    const-string v1, "RestrictionPolicy.setHeadphoneState() exception : "

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setHomeKeyState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 2323
    const/4 v6, 0x1

    .line 2324
    .local v6, "ret":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2326
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->isKioskOrOwnerUserId(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2327
    const-string v0, "RestrictionPolicy"

    const-string v1, "Failed. Caller is not COM container or owner"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2328
    const/4 v0, 0x0

    .line 2340
    :goto_0
    return v0

    .line 2331
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "homeKeyEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 2334
    const-string/jumbo v1, "homeKeyEnabled"

    const-wide/high16 v2, 0x10000000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    move v0, v6

    .line 2340
    goto :goto_0
.end method

.method public setLockScreenState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 3979
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3980
    move-object/from16 v0, p1

    iget v2, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3983
    .local v7, "userId":I
    const/16 v2, 0x64

    if-lt v7, v2, :cond_1

    .line 3984
    const/4 v15, 0x0

    .line 4010
    :cond_0
    :goto_0
    return v15

    .line 3987
    :cond_1
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " setLockScreenState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3989
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "lockScreenEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 3992
    .local v15, "ret":Z
    const-string/jumbo v3, "lockScreenEnabled"

    const-wide/32 v4, 0x800000

    const/4 v6, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3998
    if-eqz v15, :cond_0

    .line 3999
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4001
    .local v16, "token":J
    const/4 v8, 0x5

    const/4 v9, 0x1

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "RestrictionPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has changed lock screen state to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_2

    const-string/jumbo v2, "enabled"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move/from16 v10, p2

    move v14, v7

    invoke-static/range {v8 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4006
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 4001
    :cond_2
    :try_start_1
    const-string/jumbo v2, "disabled"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4006
    :catchall_0
    move-exception v2

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setMicrophoneState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 785
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 786
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 788
    .local v8, "userId":I
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 790
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    .line 792
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 795
    .local v16, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wake_up_lock_screen"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 799
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "voice_input_control"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    .line 805
    .local v9, "currentState":I
    const/16 v2, 0x64

    if-lt v8, v2, :cond_3

    .line 806
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v8}, Landroid/os/UserHandle;-><init>(I)V

    const-string v5, "com.sec.android.app.voicenote.Controller"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :goto_0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 822
    .end local v9    # "currentState":I
    .end local v16    # "token":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "microphoneEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    .line 825
    .local v14, "ret":Z
    if-eqz v14, :cond_1

    .line 826
    const-string/jumbo v3, "microphoneEnabled"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/data/system/enterprise.conf"

    invoke-static {v3, v2, v4}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 829
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 831
    .local v12, "psToken":J
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Admin "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v15, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " has "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    if-eqz p2, :cond_5

    const-string v7, "allowed"

    :goto_2
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " microphone."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 839
    .end local v12    # "psToken":J
    :cond_1
    const-string/jumbo v4, "microphoneEnabled"

    const-wide/16 v5, 0x4

    const/4 v7, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 845
    if-eqz v14, :cond_2

    if-nez v8, :cond_2

    .line 847
    :try_start_2
    const-string v2, "Restriction"

    const-string/jumbo v3, "setMicrophoneState"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v4

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 848
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 854
    :cond_2
    :goto_3
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMicrophoneState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    return v14

    .line 810
    .end local v14    # "ret":Z
    .restart local v9    # "currentState":I
    .restart local v16    # "token":J
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.media.save_fmrecording_only"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 811
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicerecorder.rec_save"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.voicenote.rec_save"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.sec.android.app.voicenote.Controller"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 814
    :catch_0
    move-exception v10

    .line 815
    .local v10, "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    const-string/jumbo v3, "setMicrophoneState Broadcast error "

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 826
    .end local v9    # "currentState":I
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v16    # "token":J
    .restart local v14    # "ret":Z
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 831
    .restart local v12    # "psToken":J
    :cond_5
    :try_start_4
    const-string/jumbo v7, "disallowed"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 835
    :catchall_0
    move-exception v2

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 849
    .end local v12    # "psToken":J
    :catch_1
    move-exception v10

    .line 850
    .restart local v10    # "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public setMockLocation(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1394
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndLocationPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1395
    const/4 v8, 0x1

    .line 1396
    .local v8, "ret":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 1397
    .local v5, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1399
    .local v10, "token":J
    if-nez p2, :cond_0

    .line 1400
    :try_start_0
    new-instance v7, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;-><init>(Landroid/content/Context;)V

    .line 1401
    .local v7, "resetDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    invoke-virtual {v7}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings;->resetMockLocationApps()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    and-int/2addr v8, v0

    .line 1404
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const-string v1, "com.android.settings"

    iget-object v2, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1413
    .end local v7    # "resetDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :cond_0
    :goto_0
    if-eqz v8, :cond_1

    .line 1414
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "mockLocationEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v8, v0

    .line 1417
    const-string/jumbo v1, "mockLocationEnabled"

    const-wide v2, 0x80000000000L

    const/4 v4, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1423
    :cond_1
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMockLocationState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1425
    return v8

    .line 1405
    .restart local v7    # "resetDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :catch_0
    move-exception v6

    .line 1406
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "killSettings: RemoteException ex -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1409
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v7    # "resetDeveloperMode":Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
    :catch_1
    move-exception v6

    .line 1410
    .local v6, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 1411
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNonTrustedAppInstallBlock(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 3753
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceCertificatePermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3754
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3756
    .local v5, "userId":I
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string v3, "blockNonTrustedApp"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3759
    .local v6, "ret":Z
    const-string v1, "blockNonTrustedApp"

    const-wide/32 v2, 0x400000

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3765
    return v6
.end method

.method public setScreenCapture(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1203
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1204
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1205
    .local v9, "userId":I
    const/4 v8, 0x0

    .line 1207
    .local v8, "ret":Z
    new-instance v7, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1209
    .local v7, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1211
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "screenCaptureEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 1213
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScreenCapture : enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    const-string/jumbo v1, "screenCaptureEnabled"

    const-wide v2, 0x10000000000L

    const/4 v4, 0x1

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1221
    if-eqz v8, :cond_0

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    if-nez v0, :cond_0

    .line 1222
    const-string/jumbo v1, "screenCaptureEnabled"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/data/system/enterprise.conf"

    invoke-static {v1, v0, v2}, Lcom/android/server/enterprise/utils/Utils;->writePropertyValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1226
    :cond_0
    if-eqz v8, :cond_1

    .line 1227
    const/4 v0, 0x0

    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v9, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateScreenCaptureDisabledInWindowManager(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1230
    if-nez v9, :cond_1

    .line 1232
    :try_start_1
    const-string v0, "Restriction"

    const-string/jumbo v1, "setScreenCapture"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1233
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1243
    :cond_1
    :goto_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1244
    return v8

    .line 1222
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1227
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1234
    :catch_0
    move-exception v6

    .line 1235
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1239
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 1240
    .restart local v6    # "e":Ljava/lang/Exception;
    const-string v0, "RestrictionPolicy"

    const-string/jumbo v1, "setScreenCapture error"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setSdCardState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    .line 1783
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndHwPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1784
    invoke-virtual {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->getSDCardState()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1826
    :goto_0
    return v9

    .line 1787
    :cond_0
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSdCardState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1790
    .local v10, "token":J
    const/4 v9, 0x1

    .line 1791
    .local v9, "ret":Z
    const-string/jumbo v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v8

    .line 1794
    .local v8, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "sdCardEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v9, v0

    .line 1797
    const-string/jumbo v1, "sdCardEnabled"

    const-wide v2, 0x800000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1807
    if-nez p2, :cond_2

    .line 1808
    const-string v0, "RestrictionPolicy"

    const-string v1, "SdCard unmount : "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->unmountSdCard(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    :goto_1
    if-eqz v9, :cond_1

    .line 1820
    const/4 v0, 0x5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3

    const-string/jumbo v1, "enabled"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " access to external SDCard."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    move v1, v12

    move v2, v12

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1825
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_0

    .line 1812
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mountSdCard()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1815
    :catch_0
    move-exception v7

    .line 1816
    .local v7, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_1

    .line 1820
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v1, "disabled"

    goto :goto_2
.end method

.method public setTethering(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1002
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setUsbTethering(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    .line 1003
    .local v0, "ret1":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setWifiTethering(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    .line 1004
    .local v1, "ret2":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->setBluetoothTethering(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    .line 1005
    .local v2, "ret3":Z
    const-string v3, "RestrictionPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setTethering : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 13
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1314
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1315
    const/4 v9, 0x1

    .line 1316
    .local v9, "ret":Z
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    .line 1317
    .local v12, "userId":I
    new-instance v8, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v8, v0}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V

    .line 1318
    .local v8, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1320
    .local v10, "token":J
    if-nez p2, :cond_0

    .line 1321
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1323
    :cond_0
    const/4 v9, 0x1

    .line 1327
    :goto_0
    if-eqz v9, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "usbDebuggingEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    and-int/2addr v9, v0

    .line 1331
    const-string/jumbo v1, "usbDebuggingEnabled"

    const-wide v2, 0x20000000000L

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1337
    :cond_1
    if-eqz v9, :cond_2

    .line 1338
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "RestrictionPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_3

    const-string/jumbo v5, "enabled"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " USB debugging."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1342
    if-nez v12, :cond_2

    .line 1344
    :try_start_1
    const-string v0, "Restriction"

    const-string/jumbo v1, "setUsbDebuggingEnabled"

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 1345
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GearPolicy SetBooleanTypePolicy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1351
    :cond_2
    :goto_2
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUSBDebugging : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1355
    return v9

    .line 1324
    :catch_0
    move-exception v7

    .line 1325
    .local v7, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1338
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v5, "disabled"

    goto :goto_1

    .line 1346
    :catch_1
    move-exception v7

    .line 1347
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public setUsbKiesAvailability(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1970
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1972
    const/4 v0, 0x0

    return v0
.end method

.method public setUsbMassStorage(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1378
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1379
    const/4 v0, 0x0

    return v0
.end method

.method public setUsbMediaPlayerAvailability(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1987
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1988
    const/4 v12, 0x1

    .line 1989
    .local v12, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 1990
    .local v14, "token":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "usbMediaPlayerEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    and-int/2addr v12, v2

    .line 1993
    const-string/jumbo v3, "usbMediaPlayerEnabled"

    const-wide/high16 v4, 0x2000000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1999
    if-eqz v12, :cond_0

    .line 2001
    if-nez p2, :cond_0

    .line 2003
    :try_start_0
    new-instance v10, Landroid/content/Intent;

    const-string/jumbo v2, "edm.intent.action.disable.mtp"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2004
    .local v10, "intent1":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2005
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.restriction.permission.MTP_DISABLED"

    invoke-virtual {v2, v10, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2007
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v11, "intent2":Landroid/content/Intent;
    const/high16 v2, 0x20000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2009
    const-string/jumbo v2, "mtp"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2010
    const-string/jumbo v2, "ptp"

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v11, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2017
    .end local v10    # "intent1":Landroid/content/Intent;
    .end local v11    # "intent2":Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUSBMediaPlayerAvailability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    if-eqz v12, :cond_1

    .line 2020
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_2

    const-string/jumbo v7, "enabled"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " USB Media Player (MTP)."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 2025
    :cond_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2027
    return v12

    .line 2013
    :catch_0
    move-exception v9

    .line 2014
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "RestrictionPolicy"

    const-string v3, "Error in RestrictionPolicy after setting MTP policy"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2020
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v7, "disabled"

    goto :goto_1
.end method

.method public setUsbTethering(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1028
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1029
    const/4 v14, 0x1

    .local v14, "ret1":Z
    const/4 v15, 0x1

    .line 1030
    .local v15, "ret2":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1031
    .local v16, "token":J
    if-nez p2, :cond_1

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 1035
    .local v13, "mConnManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/String;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v11, v9, v10

    .line 1036
    .local v11, "iface":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    invoke-virtual {v13, v11}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    const/4 v14, 0x0

    .line 1035
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1042
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v11    # "iface":Ljava/lang/String;
    .end local v12    # "len$":I
    .end local v13    # "mConnManager":Landroid/net/ConnectivityManager;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "usbTetheringEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    .line 1045
    const-string/jumbo v3, "usbTetheringEnabled"

    const-wide v4, 0x2000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1051
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUsbTethering : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    if-eqz v14, :cond_2

    if-eqz v15, :cond_2

    .line 1053
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_3

    const-string/jumbo v7, "enabled"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " USB Tethering setting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1058
    :cond_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1060
    if-eqz v14, :cond_4

    if-eqz v15, :cond_4

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 1053
    :cond_3
    const-string/jumbo v7, "disabled"

    goto :goto_1

    .line 1060
    :cond_4
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public setUseSecureKeypad(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 3709
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceRestrictionPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3711
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseSecureKeypad : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3712
    const-string v0, "RestrictionPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUseSecureKeypad containerID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 3714
    iget-object v0, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "RESTRICTION"

    const-string/jumbo v3, "useSecureKeypad"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 3718
    .local v6, "ret":Z
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3719
    .local v5, "userId":I
    const-string/jumbo v1, "useSecureKeypad"

    const-wide/32 v2, 0x200000

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 3725
    return v6
.end method

.method public setWifiTethering(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 1087
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->enforceOwnerOnlyAndTetheringPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1088
    const/4 v15, 0x1

    .local v15, "ret1":Z
    const/16 v16, 0x1

    .line 1089
    .local v16, "ret2":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1090
    .local v18, "token":J
    if-nez p2, :cond_2

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/ConnectivityManager;

    .line 1093
    .local v13, "mConnManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/String;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v11, v9, v10

    .line 1094
    .local v11, "iface":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->matchRegex([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1095
    invoke-virtual {v13, v11}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1096
    const/4 v15, 0x0

    .line 1093
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1099
    .end local v11    # "iface":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 1101
    .local v14, "mWifiManager":Landroid/net/wifi/WifiManager;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v16

    .line 1103
    .end local v9    # "arr$":[Ljava/lang/String;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    .end local v13    # "mConnManager":Landroid/net/ConnectivityManager;
    .end local v14    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "RESTRICTION"

    const-string/jumbo v5, "wifiTetheringEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v16

    .line 1106
    const-string/jumbo v3, "wifiTetheringEnabled"

    const-wide v4, 0x4000000000L

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->updateRestrictionCache(Ljava/lang/String;JZI)V

    .line 1112
    const-string v2, "RestrictionPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiTethering : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    if-eqz v15, :cond_3

    if-eqz v16, :cond_3

    .line 1114
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "RestrictionPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_4

    const-string/jumbo v7, "enabled"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Wifi Tethering setting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 1119
    :cond_3
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1121
    if-eqz v15, :cond_5

    if-eqz v16, :cond_5

    const/4 v2, 0x1

    :goto_2
    return v2

    .line 1114
    :cond_4
    const-string/jumbo v7, "disabled"

    goto :goto_1

    .line 1121
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public systemReady()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2828
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->loadRestrictionCache(I)V

    .line 2831
    iget-object v6, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "storage"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 2832
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    if-eqz v3, :cond_0

    .line 2833
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 2834
    .local v5, "volumes":[Landroid/os/storage/StorageVolume;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-le v6, v8, :cond_0

    .line 2835
    move-object v0, v5

    .local v0, "arr$":[Landroid/os/storage/StorageVolume;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 2836
    .local v4, "v":Landroid/os/storage/StorageVolume;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2837
    iput-boolean v8, p0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->mIsUsbMassStorageAvailable:Z

    .line 2844
    .end local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v4    # "v":Landroid/os/storage/StorageVolume;
    .end local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_0
    const-string v6, "RestrictionPolicy"

    const-string/jumbo v7, "systemReady"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    return-void

    .line 2835
    .restart local v0    # "arr$":[Landroid/os/storage/StorageVolume;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v4    # "v":Landroid/os/storage/StorageVolume;
    .restart local v5    # "volumes":[Landroid/os/storage/StorageVolume;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
