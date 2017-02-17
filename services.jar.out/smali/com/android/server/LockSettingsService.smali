.class public Lcom/android/server/LockSettingsService;
.super Lcom/android/internal/widget/ILockSettings$Stub;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsService$SdpHandler;,
        Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;,
        Lcom/android/server/LockSettingsService$CredentialUtil;,
        Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;,
        Lcom/android/server/LockSettingsService$CredentialInfo;,
        Lcom/android/server/LockSettingsService$KeystoreUtil;,
        Lcom/android/server/LockSettingsService$IKeystoreUtil;
    }
.end annotation


# static fields
.field private static final DEFAULT_PASSWORD:Ljava/lang/String; = "default_password"

.field private static final DEVICE_SUPPORT_KNOX:Z

.field private static final KNOX_RECOVERY_VERSION_KEY:Ljava/lang/String; = "lockscreen.knox_recovery_version"

.field private static final KNOX_RECOVERY_VERSION_LATEST:I = 0x1

.field private static final LOCK_TYPE_BACKUP_PIN:I = 0x3

.field private static final LOCK_TYPE_BACKUP_PWD:I = 0x4

.field private static final LOCK_TYPE_NONE:I = -0x1

.field private static final LOCK_TYPE_PASSWORD:I = 0x2

.field private static final LOCK_TYPE_PATTERN:I = 0x1

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

.field private static final READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

.field private static final SDP_LOCK:Ljava/lang/Object;

.field private static final SECURE_DEBUG:Z = false

.field private static final SETTINGS_TO_BACKUP:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockSettingsService"

.field private static final TAG_KEYMGNT:Ljava/lang/String; = "LockSettingsService.KeyMgnt"

.field private static final VALID_SETTINGS:[Ljava/lang/String;

.field private static final VERIF_TYPE_GATEKEEPER:I = 0x10

.field private static final VERIF_TYPE_NONE:I = 0x0

.field private static final VERIF_TYPE_NON_SDP_MDFPP:I = 0x4

.field private static final VERIF_TYPE_NON_SDP_NON_MDFPP:I = 0x8

.field private static final VERIF_TYPE_SDP:I = 0x1

.field private static final VERIF_TYPE_SDP_NON_MDFPP:I = 0x2

.field private static mSavePassword:Ljava/lang/String;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFirstCallToVold:Z

.field private mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

.field private mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

.field private mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

.field private final mStorage:Lcom/android/server/LockSettingsStorage;

.field private final mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 141
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 165
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/LockSettingsService;->SDP_LOCK:Ljava/lang/Object;

    .line 170
    invoke-static {}, Landroid/os/PersonaManager;->isKnoxSupported()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/LockSettingsService;->DEVICE_SUPPORT_KNOX:Z

    .line 2105
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.lockedoutpermanently"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lockscreen.lockoutattemptdeadline"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lockscreen.patterneverchosen"

    aput-object v1, v0, v5

    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string/jumbo v2, "lockscreen.password_type_alternate"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "lockscreen.password_salt"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "lockscreen.disabled"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "lockscreen.options"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "lockscreen.biometric_weak_fallback"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "lockscreen.biometricweakeverchosen"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "lockscreen.power_button_instantly_locks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "lockscreen.passwordhistory"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "lock_pattern_autolock"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "lock_biometric_weak_flags"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "lock_pattern_visible_pattern"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "lock_pattern_tactile_feedback_enabled"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .line 2125
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2131
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "lockscreen.password_salt"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lockscreen.passwordhistory"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lockscreen.password_type"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    .line 2137
    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "lock_screen_owner_info_enabled"

    aput-object v1, v0, v3

    const-string/jumbo v1, "lock_screen_owner_info"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 880
    invoke-direct {p0}, Lcom/android/internal/widget/ILockSettings$Stub;-><init>()V

    .line 136
    new-instance v0, Lcom/android/server/LockSettingsStrongAuth;

    invoke-direct {v0}, Lcom/android/server/LockSettingsStrongAuth;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    .line 147
    iput-object v4, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    .line 148
    iput-object v4, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    .line 149
    iput-object v4, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 914
    new-instance v0, Lcom/android/server/LockSettingsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/LockSettingsService$2;-><init>(Lcom/android/server/LockSettingsService;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 881
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    .line 884
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 887
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 888
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 889
    const-string v0, "android.intent.action.USER_STARTING"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 890
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 894
    new-instance v0, Lcom/android/server/LockSettingsStorage;

    new-instance v1, Lcom/android/server/LockSettingsService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LockSettingsService$1;-><init>(Lcom/android/server/LockSettingsService;)V

    invoke-direct {v0, p1, v1}, Lcom/android/server/LockSettingsStorage;-><init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    .line 906
    new-instance v0, Lcom/android/server/LockSettingsService$KeystoreUtil;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LockSettingsService$KeystoreUtil;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    .line 907
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 908
    new-instance v0, Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {v0, p0, v4}, Lcom/android/server/LockSettingsService$SdpHandler;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    .line 909
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    .line 912
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LockSettingsService;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LockSettingsService;II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/LockSettingsService;JI)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStrongAuth;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/LockSettingsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # I

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->removeUser(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsService$KeystoreUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/LockSettingsService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/LockSettingsService;Landroid/service/gatekeeper/IGateKeeperService;)Landroid/service/gatekeeper/IGateKeeperService;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Landroid/service/gatekeeper/IGateKeeperService;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    return-object p1
.end method

.method static synthetic access$1600()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/server/LockSettingsService;->SDP_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/LockSettingsService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->clear(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/LockSettingsService;)Lcom/sec/knox/container/util/KeyManagementUtil;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/LockSettingsService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LockSettingsService;Ljava/lang/String;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStorage;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LockSettingsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LockSettingsService;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private adjustCredential(Ljava/lang/String;II)V
    .locals 6
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 633
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 634
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Credential"

    aput-object v3, v1, v2

    aput-object p1, v1, v4

    const-string v2, "UserId"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "LockType"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 636
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 640
    :cond_1
    if-ne p3, v4, :cond_2

    .line 641
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/LockSettingsService;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 645
    :catch_0
    move-exception v0

    .line 646
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 642
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    if-ne p3, v5, :cond_0

    .line 643
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/LockSettingsService;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 647
    :catch_1
    move-exception v0

    .line 648
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private adjustPatternToBaseOne(Ljava/lang/String;I)Z
    .locals 5
    .param p1, "oneBased"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 620
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 621
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "oneBased"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "userId"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "result":Z
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 626
    .local v1, "zeroBased":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 627
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v2

    invoke-virtual {v2, p2, p1, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->changePassword(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 628
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of pattern specified adjustment : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 629
    return v0
.end method

.method private adjustSDP(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 598
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 599
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "credential"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 601
    const/4 v2, 0x0

    .line 602
    .local v2, "result":Z
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 604
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 605
    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->guaranteeCMK(Ljava/lang/String;I)Z

    move-result v2

    .line 607
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "encodedCredential":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 609
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v3, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 615
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result of sdp specified adjustment : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 616
    return v2

    .line 611
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    .restart local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_1
    const-string v3, "adjustSDP :: Unexpected condition..."

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkCMKExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 418
    invoke-static {}, Lcom/sec/knox/container/util/KeyManagementUtil;->getInstance()Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/knox/container/util/KeyManagementUtil;->isCMKExists(II)Z

    move-result v0

    return v0
.end method

.method private final checkPasswordReadPermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsRead"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    return-void
.end method

.method private final checkReadPermission(Ljava/lang/String;I)V
    .locals 6
    .param p1, "requestedKey"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1150
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1152
    .local v0, "callingUid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1153
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_CONTACTS_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1154
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1156
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.READ_CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1162
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    :goto_1
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 1163
    sget-object v3, Lcom/android/server/LockSettingsService;->READ_PASSWORD_PROTECTED_SETTINGS:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1164
    .restart local v2    # "key":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 1166
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " needs permission "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1162
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1171
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private checkSDPassword(Ljava/lang/String;)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1595
    const/4 v2, 0x0

    .line 1596
    .local v2, "result":Z
    const-string/jumbo v5, "enterprise_shared_device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;

    move-result-object v1

    .line 1599
    .local v1, "mService":Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "loginUserName"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1600
    .local v4, "userName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v2

    .line 1615
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 1603
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 1605
    :try_start_0
    invoke-interface {v1, p1, v4}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;->checkSDPasswordTIMA(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_3

    .line 1606
    const/4 v2, 0x0

    :cond_2
    :goto_1
    move v3, v2

    .line 1615
    .restart local v3    # "result":I
    goto :goto_0

    .line 1608
    .end local v3    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1611
    :catch_0
    move-exception v0

    .line 1612
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private final checkWritePermission(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_KEYGUARD_SECURE_STORAGE"

    const-string v2, "LockSettingsWrite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    return-void
.end method

.method private clear(Ljava/lang/String;)V
    .locals 2
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 498
    const-string v0, "LockSettingsService.SDP"

    const-string v1, "Clear credential..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    if-eqz p1, :cond_0

    .line 500
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 502
    :cond_0
    const/4 p1, 0x0

    .line 503
    return-void
.end method

.method private clearHash(II)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    const/4 v1, 0x0

    .line 544
    packed-switch p2, :pswitch_data_0

    .line 554
    :goto_0
    return-void

    .line 546
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_0

    .line 549
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    goto :goto_0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doExtraAdjustment(Lcom/android/server/LockSettingsService$CredentialInfo;)Z
    .locals 5
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;

    .prologue
    const/4 v4, 0x1

    .line 557
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 558
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "CredentialInfo"

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 569
    const/4 v0, 0x1

    .line 570
    .local v0, "result":Z
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->verifType:I

    packed-switch v1, :pswitch_data_0

    .line 593
    :cond_0
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result of extra adjustment : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 594
    return v0

    .line 573
    :pswitch_1
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    if-ne v1, v4, :cond_0

    .line 574
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->adjustPatternToBaseOne(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    .line 579
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 580
    const-string/jumbo v1, "doExtraAdjustment :: Migrate SDP... "

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 581
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->adjustSDP(Ljava/lang/String;I)Z

    move-result v0

    .line 582
    if-eqz v0, :cond_0

    .line 583
    iget v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->clearHash(II)V

    goto :goto_0

    .line 586
    :cond_1
    const-string/jumbo v1, "doExtraAdjustment :: Delegate key verification to G.K..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 587
    iget-object v1, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->adjustCredential(Ljava/lang/String;II)V

    goto :goto_0

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private doLostVersionRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;)Z
    .locals 6
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;

    .prologue
    const/4 v5, 0x1

    .line 674
    const/4 v1, 0x0

    .line 675
    .local v1, "result":Z
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    if-ne v2, v5, :cond_1

    .line 677
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 678
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CredentialInfo"

    aput-object v4, v2, v3

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 680
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "encodedCredential":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 683
    const-string v2, "Migration - Verified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 684
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 685
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-virtual {v2, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->isLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    const-string v2, "Migration - Unexpected condition... reset keystore..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 687
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-virtual {v2, v3}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 688
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, v0, v3}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 690
    :cond_0
    const-wide/16 v2, 0x1

    iget v4, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    .line 691
    const/4 v1, 0x1

    .line 695
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Result of lost data recovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 697
    .end local v0    # "encodedCredential":Ljava/lang/String;
    :cond_1
    return v1

    .line 693
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    :cond_2
    const-string v2, "Migration - Unverified by SKMM..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doSelfRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;Lcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    .locals 5
    .param p1, "ci"    # Lcom/android/server/LockSettingsService$CredentialInfo;
    .param p2, "keystoreUtil"    # Lcom/android/server/LockSettingsService$IKeystoreUtil;

    .prologue
    .line 753
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 754
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "CredentialInfo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/android/server/LockSettingsService$CredentialInfo;->dump()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 756
    const/4 v0, 0x0

    .line 757
    .local v0, "response":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    const/4 v1, 0x0

    .line 759
    .local v1, "result":Z
    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->isKeyMigrationRequired(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 760
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_2

    .line 761
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardKeyMigration(Ljava/lang/String;I)Z

    move-result v1

    .line 778
    :goto_0
    if-eqz v1, :cond_0

    .line 779
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->doExtraAdjustment(Lcom/android/server/LockSettingsService$CredentialInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 780
    const-wide/16 v2, 0x1

    iget v4, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    .line 781
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 785
    :cond_0
    if-nez v0, :cond_1

    .line 786
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->ERROR:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    .line 787
    :cond_1
    return-object v0

    .line 763
    :cond_2
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardHashMigration(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 765
    :cond_3
    iget v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/LockSettingsService;->isRecoveryRequired(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 766
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->doLostVersionRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 767
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->DONE:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    goto :goto_0

    .line 768
    :cond_4
    iget-boolean v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v2, :cond_5

    .line 769
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardKeyAdjustment(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 771
    :cond_5
    iget-object v2, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-interface {p2, v2, v3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->doHardHashAdjustment(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    .line 775
    :cond_6
    sget-object v0, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->OK:Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    goto :goto_0
.end method

.method private doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .param p6, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2401
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2403
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 2404
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz p6, :cond_2

    .line 2407
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2408
    const-string v3, "LockSettingsServiceKeystore"

    const-string/jumbo v4, "mdfpp keystore migrate start for swipe fingerprint"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    const/4 v3, 0x1

    move/from16 v0, p5

    invoke-direct {p0, p1, v0, v3}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    .line 2413
    :cond_0
    new-instance v10, Lcom/android/server/LockSettingsService$8;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$8;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move-object v6, p1

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2439
    .local v2, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    .line 2440
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_1

    .line 2441
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v6

    move/from16 v0, p5

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    :cond_1
    move-object v11, v2

    .line 2477
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v11

    .line 2446
    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    new-instance v10, Lcom/android/server/LockSettingsService$9;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$9;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move-object v6, p1

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredentialBackupType(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 2472
    .restart local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_3

    .line 2473
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_3

    .line 2474
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    invoke-direct {p0, v6}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v6

    move/from16 v0, p5

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    :cond_3
    move-object v11, v2

    .line 2477
    .end local v2    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_0
.end method

.method private doVerifyBackupPin(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2293
    invoke-direct {p0, p5}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2295
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p5}, Lcom/android/server/LockSettingsStorage;->readBackupPinHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v3

    .line 2296
    .local v3, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v8, Lcom/android/server/LockSettingsService$7;

    invoke-direct {v8, p0}, Lcom/android/server/LockSettingsService$7;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v1, p0

    move v2, p5

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2323
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2324
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v1, :cond_0

    .line 2325
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v4

    invoke-virtual {v1, p5, v2, v4}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    .line 2328
    :cond_0
    return-object v0
.end method

.method private doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1776
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1777
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1778
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Password can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1781
    :cond_0
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1782
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v6, "password"

    aput-object v6, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v6, "hasChallenge"

    aput-object v6, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x4

    const-string v6, "challenge"

    aput-object v6, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v6, "userId"

    aput-object v6, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1784
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1785
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/LockSettingsService$5;

    invoke-direct {v4, p0}, Lcom/android/server/LockSettingsService$5;-><init>(Lcom/android/server/LockSettingsService;)V

    move/from16 v0, p5

    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/LockSettingsService;->verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 1803
    .local v2, "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1841
    .end local v2    # "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v2

    .line 1808
    :cond_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 1809
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    new-instance v10, Lcom/android/server/LockSettingsService$6;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$6;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move-object v6, p1

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    .line 1836
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2

    .line 1837
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_2

    .line 1838
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v6

    move/from16 v0, p5

    invoke-virtual {v3, v0, v4, v6}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    :cond_2
    move-object v2, v11

    .line 1841
    goto :goto_0
.end method

.method private doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 13
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "hasChallenge"    # Z
    .param p3, "challenge"    # J
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1661
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1662
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1663
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Pattern can\'t be null or empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1666
    :cond_0
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1667
    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v7, "pattern"

    aput-object v7, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v7, "hasChallenge"

    aput-object v7, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x4

    const-string v7, "challenge"

    aput-object v7, v3, v4

    const/4 v4, 0x5

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v7, "userId"

    aput-object v7, v3, v4

    const/4 v4, 0x7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1669
    move/from16 v0, p5

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1670
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/LockSettingsService$3;

    invoke-direct {v4, p0}, Lcom/android/server/LockSettingsService$3;-><init>(Lcom/android/server/LockSettingsService;)V

    move/from16 v0, p5

    invoke-direct {p0, v3, v0, v4}, Lcom/android/server/LockSettingsService;->verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v2

    .line 1688
    .local v2, "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v2}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 1745
    .end local v2    # "credentialResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v2

    .line 1693
    :cond_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v5

    .line 1694
    .local v5, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v5, :cond_5

    iget-boolean v3, v5, Lcom/android/server/LockSettingsStorage$CredentialHash;->isBaseZeroPattern:Z

    if-eqz v3, :cond_5

    const/4 v12, 0x1

    .line 1697
    .local v12, "shouldReEnrollBaseZero":Z
    :goto_1
    if-eqz v12, :cond_6

    .line 1698
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1703
    .local v6, "patternToVerify":Ljava/lang/String;
    :goto_2
    new-instance v10, Lcom/android/server/LockSettingsService$4;

    invoke-direct {v10, p0}, Lcom/android/server/LockSettingsService$4;-><init>(Lcom/android/server/LockSettingsService;)V

    move-object v3, p0

    move/from16 v4, p5

    move v7, p2

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/android/server/LockSettingsService;->verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v11

    .line 1732
    .local v11, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v12, :cond_2

    .line 1734
    move/from16 v0, p5

    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/LockSettingsService;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1736
    :cond_2
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_3

    .line 1737
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 1740
    :cond_3
    invoke-virtual {v11}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_4

    .line 1741
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_4

    .line 1742
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/LockSettingsService;->getKeyType(I)I

    move-result v7

    move/from16 v0, p5

    invoke-virtual {v3, v0, v4, v7}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    :cond_4
    move-object v2, v11

    .line 1745
    goto :goto_0

    .line 1694
    .end local v6    # "patternToVerify":Ljava/lang/String;
    .end local v11    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v12    # "shouldReEnrollBaseZero":Z
    :cond_5
    const/4 v12, 0x0

    goto :goto_1

    .line 1700
    .restart local v12    # "shouldReEnrollBaseZero":Z
    :cond_6
    move-object v6, p1

    .restart local v6    # "patternToVerify":Ljava/lang/String;
    goto :goto_2
.end method

.method private enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1536
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1537
    if-nez p2, :cond_0

    move-object v0, v4

    .line 1540
    .local v0, "enrolledCredentialBytes":[B
    :goto_0
    if-nez p3, :cond_1

    move-object v3, v4

    .line 1543
    .local v3, "toEnrollBytes":[B
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 1546
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    .line 1566
    :goto_2
    return-object v4

    .line 1537
    .end local v0    # "enrolledCredentialBytes":[B
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "toEnrollBytes":[B
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1540
    .restart local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_1

    .line 1552
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v3    # "toEnrollBytes":[B
    :cond_2
    iget-object v4, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v4

    const v5, 0x61000

    if-ne v4, v5, :cond_3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    invoke-virtual {v4, p4}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1554
    const-string v4, "LockSettingsServiceKeystore"

    const-string/jumbo v5, "mdfpp keystore migrate start for fingerprint"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const/4 v4, 0x1

    invoke-direct {p0, p3, p4, v4}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    .line 1559
    :cond_3
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 1560
    .local v1, "hash":[B
    if-eqz v1, :cond_4

    .line 1561
    invoke-direct {p0, p3, p4}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    :goto_3
    move-object v4, v1

    .line 1566
    goto :goto_2

    .line 1564
    :cond_4
    const-string v4, "LockSettingsService"

    const-string v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B
    .locals 6
    .param p1, "enrolledHandle"    # [B
    .param p2, "enrolledCredential"    # Ljava/lang/String;
    .param p3, "toEnroll"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3225
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 3226
    if-nez p2, :cond_0

    move-object v0, v4

    .line 3229
    .local v0, "enrolledCredentialBytes":[B
    :goto_0
    if-nez p3, :cond_1

    move-object v3, v4

    .line 3232
    .local v3, "toEnrollBytes":[B
    :goto_1
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v5

    invoke-interface {v5, p4, p1, v0, v3}, Landroid/service/gatekeeper/IGateKeeperService;->enroll(I[B[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v2

    .line 3235
    .local v2, "response":Landroid/service/gatekeeper/GateKeeperResponse;
    if-nez v2, :cond_2

    .line 3244
    :goto_2
    return-object v4

    .line 3226
    .end local v0    # "enrolledCredentialBytes":[B
    .end local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v3    # "toEnrollBytes":[B
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 3229
    .restart local v0    # "enrolledCredentialBytes":[B
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_1

    .line 3239
    .restart local v2    # "response":Landroid/service/gatekeeper/GateKeeperResponse;
    .restart local v3    # "toEnrollBytes":[B
    :cond_2
    invoke-virtual {v2}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v1

    .line 3240
    .local v1, "hash":[B
    if-nez v1, :cond_3

    .line 3242
    const-string v4, "LockSettingsService"

    const-string v5, "Throttled while enrolling a password"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v4, v1

    .line 3244
    goto :goto_2
.end method

.method private enrollKnoxCredential(Ljava/lang/String;II)V
    .locals 7
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "lockType"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 846
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 847
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "credential"

    aput-object v4, v2, v3

    aput-object p1, v2, v5

    const-string/jumbo v3, "userId"

    aput-object v3, v2, v6

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "lockType"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 849
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 850
    const/4 v0, 0x0

    .line 851
    .local v0, "encodedCredential":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 852
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    .line 853
    if-ne p3, v5, :cond_1

    .line 854
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPatternChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 860
    :goto_0
    if-eqz v0, :cond_0

    .line 861
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUpdate(Ljava/lang/String;I)Z
    invoke-static {v2, v0, p2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$400(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    .line 866
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_0
    :goto_1
    return-void

    .line 855
    .restart local v0    # "encodedCredential":Ljava/lang/String;
    .restart local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_1
    if-ne p3, v6, :cond_2

    .line 856
    invoke-virtual {v1, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->onPasswordChange(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_2
    const-string/jumbo v2, "enrollKnoxCredential : Unknown lock type.."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 864
    .end local v0    # "encodedCredential":Ljava/lang/String;
    .end local v1    # "pms":Lcom/android/server/pm/PersonaManagerService;
    :cond_3
    const-string/jumbo v2, "enrollKnoxCredential : Unexpected condition... empty credential..."

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getCurrentHandle(I)[B
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1354
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->getStoredCredentialType(I)I

    move-result v2

    .line 1355
    .local v2, "currentHandleType":I
    packed-switch v2, :pswitch_data_0

    .line 1376
    :pswitch_0
    const/4 v1, 0x0

    .line 1381
    .local v1, "currentHandle":[B
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_0

    .line 1382
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stored handle type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] but no handle available"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_0
    return-object v1

    .line 1357
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1358
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1361
    .restart local v1    # "currentHandle":[B
    :cond_1
    goto :goto_0

    .line 1363
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1364
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1367
    .restart local v1    # "currentHandle":[B
    :cond_2
    goto :goto_0

    .line 1369
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 1370
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 1373
    .restart local v1    # "currentHandle":[B
    :cond_3
    goto :goto_0

    .line 1355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getCurrentHandleBackupType(II)[B
    .locals 5
    .param p1, "userId"    # I
    .param p2, "currentHandleType"    # I

    .prologue
    const/4 v1, 0x0

    .line 3195
    packed-switch p2, :pswitch_data_0

    .line 3210
    const/4 v1, 0x0

    .line 3215
    .local v1, "currentHandle":[B
    :goto_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-nez v1, :cond_0

    .line 3216
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stored handle Backup type ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] but no handle available"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3219
    :cond_0
    return-object v1

    .line 3197
    .end local v1    # "currentHandle":[B
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->readBackupPinHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 3198
    .local v0, "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 3201
    .restart local v1    # "currentHandle":[B
    :cond_1
    goto :goto_0

    .line 3203
    .end local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    .end local v1    # "currentHandle":[B
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1}, Lcom/android/server/LockSettingsStorage;->readBackupPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 3204
    .restart local v0    # "credential":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    .line 3207
    .restart local v1    # "currentHandle":[B
    :cond_2
    goto :goto_0

    .line 3195
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getEDMInstance()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 1635
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 1636
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1638
    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "encodedCredential":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    .line 480
    .local v1, "pms":Lcom/android/server/pm/PersonaManagerService;
    if-eqz v1, :cond_0

    .line 481
    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/pm/PersonaManagerService;->getEncodedPassword(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 483
    :cond_0
    return-object v0
.end method

.method private declared-synchronized getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2160
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    if-eqz v2, :cond_0

    .line 2161
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2175
    :goto_0
    monitor-exit p0

    return-object v1

    .line 2164
    :cond_0
    :try_start_1
    const-string v2, "android.service.gatekeeper.IGateKeeperService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2166
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_2

    .line 2167
    new-instance v1, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/LockSettingsService$GateKeeperDiedRecipient;-><init>(Lcom/android/server/LockSettingsService;Lcom/android/server/LockSettingsService$1;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2168
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperServiceMDFPP$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    .line 2171
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mGateKeeperService:Landroid/service/gatekeeper/IGateKeeperService;

    goto :goto_0

    .line 2168
    :cond_1
    invoke-static {v0}, Landroid/service/gatekeeper/IGateKeeperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    goto :goto_1

    .line 2174
    :cond_2
    const-string v2, "LockSettingsService"

    const-string v3, "Unable to acquire GateKeeperService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2160
    .end local v0    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private getKeyType(I)I
    .locals 4
    .param p1, "lockType"    # I

    .prologue
    .line 422
    const/4 v0, -0x1

    .line 423
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 435
    :goto_0
    const-string v1, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getKeyType :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return v0

    .line 426
    :pswitch_0
    const/4 v0, 0x1

    .line 427
    goto :goto_0

    .line 430
    :pswitch_1
    const/4 v0, 0x3

    .line 431
    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getKnoxRecoveryVersion(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "ret":I
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v3, "lockscreen.knox_recovery_version"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 523
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/LockSettingsService;->setKnoxRecoveryVersion(JI)V

    .line 528
    :goto_0
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery version for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 531
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    return v0

    .line 525
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 2143
    const-string/jumbo v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2144
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 2145
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 2147
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    .prologue
    .line 460
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getProfiles(I)Ljava/util/List;
    .locals 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1300
    iget-object v7, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "user"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .line 1301
    .local v5, "um":Landroid/os/UserManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v6

    .line 1305
    .local v6, "versionInfo":Landroid/os/Bundle;
    if-eqz v6, :cond_3

    const-string v7, "2.0"

    const-string/jumbo v8, "version"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1306
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 1307
    .local v4, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1311
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_0
    :goto_0
    return-object v2

    .line 1316
    .restart local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1317
    .local v3, "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1318
    .local v1, "pi":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1319
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1324
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v4    # "uinfo":Landroid/content/pm/UserInfo;
    :cond_3
    invoke-virtual {v5, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private getStoredHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 653
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->getStoredHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 657
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    return-object v0
.end method

.method private getVerificationType(II)I
    .locals 4
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "verificationType":I
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 442
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 443
    const/4 v1, 0x1

    .line 456
    :cond_0
    :goto_0
    return v1

    .line 445
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 447
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/LockSettingsService;->getStoredHash(II)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 449
    .local v0, "storedHash":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v0, :cond_3

    .line 450
    const/4 v1, 0x4

    goto :goto_0

    .line 451
    :cond_3
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v2, :cond_4

    .line 452
    const/16 v1, 0x8

    goto :goto_0

    .line 453
    :cond_4
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 454
    const/16 v1, 0x10

    goto :goto_0
.end method

.method private haveKnoxPassword(II)Z
    .locals 6
    .param p1, "userId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 1236
    const/4 v1, 0x0

    .line 1237
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 1239
    .local v2, "sdpEnabled":Z
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1240
    const/4 v1, 0x1

    .line 1259
    :goto_0
    return v1

    .line 1243
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v3

    iget-boolean v2, v3, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1249
    :goto_1
    if-eqz v2, :cond_1

    .line 1250
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v1

    goto :goto_0

    .line 1245
    :catch_0
    move-exception v0

    .line 1246
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "havePassword :: Error occured..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1251
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x1

    if-ne p2, v3, :cond_2

    .line 1252
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v1

    goto :goto_0

    .line 1253
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_3

    .line 1254
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v1

    goto :goto_0

    .line 1256
    :cond_3
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "havePassword :: Wrong condition... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKeyMigrationRequired(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 702
    .local v0, "result":Z
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v0

    .line 704
    :cond_0
    return v0
.end method

.method private isKnoxUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 464
    const/4 v0, 0x0

    .line 465
    .local v0, "ret":Z
    const/16 v1, 0x64

    if-lt p1, v1, :cond_0

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_0

    .line 472
    const/4 v0, 0x1

    .line 474
    :cond_0
    return v0
.end method

.method private isRecoveryRequired(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 661
    const/4 v1, 0x0

    .line 662
    .local v1, "result":Z
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 663
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->getKnoxRecoveryVersion(I)I

    move-result v0

    .line 665
    .local v0, "currentVersion":I
    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 666
    const/4 v1, 0x1

    .line 669
    .end local v0    # "currentVersion":I
    :cond_0
    return v1
.end method

.method private isSdpSupported()Z
    .locals 1

    .prologue
    .line 413
    sget-boolean v0, Lcom/android/server/LockSettingsService;->DEVICE_SUPPORT_KNOX:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private migrateMDFPPKeystore(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 5
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 2903
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "this model was mdfpp keystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    if-nez p2, :cond_2

    .line 2905
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "mdfpp keystore is password try MdfppMigrateKeystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2906
    invoke-interface {p5, p3}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, v4}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2907
    invoke-interface {p5, p3, v1, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2908
    if-nez p4, :cond_0

    .line 2909
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "hasn\'t challenge"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 2936
    :cond_0
    :goto_0
    return-object v1

    .line 2913
    :cond_1
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "password value is wrong"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 2916
    :cond_2
    iget v2, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v2, :cond_5

    .line 2917
    invoke-interface {p5, p3, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2918
    .local v0, "hash":[B
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "mdfpp keystore is pattern try MdfppMigrateKeystore"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    iget-object v2, p2, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2920
    invoke-interface {p5, p3}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, v4}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(Ljava/lang/String;IZ)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2921
    const-string v1, "LockSettingsSerivceKeystore"

    const-string v2, "MdfppMigrateKeystore failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 2924
    :cond_3
    invoke-interface {p5, p3, v1, p1}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2925
    if-nez p4, :cond_0

    .line 2926
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "hasn\'t challenge"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2927
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 2930
    :cond_4
    const-string v1, "LockSettingsSerivceKeystore"

    const-string/jumbo v2, "pattern value is wrong"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    sget-object v1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 2934
    .end local v0    # "hash":[B
    :cond_5
    const-string v2, "LockSettingsSerivceKeystore"

    const-string/jumbo v3, "this case would not happened"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private migrateMDFPPKeystore(Ljava/lang/String;IZ)Z
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "isFingerprint"    # Z

    .prologue
    .line 2941
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 2942
    .local v1, "ks":Landroid/security/KeyStore;
    const/4 v5, 0x1

    .line 2944
    .local v5, "result":Z
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "call MDFPPMigrateKeystore with userHandle : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2945
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getProfiles(I)Ljava/util/List;

    move-result-object v4

    .line 2947
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2948
    .local v2, "pi":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2949
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v6, p2}, Landroid/security/KeyStore;->onUserAddedMDFPP(II)V

    .line 2950
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onUserAddedMDFPP for userId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "with parentId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2954
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 2955
    .restart local v2    # "pi":Landroid/content/pm/UserInfo;
    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    const/16 v7, 0x3e8

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v3

    .line 2956
    .local v3, "profileUid":I
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "profileUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2958
    invoke-virtual {v1, v3, p1, p3}, Landroid/security/KeyStore;->migrateMDFPPKeystore(ILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 2959
    const-string v6, "LockSettingsService keystore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MdfppMigrateKeystore failed with profileUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2961
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 2966
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v3    # "profileUid":I
    :cond_4
    return v5
.end method

.method private migrateOldData()V
    .locals 36

    .prologue
    .line 957
    :try_start_0
    const-string/jumbo v32, "migrated"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_2

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 959
    .local v11, "cr":Landroid/content/ContentResolver;
    sget-object v10, Lcom/android/server/LockSettingsService;->VALID_SETTINGS:[Ljava/lang/String;

    .local v10, "arr$":[Ljava/lang/String;
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    aget-object v29, v10, v15

    .line 960
    .local v29, "validSetting":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-static {v11, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 961
    .local v30, "value":Ljava/lang/String;
    if-eqz v30, :cond_0

    .line 962
    const/16 v32, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 959
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 966
    .end local v29    # "validSetting":Ljava/lang/String;
    .end local v30    # "value":Ljava/lang/String;
    :cond_1
    const-string/jumbo v32, "migrated"

    const-string/jumbo v33, "true"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 967
    const-string v32, "LockSettingsService"

    const-string v33, "Migrated lock settings to new location"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    .end local v10    # "arr$":[Ljava/lang/String;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    :cond_2
    const-string/jumbo v32, "migrated_user_specific"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_9

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string/jumbo v33, "user"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 973
    .local v24, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    .line 974
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 975
    .local v28, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/16 v25, 0x0

    .local v25, "user":I
    :goto_1
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v25

    move/from16 v1, v32

    if-ge v0, v1, :cond_8

    .line 977
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 978
    .local v27, "userId":I
    const-string/jumbo v6, "lock_screen_owner_info"

    .line 979
    .local v6, "OWNER_INFO":Ljava/lang/String;
    const-string/jumbo v32, "lock_screen_owner_info"

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v19

    .line 980
    .local v19, "ownerInfo":Ljava/lang/String;
    if-eqz v19, :cond_3

    .line 981
    const-string/jumbo v32, "lock_screen_owner_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v19

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 982
    const-string v32, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v32

    move/from16 v2, v27

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 988
    :cond_3
    const-string/jumbo v7, "lock_screen_owner_info_enabled"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 991
    .local v7, "OWNER_INFO_ENABLED":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v32, "lock_screen_owner_info_enabled"

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-static {v11, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 992
    .local v17, "ivalue":I
    if-eqz v17, :cond_5

    const/4 v13, 0x1

    .line 993
    .local v13, "enabled":Z
    :goto_2
    const-string/jumbo v34, "lock_screen_owner_info_enabled"

    if-eqz v13, :cond_6

    const-wide/16 v32, 0x1

    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-wide/from16 v2, v32

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1000
    .end local v13    # "enabled":Z
    .end local v17    # "ivalue":I
    :cond_4
    :goto_4
    :try_start_2
    const-string/jumbo v32, "lock_screen_owner_info_enabled"

    const/16 v33, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v27

    invoke-static {v11, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 975
    add-int/lit8 v25, v25, 0x1

    goto :goto_1

    .line 992
    .restart local v17    # "ivalue":I
    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    .line 993
    .restart local v13    # "enabled":Z
    :cond_6
    const-wide/16 v32, 0x0

    goto :goto_3

    .line 994
    .end local v13    # "enabled":Z
    .end local v17    # "ivalue":I
    :catch_0
    move-exception v12

    .line 996
    .local v12, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 997
    const-string/jumbo v32, "lock_screen_owner_info_enabled"

    const-wide/16 v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 1136
    .end local v6    # "OWNER_INFO":Ljava/lang/String;
    .end local v7    # "OWNER_INFO_ENABLED":Ljava/lang/String;
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v12    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v19    # "ownerInfo":Ljava/lang/String;
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v25    # "user":I
    .end local v27    # "userId":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_1
    move-exception v20

    .line 1137
    .local v20, "re":Landroid/os/RemoteException;
    const-string v32, "LockSettingsService"

    const-string v33, "Unable to migrate old data"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1139
    .end local v20    # "re":Landroid/os/RemoteException;
    :cond_7
    :goto_5
    return-void

    .line 1003
    .restart local v11    # "cr":Landroid/content/ContentResolver;
    .restart local v24    # "um":Landroid/os/UserManager;
    .restart local v25    # "user":I
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_8
    :try_start_3
    const-string/jumbo v32, "migrated_user_specific"

    const-string/jumbo v33, "true"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1004
    const-string v32, "LockSettingsService"

    const-string v33, "Migrated per-user lock settings to new location"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    .end local v11    # "cr":Landroid/content/ContentResolver;
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v25    # "user":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_9
    const-string/jumbo v32, "migrated_biometric_weak"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_c

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string/jumbo v33, "user"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1010
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1011
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_b

    .line 1012
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1013
    .restart local v27    # "userId":I
    const-string/jumbo v32, "lockscreen.password_type"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1016
    .local v22, "type":J
    const-string/jumbo v32, "lockscreen.password_type_alternate"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .line 1019
    .local v8, "alternateType":J
    const-wide/32 v32, 0x8000

    cmp-long v32, v22, v32

    if-nez v32, :cond_a

    .line 1020
    const-string/jumbo v32, "lockscreen.password_type"

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v27

    invoke-virtual {v0, v1, v8, v9, v2}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1024
    :cond_a
    const-string/jumbo v32, "lockscreen.password_type_alternate"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1011
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 1028
    .end local v8    # "alternateType":J
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_b
    const-string/jumbo v32, "migrated_biometric_weak"

    const-string/jumbo v33, "true"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1029
    const-string v32, "LockSettingsService"

    const-string v33, "Migrated biometric weak to use the fallback instead"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    .end local v14    # "i":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_c
    const-string/jumbo v32, "migrated_lockscreen_disabled"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_11

    .line 1036
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string/jumbo v33, "user"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1038
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1039
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v26

    .line 1040
    .local v26, "userCount":I
    const/16 v21, 0x0

    .line 1041
    .local v21, "switchableUsers":I
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_7
    move/from16 v0, v26

    if-ge v14, v0, :cond_e

    .line 1042
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    invoke-virtual/range {v32 .. v32}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    move-result v32

    if-eqz v32, :cond_d

    .line 1043
    add-int/lit8 v21, v21, 0x1

    .line 1041
    :cond_d
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 1047
    :cond_e
    const/16 v32, 0x1

    move/from16 v0, v21

    move/from16 v1, v32

    if-le v0, v1, :cond_10

    .line 1048
    const/4 v14, 0x0

    :goto_8
    move/from16 v0, v26

    if-ge v14, v0, :cond_10

    .line 1049
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v16, v0

    .line 1051
    .local v16, "id":I
    const-string/jumbo v32, "lockscreen.disabled"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v32

    if-eqz v32, :cond_f

    .line 1052
    const-string/jumbo v32, "lockscreen.disabled"

    const/16 v33, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setBoolean(Ljava/lang/String;ZI)V

    .line 1048
    :cond_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 1057
    .end local v16    # "id":I
    :cond_10
    const-string/jumbo v32, "migrated_lockscreen_disabled"

    const-string/jumbo v33, "true"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1058
    const-string v32, "LockSettingsService"

    const-string v33, "Migrated lockscreen disabled flag"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    .end local v14    # "i":I
    .end local v21    # "switchableUsers":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v26    # "userCount":I
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_11
    const-string/jumbo v32, "migrated_clear_locktype_if_no_password"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_16

    .line 1062
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string/jumbo v33, "user"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1063
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1064
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_9
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_15

    .line 1065
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1066
    .restart local v27    # "userId":I
    const/16 v32, 0x64

    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_13

    .line 1067
    const-string/jumbo v32, "lockscreen.password_type"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1070
    .restart local v22    # "type":J
    const-wide/32 v32, 0x20000

    cmp-long v32, v22, v32

    if-eqz v32, :cond_12

    const-wide/32 v32, 0x30000

    cmp-long v32, v22, v32

    if-eqz v32, :cond_12

    const-wide/32 v32, 0x40000

    cmp-long v32, v22, v32

    if-eqz v32, :cond_12

    const-wide/32 v32, 0x50000

    cmp-long v32, v22, v32

    if-eqz v32, :cond_12

    const-wide/32 v32, 0x60000

    cmp-long v32, v22, v32

    if-nez v32, :cond_14

    .line 1075
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v32

    if-nez v32, :cond_13

    .line 1076
    const-string/jumbo v32, "lockscreen.password_type"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1064
    .end local v22    # "type":J
    :cond_13
    :goto_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 1080
    .restart local v22    # "type":J
    :cond_14
    const-wide/32 v32, 0x10000

    cmp-long v32, v22, v32

    if-nez v32, :cond_13

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v32

    if-nez v32, :cond_13

    .line 1082
    const-string/jumbo v32, "lockscreen.password_type"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    goto :goto_a

    .line 1089
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_15
    const-string/jumbo v32, "migrated_clear_locktype_if_no_password"

    const-string/jumbo v33, "true"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1090
    const-string v32, "LockSettingsService"

    const-string v33, "Migrated clear locktype if No password."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    .end local v14    # "i":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_16
    const-string/jumbo v32, "migrated_lockscreen_fingerprintkey"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_19

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string/jumbo v33, "user"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1095
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1096
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_b
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_18

    .line 1097
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1098
    .restart local v27    # "userId":I
    const-string/jumbo v32, "lockscreen.password_type"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1101
    .restart local v22    # "type":J
    const-string/jumbo v32, "lockscreen.password_type_alternate"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v8

    .line 1104
    .restart local v8    # "alternateType":J
    const-wide/32 v32, 0x61000

    cmp-long v32, v22, v32

    if-nez v32, :cond_17

    .line 1105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1096
    :cond_17
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    .line 1108
    .end local v8    # "alternateType":J
    .end local v22    # "type":J
    .end local v27    # "userId":I
    :cond_18
    const-string/jumbo v32, "migrated_lockscreen_fingerprintkey"

    const-string/jumbo v33, "true"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1109
    const-string v32, "LockSettingsService"

    const-string v33, "Migrated lockscreen fingerprint key flag"

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    .end local v14    # "i":I
    .end local v24    # "um":Landroid/os/UserManager;
    .end local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_19
    const-string/jumbo v32, "migrated_clear_locktype_if_no_pattern"

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v32

    if-nez v32, :cond_7

    .line 1113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    const-string/jumbo v33, "user"

    invoke-virtual/range {v32 .. v33}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/os/UserManager;

    .line 1114
    .restart local v24    # "um":Landroid/os/UserManager;
    invoke-virtual/range {v24 .. v24}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v28

    .line 1115
    .restart local v28    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_c
    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v14, v0, :cond_1b

    .line 1116
    move-object/from16 v0, v28

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v32

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 1117
    .restart local v27    # "userId":I
    const/16 v32, 0x64

    move/from16 v0, v27

    move/from16 v1, v32

    if-ge v0, v1, :cond_1a

    .line 1118
    const-string/jumbo v32, "lockscreen.password_type"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v22

    .line 1121
    .restart local v22    # "type":J
    const-wide/32 v32, 0x10000

    cmp-long v32, v22, v32

    if-nez v32, :cond_1a

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    move-object/from16 v32, v0

    const-string/jumbo v33, "lock_pattern_autolock"

    const/16 v34, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v31

    .line 1124
    .local v31, "valuePattern":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_1a

    const-string v32, "0"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_1a

    .line 1125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 1126
    const-string/jumbo v32, "lockscreen.password_type"

    const-wide/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-wide/from16 v2, v34

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/LockSettingsService;->setLong(Ljava/lang/String;JI)V

    .line 1115
    .end local v22    # "type":J
    .end local v31    # "valuePattern":Ljava/lang/String;
    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto :goto_c

    .line 1133
    .end local v27    # "userId":I
    :cond_1b
    const-string/jumbo v32, "migrated_clear_locktype_if_no_pattern"

    const-string/jumbo v33, "true"

    const/16 v34, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1134
    const-string v32, "LockSettingsService"

    const-string v33, "Migrated clear locktype if No pattern."

    invoke-static/range {v32 .. v33}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_5
.end method

.method private protect(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "credential"    # Ljava/lang/String;

    .prologue
    .line 487
    const/4 v1, 0x0

    .line 488
    .local v1, "protectedCredential":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 490
    .local v0, "credentialBytes":[B
    new-instance v1, Ljava/lang/String;

    .end local v1    # "protectedCredential":Ljava/lang/String;
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 492
    .restart local v1    # "protectedCredential":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->zeroOut([B)V

    .line 494
    .end local v0    # "credentialBytes":[B
    :cond_0
    return-object v1
.end method

.method private removeUser(I)V
    .locals 5
    .param p1, "userId"    # I

    .prologue
    .line 2071
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStorage;->removeUser(I)V

    .line 2072
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v3, p1}, Lcom/android/server/LockSettingsStrongAuth;->removeUser(I)V

    .line 2074
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    .line 2075
    .local v2, "ks":Landroid/security/KeyStore;
    invoke-virtual {v2, p1}, Landroid/security/KeyStore;->onUserRemoved(I)V

    .line 2078
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v1

    .line 2079
    .local v1, "gk":Landroid/service/gatekeeper/IGateKeeperService;
    if-eqz v1, :cond_0

    .line 2080
    invoke-interface {v1, p1}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2085
    .end local v1    # "gk":Landroid/service/gatekeeper/IGateKeeperService;
    :cond_0
    :goto_0
    return-void

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "LockSettingsService"

    const-string/jumbo v4, "unable to clear GK secure user id"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private saveSDPassword(Ljava/lang/String;)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1571
    const/4 v2, 0x0

    .line 1572
    .local v2, "result":Z
    const-string/jumbo v5, "enterprise_shared_device_policy"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;

    move-result-object v1

    .line 1575
    .local v1, "mService":Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;
    iget-object v5, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "loginUserName"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1576
    .local v4, "userName":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    move v3, v2

    .line 1591
    .end local v2    # "result":Z
    .local v3, "result":I
    :goto_0
    return v3

    .line 1579
    .end local v3    # "result":I
    .restart local v2    # "result":Z
    :cond_1
    if-eqz v1, :cond_2

    .line 1581
    :try_start_0
    invoke-interface {v1, p1, v4}, Lcom/sec/enterprise/knox/shareddevice/aidl/IEnterpriseSharedDevicePolicy;->saveSDPasswordInTIMA(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_3

    .line 1582
    const/4 v2, 0x0

    :cond_2
    :goto_1
    move v3, v2

    .line 1591
    .restart local v3    # "result":I
    goto :goto_0

    .line 1584
    .end local v3    # "result":I
    :cond_3
    const/4 v2, 0x1

    goto :goto_1

    .line 1587
    :catch_0
    move-exception v0

    .line 1588
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private setKeystorePassword(Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1332
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1334
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1335
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1336
    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, p1}, Landroid/security/KeyStore;->onUserPasswordChanged(ILjava/lang/String;)Z

    goto :goto_0

    .line 1338
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private setKnoxRecoveryVersion(JI)V
    .locals 3
    .param p1, "value"    # J
    .param p3, "userId"    # I

    .prologue
    .line 535
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const-string/jumbo v1, "lockscreen.knox_recovery_version"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 538
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recovery version for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been set as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 541
    :cond_0
    return-void
.end method

.method private setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1193
    sget-object v0, Lcom/android/server/LockSettingsService;->SETTINGS_TO_BACKUP:[Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    const-string v0, "com.android.providers.settings"

    invoke-static {v0}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 1196
    :cond_0
    return-void
.end method

.method private unlockKeystore(Ljava/lang/String;I)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    .line 1342
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    .line 1344
    .local v1, "ks":Landroid/security/KeyStore;
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->getProfiles(I)Ljava/util/List;

    move-result-object v3

    .line 1345
    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1346
    .local v2, "pi":Landroid/content/pm/UserInfo;
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v4, p1}, Landroid/security/KeyStore;->unlock(ILjava/lang/String;)Z

    goto :goto_0

    .line 1348
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    :cond_0
    return-void
.end method

.method private verifyCredential(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 19
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1847
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1849
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1956
    :cond_1
    :goto_0
    return-object v15

    .line 1860
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1861
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 1866
    :cond_3
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/security/KeyStore;->isNeedMigration(I)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object/from16 v4, p0

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p7

    .line 1867
    invoke-direct/range {v4 .. v9}, Lcom/android/server/LockSettingsService;->migrateMDFPPKeystore(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v15

    .line 1869
    .local v15, "ret":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v15, :cond_1

    .line 1894
    .end local v15    # "ret":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_9

    .line 1896
    :cond_5
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 1873
    :cond_6
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_8

    .line 1874
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v11

    .line 1876
    .local v11, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1877
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 1879
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1880
    if-nez p4, :cond_4

    .line 1881
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_0

    .line 1887
    :cond_7
    sget-object v15, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto/16 :goto_0

    .line 1890
    .end local v11    # "hash":[B
    :cond_8
    if-eqz p2, :cond_4

    .line 1891
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1900
    :cond_9
    const/16 v16, 0x0

    .line 1901
    .local v16, "shouldReEnroll":Z
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 1902
    .local v9, "credBytes":[B
    if-eqz p4, :cond_d

    .line 1903
    const/16 v18, 0x0

    .line 1904
    .local v18, "token":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    move/from16 v5, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 1906
    .local v10, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v14

    .line 1907
    .local v14, "responseCode":I
    const/4 v4, 0x1

    if-ne v14, v4, :cond_a

    .line 1908
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v17

    .line 1911
    .local v17, "time":I
    new-instance v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    move/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 1941
    .end local v17    # "time":I
    .end local v18    # "token":[B
    .local v13, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_2
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    array-length v4, v9

    if-ge v12, v4, :cond_10

    .line 1942
    const/4 v4, 0x0

    aput-byte v4, v9, v12

    .line 1941
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1912
    .end local v12    # "i":I
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v18    # "token":[B
    :cond_a
    if-nez v14, :cond_c

    .line 1913
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v18

    .line 1914
    if-nez v18, :cond_b

    .line 1916
    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 1919
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_b
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v16

    .line 1920
    new-instance v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 1923
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_c
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 1926
    .end local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v14    # "responseCode":I
    .end local v18    # "token":[B
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v9}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 1928
    .restart local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v14

    .line 1929
    .restart local v14    # "responseCode":I
    const/4 v4, 0x1

    if-ne v14, v4, :cond_e

    .line 1930
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v17

    .line 1933
    .restart local v17    # "time":I
    new-instance v13, Lcom/android/internal/widget/VerifyCredentialResponse;

    move/from16 v0, v17

    invoke-direct {v13, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 1934
    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v17    # "time":I
    :cond_e
    if-nez v14, :cond_f

    .line 1935
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v16

    .line 1936
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 1938
    .end local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_f
    sget-object v13, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v13    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_2

    .line 1944
    .restart local v12    # "i":I
    :cond_10
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_12

    .line 1946
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 1947
    if-eqz v16, :cond_11

    .line 1948
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_11
    :goto_4
    move-object v15, v13

    .line 1956
    goto/16 :goto_0

    .line 1950
    :cond_12
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 1951
    invoke-virtual {v13}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_11

    .line 1952
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/LockSettingsService;->requireStrongAuth(II)V

    goto :goto_4
.end method

.method private verifyCredentialBackupType(ILcom/android/server/LockSettingsStorage$CredentialHash;Ljava/lang/String;ZJLcom/android/server/LockSettingsService$CredentialUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 17
    .param p1, "userId"    # I
    .param p2, "storedHash"    # Lcom/android/server/LockSettingsStorage$CredentialHash;
    .param p3, "credential"    # Ljava/lang/String;
    .param p4, "hasChallenge"    # Z
    .param p5, "challenge"    # J
    .param p7, "credentialUtil"    # Lcom/android/server/LockSettingsService$CredentialUtil;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3250
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    array-length v4, v4

    if-nez v4, :cond_2

    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3252
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 3341
    :cond_1
    :goto_0
    return-object v12

    .line 3263
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3264
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3267
    :cond_3
    if-eqz p2, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-nez v4, :cond_5

    .line 3268
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "verifyCredential storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3269
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->toHash(Ljava/lang/String;I)[B

    move-result-object v11

    .line 3270
    .local v11, "hash":[B
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-static {v11, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3271
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    invoke-interface {v0, v1}, Lcom/android/server/LockSettingsService$CredentialUtil;->adjustForKeystore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v4, v1}, Lcom/android/server/LockSettingsService;->unlockKeystore(Ljava/lang/String;I)V

    .line 3273
    const/4 v4, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-interface {v0, v1, v4, v2}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3274
    if-nez p4, :cond_6

    .line 3275
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3281
    :cond_4
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0

    .line 3284
    .end local v11    # "hash":[B
    :cond_5
    if-eqz p2, :cond_6

    .line 3285
    const-string v4, "LockSettingsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "storedHash "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/LockSettingsStorage$CredentialHash;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    :cond_6
    const/4 v14, 0x0

    .line 3290
    .local v14, "shouldReEnroll":Z
    if-eqz p4, :cond_a

    .line 3291
    const/16 v16, 0x0

    .line 3292
    .local v16, "token":[B
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    move/from16 v5, p1

    move-wide/from16 v6, p5

    invoke-interface/range {v4 .. v9}, Landroid/service/gatekeeper/IGateKeeperService;->verifyChallenge(IJ[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 3294
    .local v10, "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 3295
    .local v13, "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_7

    .line 3296
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v15

    .line 3299
    .local v15, "time":I
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 3330
    .end local v15    # "time":I
    .end local v16    # "token":[B
    .local v12, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_1
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_d

    .line 3332
    if-eqz v14, :cond_1

    .line 3333
    move-object/from16 v0, p7

    move-object/from16 v1, p3

    move-object/from16 v2, p3

    move/from16 v3, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/LockSettingsService$CredentialUtil;->setCredential(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3300
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v16    # "token":[B
    :cond_7
    if-nez v13, :cond_9

    .line 3301
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getPayload()[B

    move-result-object v16

    .line 3302
    if-nez v16, :cond_8

    .line 3304
    const-string v4, "LockSettingsService"

    const-string/jumbo v5, "verifyChallenge response had no associated payload"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3307
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_8
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 3308
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>([B)V

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3311
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_9
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3314
    .end local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v13    # "responseCode":I
    .end local v16    # "token":[B
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->hash:[B

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move/from16 v0, p1

    invoke-interface {v4, v0, v5, v6}, Landroid/service/gatekeeper/IGateKeeperService;->verify(I[B[B)Landroid/service/gatekeeper/GateKeeperResponse;

    move-result-object v10

    .line 3316
    .restart local v10    # "gateKeeperResponse":Landroid/service/gatekeeper/GateKeeperResponse;
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getResponseCode()I

    move-result v13

    .line 3317
    .restart local v13    # "responseCode":I
    const/4 v4, 0x1

    if-ne v13, v4, :cond_b

    .line 3318
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getTimeout()I

    move-result v15

    .line 3321
    .restart local v15    # "time":I
    new-instance v12, Lcom/android/internal/widget/VerifyCredentialResponse;

    invoke-direct {v12, v15}, Lcom/android/internal/widget/VerifyCredentialResponse;-><init>(I)V

    .line 3322
    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .end local v15    # "time":I
    :cond_b
    if-nez v13, :cond_c

    .line 3323
    invoke-virtual {v10}, Landroid/service/gatekeeper/GateKeeperResponse;->getShouldReEnroll()Z

    move-result v14

    .line 3324
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3326
    .end local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_c
    sget-object v12, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .restart local v12    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    goto :goto_1

    .line 3335
    :cond_d
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 3336
    invoke-virtual {v12}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    if-lez v4, :cond_1

    .line 3337
    const/16 v4, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v4, v1}, Lcom/android/server/LockSettingsService;->requireStrongAuth(II)V

    goto/16 :goto_0
.end method

.method private verifyKnoxCredential(Ljava/lang/String;ILcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 10
    .param p1, "credential"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "keystoreUtil"    # Lcom/android/server/LockSettingsService$IKeystoreUtil;

    .prologue
    const/16 v9, 0x10

    .line 791
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 792
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "credential"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "userId"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 793
    const-string v1, "Verification - Start!"

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 795
    const/4 v8, 0x0

    .line 796
    .local v8, "verifyResponse":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 797
    const-string v1, "Verification - Unacceptable credential..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 839
    :cond_0
    :goto_0
    if-nez v8, :cond_1

    .line 840
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 841
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verification - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/internal/widget/VerifyCredentialResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    .line 842
    return-object v8

    .line 799
    :cond_2
    new-instance v0, Lcom/android/server/LockSettingsService$CredentialInfo;

    invoke-interface {p3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->getLockType()I

    move-result v3

    invoke-interface {p3}, Lcom/android/server/LockSettingsService$IKeystoreUtil;->getLockType()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/android/server/LockSettingsService;->getVerificationType(II)I

    move-result v4

    move-object v1, p0

    move v2, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsService$CredentialInfo;-><init>(Lcom/android/server/LockSettingsService;IIILjava/lang/String;)V

    .line 804
    .local v0, "ci":Lcom/android/server/LockSettingsService$CredentialInfo;
    invoke-direct {p0, v0, p3}, Lcom/android/server/LockSettingsService;->doSelfRecovery(Lcom/android/server/LockSettingsService$CredentialInfo;Lcom/android/server/LockSettingsService$IKeystoreUtil;)Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;

    move-result-object v7

    .line 806
    .local v7, "recoveryResponse":Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;
    invoke-virtual {v7}, Lcom/android/server/LockSettingsService$RecoveryCredentialResponse;->getResponseCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 835
    :pswitch_0
    const-string v1, "Verification - Failed to recovery..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :pswitch_1
    iget-boolean v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->isSdpEnabled:Z

    if-eqz v1, :cond_3

    .line 809
    iget-object v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->credential:Ljava/lang/String;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->getEncodedCredential(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 811
    .local v6, "encodedCredential":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 812
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 813
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mKeystoreUtil:Lcom/android/server/LockSettingsService$KeystoreUtil;

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    # invokes: Lcom/android/server/LockSettingsService$KeystoreUtil;->doUnlock(Ljava/lang/String;I)Z
    invoke-static {v1, v6, v2}, Lcom/android/server/LockSettingsService$KeystoreUtil;->access$500(Lcom/android/server/LockSettingsService$KeystoreUtil;Ljava/lang/String;I)Z

    goto :goto_0

    .line 817
    .end local v6    # "encodedCredential":Ljava/lang/String;
    :cond_3
    iget v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    if-ne v9, v1, :cond_4

    .line 818
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 819
    goto :goto_0

    .line 821
    :cond_4
    const-string v1, "Verification - Unexpected condition..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 824
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->isSdpSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 825
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 826
    goto :goto_0

    .line 828
    :cond_5
    iget v1, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->userId:I

    iget v2, v0, Lcom/android/server/LockSettingsService$CredentialInfo;->lockType:I

    invoke-direct {p0, v1, v2}, Lcom/android/server/LockSettingsService;->getVerificationType(II)I

    move-result v1

    if-ne v9, v1, :cond_6

    .line 829
    sget-object v8, Lcom/android/internal/widget/VerifyCredentialResponse;->SKIP:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 830
    goto :goto_0

    .line 832
    :cond_6
    const-string v1, "Verification - Unexpected condition..."

    invoke-static {v1}, Lcom/sec/sdp/internal/SDPLog;->d(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 806
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 3
    .param p1, "response"    # Lcom/android/internal/widget/VerifyCredentialResponse;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 1619
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getEDMInstance()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1620
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0

    .line 1621
    .local v0, "isSharedDevice":Z
    if-eqz v0, :cond_0

    .line 1623
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkSDPassword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1624
    const-string v1, "LockSettingsService.KeyMgnt"

    const-string v2, "check password true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->OK:Lcom/android/internal/widget/VerifyCredentialResponse;

    .line 1631
    .end local v0    # "isSharedDevice":Z
    :cond_0
    :goto_0
    return-object p1

    .line 1627
    .restart local v0    # "isSharedDevice":Z
    :cond_1
    sget-object p1, Lcom/android/internal/widget/VerifyCredentialResponse;->ERROR:Lcom/android/internal/widget/VerifyCredentialResponse;

    goto :goto_0
.end method

.method private zeroOut(Ljava/lang/String;)V
    .locals 0
    .param p1, "buff"    # Ljava/lang/String;

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 514
    :cond_0
    const/4 p1, 0x0

    .line 515
    return-void
.end method

.method private zeroOut([B)V
    .locals 2
    .param p1, "buff"    # [B

    .prologue
    const/4 v1, 0x0

    .line 506
    if-nez p1, :cond_0

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    array-length v0, p1

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    .line 508
    const/4 p1, 0x0

    .line 509
    goto :goto_0
.end method


# virtual methods
.method public checkAppLockBackupPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2712
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2714
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2715
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockBackupkPinHash(I)[B

    move-result-object v2

    .line 2717
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2718
    const/4 v1, 0x1

    .line 2722
    :goto_0
    return v1

    .line 2721
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2722
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkAppLockFingerprintPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2726
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2728
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2729
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockFingerprintPasswordHash(I)[B

    move-result-object v2

    .line 2731
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2732
    const/4 v1, 0x1

    .line 2737
    :goto_0
    return v1

    .line 2735
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2737
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkAppLockPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2685
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2687
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2688
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPasswordHash(I)[B

    move-result-object v2

    .line 2690
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2691
    const/4 v1, 0x1

    .line 2695
    :goto_0
    return v1

    .line 2694
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2695
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkAppLockPattern(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2699
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2700
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 2701
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPatternHash(I)[B

    move-result-object v2

    .line 2703
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2704
    const/4 v1, 0x1

    .line 2708
    :goto_0
    return v1

    .line 2707
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2708
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkAppLockPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2671
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2673
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2674
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readAppLockPinHash(I)[B

    move-result-object v2

    .line 2676
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2677
    const/4 v1, 0x1

    .line 2681
    :goto_0
    return v1

    .line 2680
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2681
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2386
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2387
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2388
    const-string v1, "LockSettingsService"

    const-string v2, "checkBackupPassword( RESPONSE_OK )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    :cond_0
    return-object v0
.end method

.method public checkBackupPin(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2277
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyBackupPin(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 2279
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 2280
    const-string v1, "LockSettingsService"

    const-string v2, "checkBackupPin( RESPONSE_OK )"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_0
    return-object v0
.end method

.method public checkCarrierPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2883
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2885
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2886
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readCarrierPasswordHash(I)[B

    move-result-object v2

    .line 2888
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2889
    const/4 v1, 0x1

    .line 2893
    :goto_0
    return v1

    .line 2892
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2893
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkFMMPassword(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 2826
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2827
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 2828
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "password"

    aput-object v5, v3, v4

    aput-object p1, v3, v1

    const/4 v4, 0x2

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 2830
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2831
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readFMMPasswordHash(I)[B

    move-result-object v2

    .line 2833
    .local v2, "storedHash":[B
    if-nez v2, :cond_1

    .line 2845
    :cond_0
    :goto_0
    return v1

    .line 2837
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2840
    .local v1, "matched":Z
    if-eqz v1, :cond_0

    .line 2841
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_0

    .line 2842
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v3, p2, v4, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->unlock(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public checkParentControlPassword([BI)Z
    .locals 3
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 2769
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2771
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readParentControlPasswordHash(I)[B

    move-result-object v1

    .line 2773
    .local v1, "storedHash":[B
    if-nez v1, :cond_0

    .line 2774
    const/4 v0, 0x1

    .line 2778
    :goto_0
    return v0

    .line 2777
    :cond_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 2778
    .local v0, "matched":Z
    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1752
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1753
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1754
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->retainPassword(Ljava/lang/String;)V

    .line 1756
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_1

    .line 1757
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1759
    :cond_1
    const-string v1, "LockSettingsService.KeyMgnt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "response"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 1763
    invoke-virtual {p1}, Ljava/lang/String;->clear()V

    .line 1765
    :cond_2
    return-object v0
.end method

.method public checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1644
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1646
    .local v0, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v1

    if-nez v1, :cond_0

    .line 1647
    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsService;->verifyPasswordSharedDevice(Lcom/android/internal/widget/VerifyCredentialResponse;Ljava/lang/String;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    .line 1650
    :cond_0
    return-object v0
.end method

.method public checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2579
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2581
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2582
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockBackupkPinHash(I)[B

    move-result-object v2

    .line 2584
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2585
    const/4 v1, 0x1

    .line 2590
    :goto_0
    return v1

    .line 2588
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2590
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2611
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2613
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2614
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockFingerprintPasswordHash(I)[B

    move-result-object v2

    .line 2616
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2617
    const/4 v1, 0x1

    .line 2622
    :goto_0
    return v1

    .line 2620
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2622
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkPersonalModePassword(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2523
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2525
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2526
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockPasswordHash(I)[B

    move-result-object v2

    .line 2528
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2529
    const/4 v1, 0x1

    .line 2534
    :goto_0
    return v1

    .line 2532
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2534
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkPersonalModePattern(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2552
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2553
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v0

    .line 2554
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockPatternHash(I)[B

    move-result-object v2

    .line 2556
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2557
    const/4 v1, 0x1

    .line 2561
    :goto_0
    return v1

    .line 2560
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2561
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkPersonalModePin(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2494
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2496
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .line 2497
    .local v0, "hash":[B
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, p2}, Lcom/android/server/LockSettingsStorage;->readPersonalModeLockPinHash(I)[B

    move-result-object v2

    .line 2499
    .local v2, "storedHash":[B
    if-nez v2, :cond_0

    .line 2500
    const/4 v1, 0x1

    .line 2505
    :goto_0
    return v1

    .line 2503
    :cond_0
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    .line 2505
    .local v1, "matched":Z
    goto :goto_0
.end method

.method public checkSignatureBackupPin([BI)Z
    .locals 3
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2211
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2213
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p2}, Lcom/android/server/LockSettingsStorage;->readSignatureBackupPinHash(I)[B

    move-result-object v1

    .line 2215
    .local v1, "storedHash":[B
    if-nez v1, :cond_0

    .line 2216
    const/4 v0, 0x1

    .line 2221
    :goto_0
    return v0

    .line 2219
    :cond_0
    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 2221
    .local v0, "matched":Z
    goto :goto_0
.end method

.method public checkVoldPassword(I)Z
    .locals 13
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1961
    iget-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    if-nez v0, :cond_0

    .line 1962
    const/4 v0, 0x0

    .line 2067
    :goto_0
    return v0

    .line 1964
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LockSettingsService;->mFirstCallToVold:Z

    .line 1966
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 1976
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v12

    .line 1977
    .local v12, "service":Landroid/os/storage/IMountService;
    invoke-interface {v12}, Landroid/os/storage/IMountService;->getPassword()Ljava/lang/String;

    move-result-object v9

    .line 1978
    .local v9, "password":Ljava/lang/String;
    invoke-interface {v12}, Landroid/os/storage/IMountService;->clearPassword()V

    .line 1979
    if-nez v9, :cond_1

    .line 1980
    const/4 v0, 0x0

    goto :goto_0

    .line 1984
    :cond_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "device_policy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DevicePolicyManager;

    .line 1987
    .local v8, "dpm":Landroid/app/admin/DevicePolicyManager;
    const-string v0, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1988
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const-string/jumbo v3, "getMaximumFailedPasswordsForDisable"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1992
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 1994
    const/4 v11, 0x0

    .line 1995
    .local v11, "resultMDM":I
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1996
    const-string/jumbo v0, "getMaximumFailedPasswordsForDisable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 1997
    if-lez v11, :cond_2

    .line 1998
    const-string v0, "LockSettingsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check Password again due to PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1999
    const/4 v0, 0x0

    .line 2003
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2008
    .end local v11    # "resultMDM":I
    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2010
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 2012
    .local v10, "pw":Ljava/lang/String;
    invoke-virtual {p0, v9, p1}, Lcom/android/server/LockSettingsService;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_5

    .line 2015
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2016
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2017
    .local v7, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v10}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2020
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2001
    .end local v10    # "pw":Ljava/lang/String;
    .restart local v11    # "resultMDM":I
    :catch_0
    move-exception v0

    .line 2003
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2023
    .end local v11    # "resultMDM":I
    :catch_1
    move-exception v0

    .line 2027
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2029
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 2031
    .restart local v10    # "pw":Ljava/lang/String;
    invoke-virtual {p0, v9, p1}, Lcom/android/server/LockSettingsService;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_7

    .line 2034
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2035
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2036
    .restart local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v10}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2039
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2042
    .end local v10    # "pw":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2046
    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savedFingerprintPasswordExists(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2049
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/lang/String;-><init>([B)V

    .line 2050
    .restart local v10    # "pw":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-virtual {p0, v9, p1, v0}, Lcom/android/server/LockSettingsService;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_9

    .line 2051
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2052
    new-instance v7, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .line 2053
    .restart local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v7, v10}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .line 2054
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v8, v0, v2}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .line 2056
    .end local v7    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_8
    invoke-virtual {v9}, Ljava/lang/String;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 2057
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2060
    .end local v10    # "pw":Ljava/lang/String;
    :catch_3
    move-exception v0

    .line 2064
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->clear()V

    .line 2067
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getBoolean(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1200
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1201
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public getCarrierLockPlusMode(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2853
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2854
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->getCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;JI)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1208
    invoke-direct {p0, p1, p4}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1210
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p4}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1211
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    goto :goto_0
.end method

.method public getParentControlPasswordHashSize(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 2791
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage;->readParentControlPasswordHash(I)[B

    move-result-object v0

    .line 2793
    .local v0, "storedHash":[B
    if-eqz v0, :cond_0

    .line 2794
    array-length v1, v0

    .line 2796
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1296
    sget-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSignatureInfo(I)[B
    .locals 2
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2190
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2192
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage;->readSignatureHash(I)[B

    move-result-object v0

    .line 2194
    .local v0, "storedHash":[B
    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1216
    invoke-direct {p0, p1, p3}, Lcom/android/server/LockSettingsService;->checkReadPermission(Ljava/lang/String;I)V

    .line 1218
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/LockSettingsService;->getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringUnchecked(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1222
    const-string/jumbo v2, "lock_pattern_autolock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1225
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "1"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1227
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1231
    .end local v0    # "ident":J
    :goto_1
    return-object v2

    .line 1225
    .restart local v0    # "ident":J
    :cond_0
    :try_start_1
    const-string v2, "0"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1227
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1231
    .end local v0    # "ident":J
    :cond_1
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public haveAppLockBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2753
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockFingerprintPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2757
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2745
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public haveAppLockPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2741
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveAppLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveBackupPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2336
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasBackupPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2229
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public haveCarrierPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2878
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasCarrierPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveFMMPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2821
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasFMMPassword(I)Z

    move-result v0

    return v0
.end method

.method public haveParentControlPassword(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 2785
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasParentControlPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1267
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsService;->haveKnoxPassword(II)Z

    move-result v0

    .line 1270
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPassword(I)Z

    move-result v0

    goto :goto_0
.end method

.method public havePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1277
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsService;->haveKnoxPassword(II)Z

    move-result v0

    .line 1280
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->hasPattern(I)Z

    move-result v0

    goto :goto_0
.end method

.method public havePersonalModeBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModeFingerprintPassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2627
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockFingerprintPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModePassword(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockPassword(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModePattern(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2566
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockPattern(I)Z

    move-result v0

    return v0
.end method

.method public havePersonalModePin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2510
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->havePersonalModeLockPin(I)Z

    move-result v0

    return v0
.end method

.method public haveSignature(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2179
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveSignature(I)Z

    move-result v0

    return v0
.end method

.method public haveSignatureBackupPin(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2206
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStorage;->haveSignatureBackupPin(I)Z

    move-result v0

    return v0
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 2089
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2090
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2091
    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 1
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    .line 2101
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2102
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStrongAuth;->requireStrongAuth(II)V

    .line 2103
    return-void
.end method

.method public retainPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1287
    return-void
.end method

.method public sanitizePassword()V
    .locals 1

    .prologue
    .line 1290
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    const-string/jumbo v0, "default_password"

    sput-object v0, Lcom/android/server/LockSettingsService;->mSavePassword:Ljava/lang/String;

    .line 1293
    :cond_0
    return-void
.end method

.method saveSharedDevicePassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 1452
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getEDMInstance()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1453
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1454
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mEdmInstance:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v0

    .line 1455
    .local v0, "isSharedDevice":Z
    if-eqz v0, :cond_0

    .line 1457
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->saveSDPassword(Ljava/lang/String;)Z

    .line 1461
    .end local v0    # "isSharedDevice":Z
    :cond_0
    return-void
.end method

.method public setAppLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2656
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2658
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockBackupPinHash([BI)V

    .line 2660
    return-void
.end method

.method public setAppLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2663
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2665
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockFingerprintPasswordHash([BI)V

    .line 2668
    return-void
.end method

.method public setAppLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2642
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2644
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPasswordHash([BI)V

    .line 2646
    return-void
.end method

.method public setAppLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2649
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2651
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPatternHash([BI)V

    .line 2653
    return-void
.end method

.method public setAppLockPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2635
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2637
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeAppLockPinHash([BI)V

    .line 2639
    return-void
.end method

.method public setBoolean(Ljava/lang/String;ZI)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1175
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1176
    if-eqz p2, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-direct {p0, p1, p3, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1177
    return-void

    .line 1176
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setCarrierLockPlusEnabled(I)V
    .locals 0
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2865
    return-void
.end method

.method public setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2342
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2343
    const/4 v0, 0x0

    .line 2344
    .local v0, "currentHandle":[B
    if-eqz p4, :cond_1

    .line 2345
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 2350
    :goto_0
    if-nez p1, :cond_2

    .line 2351
    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "setLockBackupPassword( password is null )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3, p4}, Lcom/android/server/LockSettingsStorage;->writeBackupPasswordHash([BIZ)V

    .line 2381
    :cond_0
    :goto_1
    return-void

    .line 2347
    :cond_1
    const/4 v2, 0x4

    invoke-direct {p0, p3, v2}, Lcom/android/server/LockSettingsService;->getCurrentHandleBackupType(II)[B

    move-result-object v0

    goto :goto_0

    .line 2356
    :cond_2
    if-nez v0, :cond_4

    .line 2357
    if-eqz p2, :cond_3

    .line 2358
    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    :cond_3
    const/4 p2, 0x0

    .line 2362
    :cond_4
    const/4 v1, 0x0

    .line 2363
    .local v1, "enrolledHandle":[B
    if-eqz p4, :cond_5

    .line 2364
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 2369
    :goto_2
    if-eqz v1, :cond_6

    .line 2370
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3, p4}, Lcom/android/server/LockSettingsStorage;->writeBackupPasswordHash([BIZ)V

    .line 2376
    :goto_3
    if-eqz v1, :cond_0

    .line 2377
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_0

    .line 2378
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, p3, p1, v3}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    goto :goto_1

    .line 2366
    :cond_5
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_2

    .line 2372
    :cond_6
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll backup Password"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    .line 2235
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2236
    invoke-direct {p0, p3, v5}, Lcom/android/server/LockSettingsService;->getCurrentHandleBackupType(II)[B

    move-result-object v0

    .line 2239
    .local v0, "currentHandle":[B
    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/server/LockSettingsService;->haveBackupPassword(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2240
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_0

    .line 2241
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-virtual {v2, p3, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->removeKeyPair(II)V

    .line 2245
    :cond_0
    if-nez p1, :cond_2

    .line 2246
    const-string v2, "LockSettingsService"

    const-string/jumbo v3, "setLockBackupPin( password is null )"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPinHash([BI)V

    .line 2272
    :cond_1
    :goto_0
    return-void

    .line 2251
    :cond_2
    if-nez v0, :cond_4

    .line 2252
    if-eqz p2, :cond_3

    .line 2253
    const-string v2, "LockSettingsService"

    const-string v3, "Saved credential provided, but none stored"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :cond_3
    const/4 p2, 0x0

    .line 2258
    :cond_4
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredentialBackupType([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 2259
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_5

    .line 2260
    const-string v2, "LockSettingsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLockBackupPin( writeBackupPinHash = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " )"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v2, v1, p3}, Lcom/android/server/LockSettingsStorage;->writeBackupPinHash([BI)V

    .line 2267
    :goto_1
    if-eqz v1, :cond_1

    .line 2268
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v2, :cond_1

    .line 2269
    iget-object v2, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p3, v3, v5}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    goto :goto_0

    .line 2263
    :cond_5
    const-string v2, "LockSettingsService"

    const-string v3, "Failed to enroll backup pin"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setLockCarrierPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2869
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2871
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeCarrierPasswordHash([BI)V

    .line 2872
    return-void
.end method

.method public setLockFMMPassword(Ljava/lang/String;I)V
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2803
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2804
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 2805
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "userId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 2807
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writeFMMPasswordHash([BI)V

    .line 2810
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v0, :cond_0

    .line 2811
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2812
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, p2, v1, v2}, Lcom/android/server/LockSettingsService$SdpHandler;->enroll(ILjava/lang/String;I)V

    .line 2815
    :cond_0
    return-void
.end method

.method public setLockParentControlPassword([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 2762
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2764
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->writeParentControlPasswordHash([BI)V

    .line 2765
    return-void
.end method

.method public setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 1467
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1468
    invoke-static {}, Lcom/sec/sdp/internal/SDPLog;->i()V

    .line 1469
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "password"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string/jumbo v4, "savedCredential"

    aput-object v4, v3, v6

    aput-object p2, v3, v7

    const/4 v4, 0x4

    const-string/jumbo v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/sec/sdp/internal/SDPLog;->p([Ljava/lang/Object;)V

    .line 1472
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1474
    invoke-direct {p0, p1, p3, v6}, Lcom/android/server/LockSettingsService;->enrollKnoxCredential(Ljava/lang/String;II)V

    .line 1531
    :goto_0
    return-void

    .line 1478
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 1480
    .local v0, "currentHandle":[B
    if-nez p1, :cond_1

    .line 1481
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1482
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, v8, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 1483
    invoke-direct {p0, v8, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_0

    .line 1487
    :cond_1
    if-nez v0, :cond_3

    .line 1488
    if-eqz p2, :cond_2

    .line 1489
    const-string v3, "LockSettingsService"

    const-string v4, "Saved credential provided, but none stored"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_2
    const/4 p2, 0x0

    .line 1494
    :cond_3
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 1495
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_6

    .line 1496
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePasswordHash([BI)V

    .line 1502
    :goto_1
    if-eqz v1, :cond_4

    .line 1503
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_4

    .line 1504
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V

    .line 1508
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-virtual {v3, p3, v7}, Lcom/android/server/LockSettingsService$SdpHandler;->removeKeyPair(II)V

    .line 1516
    :cond_4
    if-nez p3, :cond_5

    .line 1517
    if-eqz p1, :cond_7

    .line 1518
    const-string v3, "LSManager.setLockPassword"

    const-string v4, "Set new password."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    :goto_2
    new-instance v2, Landroid/lsm/LockedStatePasswordWrapper;

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 1523
    .local v2, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    invoke-virtual {v2, p1}, Landroid/lsm/LockedStatePasswordWrapper;->setPassword(Ljava/lang/String;)I

    .line 1529
    .end local v2    # "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->saveSharedDevicePassword(Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    :cond_6
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to enroll password"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1520
    :cond_7
    const-string v3, "LSManager.setLockPassword"

    const-string v4, "Delete password."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "savedCredential"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1391
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1393
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->isKnoxUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkCMKExists(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1395
    const/4 v3, 0x1

    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/LockSettingsService;->enrollKnoxCredential(Ljava/lang/String;II)V

    .line 1448
    :goto_0
    return-void

    .line 1399
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->getCurrentHandle(I)[B

    move-result-object v0

    .line 1401
    .local v0, "currentHandle":[B
    if-nez p1, :cond_1

    .line 1402
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/service/gatekeeper/IGateKeeperService;->clearSecureUserId(I)V

    .line 1403
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, v6, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 1404
    invoke-direct {p0, v6, p3}, Lcom/android/server/LockSettingsService;->setKeystorePassword(Ljava/lang/String;I)V

    goto :goto_0

    .line 1408
    :cond_1
    if-nez v0, :cond_3

    .line 1409
    if-eqz p2, :cond_2

    .line 1410
    const-string v3, "LockSettingsService"

    const-string v4, "Saved credential provided, but none stored"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    :cond_2
    const/4 p2, 0x0

    .line 1415
    :cond_3
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/LockSettingsService;->enrollCredential([BLjava/lang/String;Ljava/lang/String;I)[B

    move-result-object v1

    .line 1416
    .local v1, "enrolledHandle":[B
    if-eqz v1, :cond_6

    .line 1417
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v3, v1, p3}, Lcom/android/server/LockSettingsStorage;->writePatternHash([BI)V

    .line 1423
    :goto_1
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.MODEL is ? : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    if-nez p3, :cond_4

    .line 1427
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LSM userId is ? : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1428
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v4, "N910"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1429
    const-string v3, "LockSettingsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Build.MODEL contains N910 : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    new-instance v2, Landroid/lsm/LockedStatePasswordWrapper;

    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/lsm/LockedStatePasswordWrapper;-><init>(Landroid/content/Context;)V

    .line 1431
    .local v2, "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    const-string v3, "LockSettingsService"

    const-string v4, "LSManager Call lsw.setPassword(null)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    invoke-virtual {v2, v6}, Landroid/lsm/LockedStatePasswordWrapper;->setPassword(Ljava/lang/String;)I

    .line 1439
    .end local v2    # "lsw":Landroid/lsm/LockedStatePasswordWrapper;
    :cond_4
    if-eqz v1, :cond_5

    .line 1440
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    if-eqz v3, :cond_5

    .line 1441
    iget-object v3, p0, Lcom/android/server/LockSettingsService;->mSdpHandler:Lcom/android/server/LockSettingsService$SdpHandler;

    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p3}, Lcom/android/server/LockSettingsService$SdpHandler;->setPassword(Ljava/lang/String;I)V

    .line 1446
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsService;->saveSharedDevicePassword(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1419
    :cond_6
    const-string v3, "LockSettingsService"

    const-string v4, "Failed to enroll pattern"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public setLong(Ljava/lang/String;JI)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1181
    invoke-direct {p0, p4}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1182
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p4, v0}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1183
    return-void
.end method

.method public setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2601
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2603
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockFingerprintPasswordHash([BI)V

    .line 2606
    return-void
.end method

.method public setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2571
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2573
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLocBackupkPinHash([BI)V

    .line 2575
    return-void
.end method

.method public setPersonalModeLockPassword(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2515
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2517
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockPasswordHash([BI)V

    .line 2519
    return-void
.end method

.method public setPersonalModeLockPattern(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2544
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2546
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->patternToHash(Ljava/util/List;)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockPatternHash([BI)V

    .line 2548
    return-void
.end method

.method public setPersonalModeLockPin(Ljava/lang/String;I)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2486
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2488
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/LockSettingsStorage;->writePersonalModeLockPinHash([BI)V

    .line 2490
    return-void
.end method

.method public setSignatureBackupPin([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2199
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2201
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->writeSignatureBackupPinHash([BI)V

    .line 2202
    return-void
.end method

.method public setSignatureInfo([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2184
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2185
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LockSettingsStorage;->writeSignatureHash([BI)V

    .line 2186
    return-void
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1187
    invoke-direct {p0, p3}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 1188
    invoke-direct {p0, p1, p3, p2}, Lcom/android/server/LockSettingsService;->setStringUnchecked(Ljava/lang/String;ILjava/lang/String;)V

    .line 1189
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->migrateOldData()V

    .line 946
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LockSettingsService;->getGateKeeperService()Landroid/service/gatekeeper/IGateKeeperService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :goto_0
    iget-object v1, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/LockSettingsStorage;->prefetchUser(I)V

    .line 951
    return-void

    .line 947
    :catch_0
    move-exception v0

    .line 948
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockSettingsService"

    const-string v2, "Failure retrieving IGateKeeperService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .locals 1
    .param p1, "tracker"    # Landroid/app/trust/IStrongAuthTracker;

    .prologue
    .line 2095
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsService;->checkPasswordReadPermission(I)V

    .line 2096
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStrongAuth:Lcom/android/server/LockSettingsStrongAuth;

    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsStrongAuth;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    .line 2097
    return-void
.end method

.method public updateCarrierLockPlusMode(I)Z
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2858
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsService;->checkWritePermission(I)V

    .line 2859
    iget-object v0, p0, Lcom/android/server/LockSettingsService;->mStorage:Lcom/android/server/LockSettingsStorage;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage;->updateCarrierLockPlusMode()Z

    move-result v0

    return v0
.end method

.method public verifyBackupPassword(Ljava/lang/String;JIZ)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .param p5, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2396
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LockSettingsService;->doVerifyBackupPassword(Ljava/lang/String;ZJIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyBackupPin(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2288
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyBackupPin(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1771
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPassword(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method

.method public verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;
    .locals 8
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1656
    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/LockSettingsService;->doVerifyPattern(Ljava/lang/String;ZJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v0

    return-object v0
.end method
