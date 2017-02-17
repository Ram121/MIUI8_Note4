.class final Lcom/android/server/wifi/WifiNotificationController;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNotificationController$7;,
        Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
    }
.end annotation


# static fields
.field private static final AGGREGATION_NOTIFY_ID:Ljava/lang/String; = "Wifi.Aggregation.signin"

.field private static final CAPTIVE_PORTAL_DISABLED_NOTIFICATION_ID:I = 0x1040841

.field private static final CAPTIVE_PORTAL_SIGN_IN_NOTIFICATION_ID:I = 0x10409dc

.field private static final CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

.field private static final EAP_AKA_NOTIFY_ID:Ljava/lang/String; = "Wifi.EapAka.signin"

.field private static ICON_NETWORKS_AVAILABLE:I = 0x0

.field private static final ICON_NETWORKS_CONNECTED:I = 0x108087b

.field private static final ICON_NETWORKS_NOT_CONNECTED:I = 0x108087c

.field private static final LOW_SIGNAL_URI:Landroid/net/Uri;

.field private static final MALICIOUS_HOTSPOT_DETECTED_NOTIFICATION_ID:I = 0x104083e

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x3

.field private static final POOR_CONNECTION_NOTIFICATION_ID:I = 0x10409d9

.field private static final SHARE_PROFILE_NETWORK_EXPIRATION_NOTIFICATION_ID:I = 0x1040837

.field private static final SHARE_PROFILE_RECEPTION_NOTIFICATION_ID:I = 0x1040836

.field private static final SHARE_PROFILE_TRANSMISSION_NOTIFICATION_ID:I = 0x1040838

.field private static final SNS_EXCEPTION_NOTIFICATION_ID:I = 0x10409d8

.field public static final SUPPORT_NOTIFICATION_MENU:Z

.field private static final TAG:Ljava/lang/String; = "WifiNotificationController"

.field private static final VZW_EAP_AKA_SSID:Ljava/lang/String; = "VerizonWiFiAccess"

.field private static final VendorNotificationStyle:Ljava/lang/String;

.field private static final WIFI_AGGREGATION_SSID:Ljava/lang/String; = "VerizonWiFi"

.field private static final WIFI_SCREENCONNECTEDINFO:Z

.field private static final WWSM_PATCHER_NOTIFICATION_ID:I = 0x10409e2

.field private static final mConfigOpBranding:Ljava/lang/String;

.field private static final mWifiConnectionTypeCsc:Z

.field private static mWwsmPatcherNotification:Landroid/app/Notification;

.field private static final sSupportMovialWFC:Z

.field private static final sSupportSecWFC:Z


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private mAttNotificationBuilder:Landroid/app/Notification$Builder;

.field private mCMCCSavedNetworks:I

.field private final mContext:Landroid/content/Context;

.field private mIsShowingVzwNotification:Z

.field private mLowSignal:Z

.field private mLowSignalNWs:I

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumOpenNetworks:I

.field private mNumScansSinceNetworkStateChange:I

.field private mNumVzwNetworks:I

.field private mOngoingNotificationVisible:Z

.field private mPrevVzwNotificationId:I

.field private final mUsingSecSettings2:Z

.field private mVzwNotificationEnabled:Z

.field private mVzwNotificationRepeatTime:J

.field private mVzwNotificationShown:Z

.field private mVzwNotificationVisible:Z

.field private mVzwWifiNotificationBuilder:Landroid/app/Notification$Builder;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiPoorConnectionNotificationBuilder:Landroid/app/Notification$Builder;

.field private mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

.field private volatile mWifiState:I

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

.field private mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const v0, 0x1080815

    sput v0, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    .line 108
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z

    .line 111
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportNotificationMenu"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiNotificationController;->SUPPORT_NOTIFICATION_MENU:Z

    .line 113
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiNotificationController;->sSupportSecWFC:Z

    .line 117
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiNotificationController;->sSupportMovialWFC:Z

    .line 120
    const-string v0, "content://com.samsung.tmowfc.wfcprovider/low_signal"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiNotificationController;->LOW_SIGNAL_URI:Landroid/net/Uri;

    .line 166
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiConnectionTypeCsc:Z

    .line 168
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiNotificationController;->mConfigOpBranding:Ljava/lang/String;

    .line 169
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ConfigEncodingCharSet"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/WifiNotificationController;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    .line 1141
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wifi/WifiNotificationController;->mWwsmPatcherNotification:Landroid/app/Notification;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    .line 119
    iput v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I

    .line 151
    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1023
    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiPoorConnectionNotificationBuilder:Landroid/app/Notification$Builder;

    .line 1024
    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

    .line 1028
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mUsingSecSettings2:Z

    .line 1463
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$6;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$6;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWfcObserver:Landroid/database/ContentObserver;

    .line 173
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    .line 174
    iput-object p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 175
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 178
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v1, "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v1, "android.settings.WIFI_SETTINGS_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v1, "ACTION_AGGREGATION_DELAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 197
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    const-string v1, "ACTION_CONNECT_TO_VZW_EAP_AKA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    :cond_1
    const-string v1, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    sget-object v1, Lcom/android/server/wifi/WifiNotificationController;->mConfigOpBranding:Ljava/lang/String;

    const-string v2, "SKT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/server/wifi/WifiNotificationController;->mConfigOpBranding:Ljava/lang/String;

    const-string v2, "LGU"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    :cond_2
    const v1, 0x108080b

    sput v1, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    .line 209
    :cond_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$1;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    const-string v1, "VZW"

    sget-object v2, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 359
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$2;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$2;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 376
    :cond_4
    sget-boolean v1, Lcom/android/server/wifi/WifiNotificationController;->mWifiConnectionTypeCsc:Z

    if-eqz v1, :cond_5

    .line 377
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$3;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$3;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    :cond_5
    sget-boolean v1, Lcom/android/server/wifi/WifiNotificationController;->sSupportSecWFC:Z

    if-eqz v1, :cond_7

    .line 393
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/wifi/WifiNotificationController;->LOW_SIGNAL_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mWfcObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 411
    :cond_6
    :goto_0
    const-string v1, "VZW"

    sget-object v2, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_repeat_delay"

    const/16 v3, 0x1c20

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 418
    :goto_1
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    .line 419
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->register()V

    .line 420
    return-void

    .line 395
    :cond_7
    sget-boolean v1, Lcom/android/server/wifi/WifiNotificationController;->sSupportMovialWFC:Z

    if-eqz v1, :cond_6

    .line 396
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$4;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$4;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.movial.IMS_LOWSIGNAL"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    .line 415
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_networks_available_repeat_delay"

    const/16 v3, 0x384

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    mul-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    goto :goto_1
.end method

.method static synthetic access$002(Lcom/android/server/wifi/WifiNotificationController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiNotificationController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotification(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->updateResources()V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationVisible:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mIsShowingVzwNotification:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->connectToVzwEapAkaNetwork()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiInfo;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->showWifiPoorConnectionNotification(Landroid/net/wifi/WifiInfo;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetVzwNotification()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/wifi/WifiInfo;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/wifi/WifiInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->showSnsExceptionNotification(Landroid/net/wifi/WifiInfo;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNotificationController;->showCaptivePortalSignInNotification(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNotificationController;->showCaptivePortalDisabledStatus(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNotificationController;->showShareProfileReceptionNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNotificationController;->showShareProfileNetworkExpirationNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNotificationController;->showShareProfileTransmissionNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/wifi/WifiNotificationController;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->showMaliciousHotspotDetectionNotification(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/wifi/WifiNotificationController;IZ)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->showWwsmPatcherNotification(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetEapAkaNotification()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/server/wifi/WifiNotificationController;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # J

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/android/server/wifi/WifiNotificationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignalNWs:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/wifi/WifiNotificationController;ZIZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # I

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    return-void
.end method

.method static synthetic access$3300()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/wifi/WifiNotificationController;->LOW_SIGNAL_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->checkIfLowSignalFromProvider()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/wifi/WifiNotificationController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiNotificationController;ZIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiNotificationController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiNotificationController;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    return p1
.end method

.method private declared-synchronized checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 16
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 428
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    if-nez v12, :cond_1

    sget-boolean v12, Lcom/android/server/wifi/WifiNotificationController;->mWifiConnectionTypeCsc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v12, :cond_1

    .line 567
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 429
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_0

    .line 431
    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 432
    .local v11, "state":Landroid/net/NetworkInfo$State;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "wifi_cmcc_manual"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 434
    .local v7, "mCMCCConnectionType":I
    if-eqz p1, :cond_2

    .line 435
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    .line 437
    :cond_2
    const-string v12, "VZW"

    sget-object v13, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 438
    sget-object v12, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v11, v12, :cond_3

    .line 439
    const/4 v12, 0x1

    const v13, 0x108087b

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V

    .line 443
    :cond_3
    sget-object v12, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v11, v12, :cond_4

    sget-object v12, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v11, v12, :cond_11

    .line 445
    :cond_4
    const/4 v6, 0x0

    .line 446
    .local v6, "isVzwAkaNetworkFound":Z
    if-eqz p2, :cond_11

    .line 447
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    .line 448
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mCMCCSavedNetworks:I

    .line 450
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 451
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumVzwNetworks:I

    .line 453
    :cond_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v4, v12, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_c

    .line 454
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;

    .line 458
    .local v9, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v12, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v12, :cond_7

    iget-object v12, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "[ESS]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "[WPS][ESS]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "[ESS][SEC80]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v13, "[ESS][SEC80][SECD00]"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 463
    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    .line 465
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 466
    const-string v12, "VerizonWiFi"

    iget-object v13, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 467
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumVzwNetworks:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumVzwNetworks:I

    .line 472
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 473
    const-string v12, "VerizonWiFiAccess"

    iget-object v13, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 474
    const/4 v6, 0x1

    .line 477
    :cond_8
    sget-boolean v12, Lcom/android/server/wifi/WifiNotificationController;->mWifiConnectionTypeCsc:Z

    if-eqz v12, :cond_b

    const-string v12, "CMCC"

    sget-object v13, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 478
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v13, "wifi"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 479
    .local v8, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 485
    .local v3, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v7, :cond_b

    .line 487
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 488
    .local v2, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_9

    .line 489
    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v12, :cond_a

    const-string v10, ""

    .line 490
    .local v10, "ssid":Ljava/lang/String;
    :goto_3
    iget-object v12, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 491
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mCMCCSavedNetworks:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mCMCCSavedNetworks:I

    .line 492
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 428
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v4    # "i":I
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isVzwAkaNetworkFound":Z
    .end local v7    # "mCMCCConnectionType":I
    .end local v8    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    .end local v10    # "ssid":Ljava/lang/String;
    .end local v11    # "state":Landroid/net/NetworkInfo$State;
    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    .line 489
    .restart local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v4    # "i":I
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "isVzwAkaNetworkFound":Z
    .restart local v7    # "mCMCCConnectionType":I
    .restart local v8    # "mWifiManager":Landroid/net/wifi/WifiManager;
    .restart local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    .restart local v11    # "state":Landroid/net/NetworkInfo$State;
    :cond_a
    :try_start_2
    iget-object v12, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/server/wifi/WifiNotificationController;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_3

    .line 453
    .end local v2    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v8    # "mWifiManager":Landroid/net/wifi/WifiManager;
    :cond_b
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_1

    .line 500
    .end local v9    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_c
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    if-gtz v12, :cond_d

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mCMCCSavedNetworks:I

    if-lez v12, :cond_f

    .line 502
    :cond_d
    const-string v12, "VZW"

    sget-object v13, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 503
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    const/4 v13, 0x3

    if-lt v12, v13, :cond_e

    .line 511
    const-string v12, "CMCC"

    sget-object v13, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 512
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    if-lez v12, :cond_12

    const/4 v12, 0x2

    if-ne v7, v12, :cond_12

    .line 513
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.android.settings.WLAN_SSID_AVAILABLE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 514
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 524
    :cond_e
    :goto_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 525
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumVzwNetworks:I

    if-lez v12, :cond_14

    .line 526
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiNotificationController;->showVzwWifiNotification(Z)V

    .line 534
    :cond_f
    :goto_5
    const-string v12, "VZW"

    sget-object v13, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 535
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_17

    .line 536
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    const/4 v13, 0x3

    if-lt v12, v13, :cond_0

    .line 539
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_16

    .line 540
    if-eqz v6, :cond_15

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiNotificationController;->showVzwEapAkaNetworkFoundNotification(Z)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 542
    const-string v12, "WifiNotificationController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVzwAkaNetworkFound: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_10
    :goto_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    if-gtz v12, :cond_0

    .line 558
    .end local v4    # "i":I
    .end local v6    # "isVzwAkaNetworkFound":Z
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 559
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    goto/16 :goto_0

    .line 515
    .restart local v4    # "i":I
    .restart local v6    # "isVzwAkaNetworkFound":Z
    :cond_12
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mCMCCSavedNetworks:I

    if-lez v12, :cond_e

    const/4 v12, 0x1

    if-ne v7, v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    if-eqz v12, :cond_e

    .line 516
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    goto/16 :goto_4

    .line 518
    :cond_13
    const-string v12, "VZW"

    sget-object v13, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    if-eqz v12, :cond_e

    .line 519
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    goto/16 :goto_4

    .line 528
    :cond_14
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiNotificationController;->showVzwWifiNotification(Z)V

    goto/16 :goto_5

    .line 544
    :cond_15
    const/4 v12, 0x1

    const v13, 0x108087c

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V

    goto :goto_6

    .line 547
    :cond_16
    const/4 v12, 0x1

    const v13, 0x108087c

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V

    goto :goto_6

    .line 550
    :cond_17
    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V

    goto :goto_6

    .line 560
    .end local v4    # "i":I
    .end local v6    # "isVzwAkaNetworkFound":Z
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    if-eqz v12, :cond_0

    .line 561
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/wifi/WifiNotificationController;->mCMCCSavedNetworks:I

    if-nez v12, :cond_19

    const/4 v12, 0x1

    if-ne v7, v12, :cond_19

    .line 562
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    .line 564
    :cond_19
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    .line 565
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/server/wifi/WifiNotificationController;->showVzwWifiNotification(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private checkIfLowSignalFromProvider()Z
    .locals 9

    .prologue
    .line 1485
    const/4 v6, 0x0

    .line 1486
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1487
    .local v8, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1488
    .local v7, "isLowSignal":Z
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1490
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/android/server/wifi/WifiNotificationController;->LOW_SIGNAL_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1492
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1493
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1494
    const-string v1, "1"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1495
    const/4 v7, 0x1

    .line 1498
    :cond_0
    if-eqz v6, :cond_1

    .line 1499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1501
    :cond_1
    return v7

    .line 1498
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 1499
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private connectToVzwEapAkaNetwork()V
    .locals 10

    .prologue
    const/4 v8, 0x5

    const/4 v6, -0x1

    const/4 v7, 0x1

    .line 987
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 988
    .local v3, "simState":I
    if-ne v3, v8, :cond_1

    .line 989
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 990
    .local v1, "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    const-string v4, "VerizonWiFiAccess"

    invoke-direct {p0, v4}, Lcom/android/server/wifi/WifiNotificationController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 991
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 992
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    .line 993
    iput-boolean v7, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 994
    iget-object v4, v1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v4, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 996
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 997
    .local v2, "msg":Landroid/os/Message;
    const v4, 0x25001

    iput v4, v2, Landroid/os/Message;->what:I

    .line 998
    iput v6, v2, Landroid/os/Message;->arg1:I

    .line 999
    iput v6, v2, Landroid/os/Message;->arg2:I

    .line 1000
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1002
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1016
    .end local v1    # "mWifiConfig":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    if-ne v3, v7, :cond_0

    .line 1004
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v5, "Verizon service required"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10409d4

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "VerizonWiFiAccess"

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10403ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/android/server/wifi/WifiNotificationController$5;

    invoke-direct {v6, p0}, Lcom/android/server/wifi/WifiNotificationController$5;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1013
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1014
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1506
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1507
    .local v2, "mWifiManager":Landroid/net/wifi/WifiManager;
    const-string v4, "gbk"

    sget-object v5, Lcom/android/server/wifi/WifiNotificationController;->CSC_WIFI_CONFIGENCODINGCHARSET:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1508
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 1509
    .local v3, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_1

    .line 1510
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1511
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1512
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 1513
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1518
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v3    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :goto_1
    return-object v4

    .line 1511
    .restart local v0    # "i":I
    .restart local v1    # "length":I
    .restart local v3    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1518
    .end local v0    # "i":I
    .end local v1    # "length":I
    .end local v3    # "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private isSecuredAp(I)Z
    .locals 8
    .param p1, "networkId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 844
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 845
    .local v3, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 846
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_3

    .line 847
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 848
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v6, p1, :cond_0

    .line 849
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 850
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v5

    if-eqz v6, :cond_2

    .line 858
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    return v4

    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    move v4, v5

    .line 852
    goto :goto_0

    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    move v4, v5

    .line 858
    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 675
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 676
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 678
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 680
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private resetEapAkaNotification()V
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNotificationController;->showVzwEapAkaNetworkFoundNotification(Z)Z

    .line 596
    return-void
.end method

.method private declared-synchronized resetNotification()V
    .locals 4

    .prologue
    .line 574
    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 575
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    .line 576
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V

    .line 577
    const-string v0, "VZW"

    sget-object v1, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V

    .line 579
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mPrevVzwNotificationId:I

    .line 581
    :cond_0
    const-string v0, "ATT"

    sget-object v1, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotification(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :cond_1
    monitor-exit p0

    return-void

    .line 574
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resetVzwNotification()V
    .locals 2

    .prologue
    .line 588
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationRepeatTime:J

    .line 589
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiNotificationController;->showVzwWifiNotification(Z)V

    .line 590
    return-void
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 11
    .param p1, "visible"    # Z
    .param p2, "numNetworks"    # I
    .param p3, "force"    # Z
    .param p4, "delay"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 616
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/wifi/WifiNotificationController;->mWifiConnectionTypeCsc:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 620
    :cond_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 624
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_6

    .line 626
    sget-boolean v3, Lcom/android/server/wifi/WifiNotificationController;->sSupportSecWFC:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/wifi/WifiNotificationController;->sSupportMovialWFC:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z

    if-nez v3, :cond_0

    .line 631
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    .line 635
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v3, :cond_4

    .line 637
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    sget v4, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v9, v9, v8, v5}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060059

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 650
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1140005

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 652
    .local v2, "title":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1140006

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 656
    .local v0, "details":Ljava/lang/CharSequence;
    sget-boolean v3, Lcom/android/server/wifi/WifiNotificationController;->mWifiConnectionTypeCsc:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10409cd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 660
    :cond_5
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 661
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 662
    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 665
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 667
    sget v3, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v8, v3, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 672
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v2    # "title":Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    goto/16 :goto_0

    .line 669
    :cond_6
    sget v3, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v8, v3, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private showCaptivePortalDisabledStatus(Ljava/lang/String;IZ)V
    .locals 16
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "titleType"    # I
    .param p3, "visible"    # Z

    .prologue
    .line 1267
    const-string v1, "WifiNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showCaptivePortalDisabledStatus with ssid/visible/title:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/NotificationManager;

    .line 1270
    .local v13, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p3, :cond_0

    .line 1271
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 1272
    .local v14, "r":Landroid/content/res/Resources;
    const v11, 0x1080815

    .line 1274
    .local v11, "icon":I
    const v1, 0x1040841

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {v14, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1275
    .local v15, "title":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 1276
    .local v9, "details":Ljava/lang/CharSequence;
    packed-switch p2, :pswitch_data_0

    .line 1286
    :goto_0
    new-instance v1, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1294
    .local v7, "b":Landroid/app/Notification$Builder;
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v7}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v12

    .line 1297
    .local v12, "notification":Landroid/app/Notification;
    const/4 v1, 0x2

    iput v1, v12, Landroid/app/Notification;->priority:I

    .line 1299
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1300
    .local v3, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1301
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v4, 0x8000000

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v12, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1304
    new-instance v8, Landroid/content/Intent;

    const-string v1, "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v8, "deleteIntent":Landroid/content/Intent;
    const-string v1, "nid"

    invoke-virtual {v8, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1306
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v8, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v12, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1308
    const-string v1, "CAPTIVE_PORTAL_DISABLED_NOTIFICATION_ID"

    const v2, 0x1040841

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v1, v2, v12, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1318
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v7    # "b":Landroid/app/Notification$Builder;
    .end local v8    # "deleteIntent":Landroid/content/Intent;
    .end local v9    # "details":Ljava/lang/CharSequence;
    .end local v11    # "icon":I
    .end local v12    # "notification":Landroid/app/Notification;
    .end local v14    # "r":Landroid/content/res/Resources;
    .end local v15    # "title":Ljava/lang/CharSequence;
    :goto_1
    return-void

    .line 1278
    .restart local v9    # "details":Ljava/lang/CharSequence;
    .restart local v11    # "icon":I
    .restart local v14    # "r":Landroid/content/res/Resources;
    .restart local v15    # "title":Ljava/lang/CharSequence;
    :pswitch_0
    const v1, 0x1040842

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1279
    goto :goto_0

    .line 1281
    :pswitch_1
    const v1, 0x1040843

    invoke-virtual {v14, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1282
    goto/16 :goto_0

    .line 1312
    .end local v9    # "details":Ljava/lang/CharSequence;
    .end local v11    # "icon":I
    .end local v14    # "r":Landroid/content/res/Resources;
    .end local v15    # "title":Ljava/lang/CharSequence;
    :cond_0
    :try_start_0
    const-string v1, "CAPTIVE_PORTAL_DISABLED_NOTIFICATION_ID"

    const v2, 0x1040841

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v1, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1314
    :catch_0
    move-exception v10

    .line 1315
    .local v10, "e":Ljava/lang/RuntimeException;
    const-string v1, "WifiNotificationController"

    const-string v2, "Runtime Exception on showCaptivePortalDisabledStatus()"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showCaptivePortalSignInNotification(Ljava/lang/String;ZI)V
    .locals 13
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "visible"    # Z
    .param p3, "netId"    # I

    .prologue
    .line 1197
    const-string v0, "WifiNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showCaptivePortalSignInNotification with ssid/visible:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 1200
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p2, :cond_2

    .line 1201
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1202
    const-string v0, "VerizonWiFi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\"VerizonWiFi\""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1203
    :cond_0
    const-string v0, "WifiNotificationController"

    const-string v1, "Do not show CaptivePortal notification for VerizonWiFi"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :goto_0
    return-void

    .line 1207
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1208
    .local v11, "r":Landroid/content/res/Resources;
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    .line 1209
    .local v9, "notification":Landroid/app/Notification;
    const v0, 0x10403a8

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1210
    .local v12, "title":Ljava/lang/CharSequence;
    const v0, 0x10403aa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    invoke-virtual {v11, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1211
    .local v6, "details":Ljava/lang/CharSequence;
    const v8, 0x1080815

    .line 1244
    .local v8, "icon":I
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://www.google.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1245
    .local v2, "brIntent":Landroid/content/Intent;
    const/high16 v0, 0x10400000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1246
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Landroid/app/Notification;->when:J

    .line 1249
    iput v8, v9, Landroid/app/Notification;->icon:I

    .line 1250
    const/4 v0, -0x2

    iput v0, v9, Landroid/app/Notification;->flags:I

    .line 1251
    iput-object v12, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1252
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    iget-object v1, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v9, v0, v12, v6, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1254
    const-string v0, "CAPTIVE_PORTAL_SIGN_IN_NOTIFICATION_ID"

    const v1, 0x10409dc

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v1, v9, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1258
    .end local v2    # "brIntent":Landroid/content/Intent;
    .end local v6    # "details":Ljava/lang/CharSequence;
    .end local v8    # "icon":I
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v11    # "r":Landroid/content/res/Resources;
    .end local v12    # "title":Ljava/lang/CharSequence;
    :cond_2
    :try_start_0
    const-string v0, "CAPTIVE_PORTAL_SIGN_IN_NOTIFICATION_ID"

    const v1, 0x10409dc

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1260
    :catch_0
    move-exception v7

    .line 1261
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "WifiNotificationController"

    const-string v1, "Runtime Exeption on showCaptivePortalSignInNotification()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showMaliciousHotspotDetectionNotification(Ljava/lang/String;Z)V
    .locals 15
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 1418
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 1419
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    const-string v1, "WifiNotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showMaliciousHotspotDetectionNotification - MaliciousNetwork:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", visible:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    if-nez p2, :cond_0

    .line 1421
    const-string v1, "MALICIOUS_HOTSPOT_DETECTED_NOTIFICATION_ID"

    const v2, 0x104083e

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v2, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1457
    :goto_0
    return-void

    .line 1426
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v13

    .line 1427
    .local v13, "r":Landroid/content/res/Resources;
    const v9, 0x108008a

    .line 1428
    .local v9, "icon":I
    const v1, 0x104083e

    invoke-virtual {v13, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1429
    .local v14, "title":Ljava/lang/CharSequence;
    move-object/from16 v8, p1

    .line 1431
    .local v8, "details":Ljava/lang/CharSequence;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1432
    .local v3, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.wifi.WifiMaliciousHotspotDetectionActivity"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1433
    const-string v1, "SSID"

    move-object/from16 v0, p1

    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const v1, 0x10008000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1435
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 1437
    .local v12, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 1446
    .local v7, "b":Landroid/app/Notification$Builder;
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v7}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, v8}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v10

    .line 1449
    .local v10, "notification":Landroid/app/Notification;
    iget v1, v10, Landroid/app/Notification;->defaults:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v10, Landroid/app/Notification;->defaults:I

    .line 1450
    const/4 v1, 0x2

    iput v1, v10, Landroid/app/Notification;->priority:I

    .line 1451
    iget v1, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v10, Landroid/app/Notification;->flags:I

    .line 1452
    iget v1, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v10, Landroid/app/Notification;->flags:I

    .line 1453
    iput-object v12, v10, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1455
    const-string v1, "MALICIOUS_HOTSPOT_DETECTED_NOTIFICATION_ID"

    const v2, 0x104083e

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v1, v2, v10, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto/16 :goto_0
.end method

.method private showOngoingWifiNotification(Z)V
    .locals 13
    .param p1, "connected"    # Z

    .prologue
    .line 692
    const-string v0, "WifiNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show wifi notification visible:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 694
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 697
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const v1, 0x108087b

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationBuilder:Landroid/app/Notification$Builder;

    .line 703
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 704
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 705
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 706
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 707
    .local v9, "pendingContentIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 709
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 710
    .local v6, "deleteIntent":Landroid/content/Intent;
    const-string v0, "nid"

    const v1, 0x2df96b

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v6, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 712
    .local v10, "pendingDeleteIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 714
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v6    # "deleteIntent":Landroid/content/Intent;
    .end local v9    # "pendingContentIntent":Landroid/app/PendingIntent;
    .end local v10    # "pendingDeleteIntent":Landroid/app/PendingIntent;
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const v1, 0x104083f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 715
    .local v11, "title":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v12

    .line 716
    .local v12, "wifiInfo":Landroid/net/wifi/WifiInfo;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const v1, 0x1040840

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v12}, Lcom/android/server/wifi/WifiNotificationController;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 718
    .local v7, "details":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 719
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 720
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 722
    const/4 v0, 0x0

    const v1, 0x2df96b

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mAttNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 723
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z

    .line 728
    .end local v7    # "details":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :goto_0
    return-void

    .line 725
    :cond_1
    const/4 v0, 0x0

    const v1, 0x2df96b

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 726
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z

    goto :goto_0
.end method

.method private showShareProfileNetworkExpirationNotification(Ljava/lang/String;)V
    .locals 14
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const v13, 0x1040837

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1355
    const-string v0, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showShareProfileNetworkExpirationNotification, ssid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 1358
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1359
    .local v11, "r":Landroid/content/res/Resources;
    const v8, 0x1080815

    .line 1360
    .local v8, "icon":I
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1361
    .local v12, "title":Ljava/lang/CharSequence;
    move-object v7, p1

    .line 1363
    .local v7, "details":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1370
    .local v6, "b":Landroid/app/Notification$Builder;
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v6}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v9

    .line 1374
    .local v9, "notification":Landroid/app/Notification;
    const/4 v0, 0x2

    iput v0, v9, Landroid/app/Notification;->priority:I

    .line 1375
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1376
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1377
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1378
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHARE_PROFILE_NETWORK_EXPIRATION_NOTIFICATION_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v13, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1382
    return-void
.end method

.method private showShareProfileReceptionNotification(Ljava/lang/String;)V
    .locals 14
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const v13, 0x1040836

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1385
    const-string v0, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showShareProfileReceptionNotification, receivedNetwork:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 1388
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1389
    .local v11, "r":Landroid/content/res/Resources;
    const v8, 0x1080082

    .line 1390
    .local v8, "icon":I
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1391
    .local v12, "title":Ljava/lang/CharSequence;
    move-object v7, p1

    .line 1393
    .local v7, "details":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1401
    .local v6, "b":Landroid/app/Notification$Builder;
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v6}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v9

    .line 1404
    .local v9, "notification":Landroid/app/Notification;
    iget v0, v9, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v9, Landroid/app/Notification;->defaults:I

    .line 1405
    const/4 v0, 0x2

    iput v0, v9, Landroid/app/Notification;->priority:I

    .line 1406
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1407
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1408
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1409
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHARE_PROFILE_RECEPTION_NOTIFICATION_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v13, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1413
    return-void
.end method

.method private showShareProfileTransmissionNotification(Ljava/lang/String;)V
    .locals 14
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const v13, 0x1040838

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1326
    const-string v0, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showShareProfileTransmissionNotification, ssid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 1328
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    .line 1329
    .local v11, "r":Landroid/content/res/Resources;
    const v8, 0x1080089

    .line 1330
    .local v8, "icon":I
    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1331
    .local v12, "title":Ljava/lang/CharSequence;
    move-object v7, p1

    .line 1333
    .local v7, "details":Ljava/lang/CharSequence;
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1340
    .local v6, "b":Landroid/app/Notification$Builder;
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, v6}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v0, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v9

    .line 1344
    .local v9, "notification":Landroid/app/Notification;
    const/4 v0, 0x2

    iput v0, v9, Landroid/app/Notification;->priority:I

    .line 1345
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1346
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1347
    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1348
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHARE_PROFILE_TRANSMISSION_NOTIFICATION_ID_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v13, v9, v1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1352
    return-void
.end method

.method private showSnsExceptionNotification(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 15
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "visible"    # Z

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 1085
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    if-nez p2, :cond_0

    .line 1086
    const-string v0, "SNS_EXCEPTION_NOTIFICATION_ID"

    const v1, 0x10409d8

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1088
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sns_dialog_for_starting_settings"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1090
    const/4 v0, 0x0

    .line 1136
    :goto_0
    return v0

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1093
    .local v13, "r":Landroid/content/res/Resources;
    const v0, 0x10409d8

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1094
    .local v14, "title":Ljava/lang/CharSequence;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiNotificationController;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v9

    .line 1096
    .local v9, "message":Ljava/lang/String;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

    .line 1097
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080815

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

    .line 1103
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1104
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1105
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1107
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1108
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiSnsExceptionActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    const v0, 0x10808000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1110
    const-string v0, "SSID"

    invoke-direct/range {p0 .. p1}, Lcom/android/server/wifi/WifiNotificationController;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1111
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1112
    .local v11, "pendingContentIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1114
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1115
    .local v6, "deleteIntent":Landroid/content/Intent;
    const-string v0, "nid"

    const v1, 0x10409d8

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1116
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v6, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v12

    .line 1117
    .local v12, "pendingDeleteIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1119
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_sns_dialog_for_starting_settings"

    const/16 v3, 0xb

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :goto_1
    :try_start_1
    const-string v0, "SNS_EXCEPTION_NOTIFICATION_ID"

    const v1, 0x10409d8

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1131
    const-string v0, "SNS_EXCEPTION_NOTIFICATION_ID"

    const v1, 0x10409d8

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiSnsExceptionNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v10, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1133
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1124
    :catch_0
    move-exception v8

    .line 1125
    .local v8, "ee":Landroid/content/ActivityNotFoundException;
    const-string v0, "WifiNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityNotFoundException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1134
    .end local v8    # "ee":Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v7

    .line 1135
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "WifiNotificationController"

    const-string v1, "Runtime Exception on showSnsExceptionNotification()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private showVzwEapAkaNetworkFoundNotification(Z)Z
    .locals 16
    .param p1, "visible"    # Z

    .prologue
    .line 944
    const-string v10, "WifiNotificationController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showVzwEapAkaNetworkFoundNotification: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 946
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    if-nez p1, :cond_0

    .line 947
    const-string v10, "Wifi.EapAka.signin"

    const/4 v11, 0x1

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v10, v11, v12}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 948
    const-string v10, "WifiNotificationController"

    const-string v11, "showVzwEapAkaNetworkFoundNotification notificationManager.cancelAsUser"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v10, 0x0

    .line 981
    :goto_0
    return v10

    .line 951
    :cond_0
    const/4 v4, 0x0

    .line 952
    .local v4, "isVzwAkaConfiguredNetworkFound":Z
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v11, "wifi"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 953
    .local v5, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 954
    .local v2, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v8

    .line 956
    .local v8, "simState":I
    if-eqz v2, :cond_2

    .line 957
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 958
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    const-string v10, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/wifi/WifiNotificationController;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 959
    const/4 v4, 0x1

    .line 964
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    if-eqz p1, :cond_3

    if-nez v4, :cond_3

    .line 965
    const-string v10, "WifiNotificationController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVzwAkaConfiguredNetworkFound: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    new-instance v12, Landroid/content/Intent;

    const-string v13, "ACTION_CONNECT_TO_VZW_EAP_AKA"

    invoke-direct {v12, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 968
    .local v7, "pi":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10409d2

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "VerizonWiFiAccess"

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10409d3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    sget v11, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    .line 976
    .local v9, "vzwAkaNotification":Landroid/app/Notification;
    const-string v10, "Wifi.EapAka.signin"

    const/4 v11, 0x1

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v10, v11, v9, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 977
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 979
    .end local v7    # "pi":Landroid/app/PendingIntent;
    .end local v9    # "vzwAkaNotification":Landroid/app/Notification;
    :cond_3
    const-string v10, "Wifi.EapAka.signin"

    const/4 v11, 0x1

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v10, v11, v12}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 980
    const-string v10, "WifiNotificationController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVzwAkaConfiguredNetworkFound: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method private showVzwWifiNotification(Z)V
    .locals 12
    .param p1, "visible"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 897
    const-string v6, "WifiNotificationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "showVzwWifiNotification: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 900
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    .line 901
    const-string v6, "WifiNotificationController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mVzwNotificationRepeatTime "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationRepeatTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationRepeatTime:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 904
    const-string v6, "WifiNotificationController"

    const-string v7, "not showing notification"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v6, :cond_1

    .line 910
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    sget v7, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.settings.WIFI_SETTINGS_STATUS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotificationBuilder:Landroid/app/Notification$Builder;

    .line 919
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 920
    .local v0, "deleteIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v6, v10, v0, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 921
    .local v3, "pendingDeleteIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 923
    .end local v0    # "deleteIntent":Landroid/content/Intent;
    .end local v3    # "pendingDeleteIntent":Landroid/app/PendingIntent;
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 924
    .local v4, "r":Landroid/content/res/Resources;
    const v6, 0x10409d2

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "VerizonWiFi"

    aput-object v8, v7, v10

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 926
    .local v5, "title":Ljava/lang/CharSequence;
    const v6, 0x10409d3

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "details":Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 930
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 931
    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationRepeatTime:J

    .line 934
    const-string v6, "Wifi.Aggregation.signin"

    iget-object v7, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwWifiNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v11, v7, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 938
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v4    # "r":Landroid/content/res/Resources;
    .end local v5    # "title":Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mIsShowingVzwNotification:Z

    .line 939
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationShown:Z

    goto/16 :goto_0

    .line 936
    :cond_2
    const-string v6, "Wifi.Aggregation.signin"

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v6, v11, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private showWifiNotificationForVzw(ZIZ)V
    .locals 18
    .param p1, "enable"    # Z
    .param p2, "notificationId"    # I
    .param p3, "forceupdate"    # Z

    .prologue
    .line 756
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 757
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_8

    .line 758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mPrevVzwNotificationId:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    if-nez v2, :cond_2

    .line 841
    :cond_1
    :goto_0
    return-void

    .line 763
    :cond_2
    new-instance v9, Landroid/content/Intent;

    const-string v2, "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 764
    .local v9, "deleteIntent":Landroid/content/Intent;
    const-string v2, "nid"

    const v3, 0x2df96b

    invoke-virtual {v9, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v9, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 767
    .local v13, "pendingDeleteIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 768
    .local v4, "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.Settings$WifiSettingsActivity"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 769
    const v2, 0x10008000

    invoke-virtual {v4, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v12

    .line 772
    .local v12, "pendingContentIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    .line 779
    const v2, 0x108087b

    move/from16 v0, p2

    if-ne v0, v2, :cond_3

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 784
    :cond_3
    const/4 v15, 0x0

    .line 785
    .local v15, "title":Ljava/lang/String;
    const/4 v10, 0x0

    .line 786
    .local v10, "message":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 816
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 817
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 818
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 821
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wifi/WifiNotificationController;->mPrevVzwNotificationId:I

    .line 823
    if-eqz v15, :cond_5

    if-eqz v10, :cond_5

    .line 825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v2, v6

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 827
    :cond_5
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wifi/WifiNotificationController;->resetEapAkaNotification()V

    .line 828
    const-string v2, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWifiNotificationForVzw show : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const/4 v2, 0x0

    const v3, 0x2df96b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v3, v5, v6}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v9    # "deleteIntent":Landroid/content/Intent;
    .end local v10    # "message":Ljava/lang/String;
    .end local v12    # "pendingContentIntent":Landroid/app/PendingIntent;
    .end local v13    # "pendingDeleteIntent":Landroid/app/PendingIntent;
    .end local v15    # "title":Ljava/lang/String;
    :cond_6
    :goto_2
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationVisible:Z

    goto/16 :goto_0

    .line 788
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v9    # "deleteIntent":Landroid/content/Intent;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v12    # "pendingContentIntent":Landroid/app/PendingIntent;
    .restart local v13    # "pendingDeleteIntent":Landroid/app/PendingIntent;
    .restart local v15    # "title":Ljava/lang/String;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10409cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10409cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 790
    goto/16 :goto_1

    .line 792
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 794
    .local v8, "connectivity":Landroid/net/ConnectivityManager;
    const/16 v17, 0x0

    .line 795
    .local v17, "wifiNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v8, :cond_4

    .line 796
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v16

    .line 799
    .local v16, "wifiInfo":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10409d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 800
    .local v14, "secure":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/wifi/WifiNotificationController;->isSecuredAp(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10409d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 803
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10409ce

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object v14, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10409cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 811
    goto/16 :goto_1

    .line 834
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v8    # "connectivity":Landroid/net/ConnectivityManager;
    .end local v9    # "deleteIntent":Landroid/content/Intent;
    .end local v10    # "message":Ljava/lang/String;
    .end local v12    # "pendingContentIntent":Landroid/app/PendingIntent;
    .end local v13    # "pendingDeleteIntent":Landroid/app/PendingIntent;
    .end local v14    # "secure":Ljava/lang/String;
    .end local v15    # "title":Ljava/lang/String;
    .end local v16    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v17    # "wifiNetworkInfo":Landroid/net/NetworkInfo;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    if-eqz v2, :cond_6

    if-eqz v11, :cond_6

    .line 835
    const-string v2, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showWifiNotificationForVzw show : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", id : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    const/4 v2, 0x0

    const v3, 0x2df96b

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v3, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 837
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    goto/16 :goto_2

    .line 831
    .restart local v4    # "intent":Landroid/content/Intent;
    .restart local v9    # "deleteIntent":Landroid/content/Intent;
    .restart local v10    # "message":Ljava/lang/String;
    .restart local v12    # "pendingContentIntent":Landroid/app/PendingIntent;
    .restart local v13    # "pendingDeleteIntent":Landroid/app/PendingIntent;
    .restart local v15    # "title":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_2

    .line 786
    :pswitch_data_0
    .packed-switch 0x108087b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private showWifiPoorConnectionNotification(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 14
    .param p1, "wifiInfo"    # Landroid/net/wifi/WifiInfo;
    .param p2, "visible"    # Z

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationManager;

    .line 1033
    .local v9, "notificationManager":Landroid/app/NotificationManager;
    if-nez p2, :cond_0

    .line 1034
    const-string v0, "POOR_CONNECTION_NOTIFICATION_ID"

    const v1, 0x10409d9

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1036
    const/4 v0, 0x0

    .line 1078
    :goto_0
    return v0

    .line 1038
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1043
    .local v12, "r":Landroid/content/res/Resources;
    const v0, 0x10409d9

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1045
    .local v13, "title":Ljava/lang/CharSequence;
    const v0, 0x10409db

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNotificationController;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v12, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1047
    .local v8, "message":Ljava/lang/String;
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiPoorConnectionNotificationBuilder:Landroid/app/Notification$Builder;

    .line 1048
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080815

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiPoorConnectionNotificationBuilder:Landroid/app/Notification$Builder;

    .line 1056
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1057
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiSnsPoorConnectionActivity"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    const/high16 v0, 0x10800000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1059
    const-string v0, "SSID"

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNotificationController;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1060
    const-string v0, "NETWORK_ID"

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1061
    const-string v0, "WifiNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create WifiPoorConnectionNotification with SSID/NETWORK_ID : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiNotificationController;->getSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v3, 0x8000000

    const/4 v4, 0x0

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 1063
    .local v10, "pendingContentIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiPoorConnectionNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1065
    new-instance v6, Landroid/content/Intent;

    const-string v0, "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1066
    .local v6, "deleteIntent":Landroid/content/Intent;
    const-string v0, "nid"

    const v1, 0x10409d9

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1067
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v6, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1068
    .local v11, "pendingDeleteIntent":Landroid/app/PendingIntent;
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiPoorConnectionNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1071
    :try_start_0
    const-string v0, "POOR_CONNECTION_NOTIFICATION_ID"

    const v1, 0x10409d9

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1073
    const-string v0, "POOR_CONNECTION_NOTIFICATION_ID"

    const v1, 0x10409d9

    iget-object v3, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiPoorConnectionNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v0, v1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1075
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1076
    :catch_0
    move-exception v7

    .line 1077
    .local v7, "e":Ljava/lang/RuntimeException;
    const-string v0, "WifiNotificationController"

    const-string v1, "Runtime Exception on showWifiPoorConnectionNotification()"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private showWwsmPatcherNotification(IZ)Z
    .locals 13
    .param p1, "titleType"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 1143
    const-string v9, "WifiNotificationController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "showWwsmPatcherNotification with type/visible : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 1145
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p2, :cond_0

    iget-object v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    if-nez v9, :cond_1

    .line 1146
    :cond_0
    const-string v9, "WWSM_PATCHER_NOTIFICATION_ID"

    const v10, 0x10409e2

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v10, v11}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1148
    const/4 v9, 0x0

    .line 1188
    :goto_0
    return v9

    .line 1151
    :cond_1
    iget-object v9, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1152
    .local v7, "r":Landroid/content/res/Resources;
    const/4 v8, 0x0

    .line 1153
    .local v8, "title":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1154
    .local v2, "detail":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1155
    .local v0, "autoCancel":Z
    const/4 v4, 0x0

    .line 1157
    .local v4, "icon":I
    packed-switch p1, :pswitch_data_0

    .line 1165
    const/4 v9, 0x0

    goto :goto_0

    .line 1159
    :pswitch_0
    const v9, 0x10409e2

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1160
    const v9, 0x10409e3

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1161
    const/4 v0, 0x1

    .line 1162
    const v4, 0x1080816

    .line 1168
    const/4 v5, 0x0

    .line 1169
    .local v5, "notiBuilder":Landroid/app/Notification$Builder;
    new-instance v9, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v9}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v9, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 1170
    .local v1, "bigStyle":Landroid/app/Notification$BigTextStyle;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 1178
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    sput-object v9, Lcom/android/server/wifi/WifiNotificationController;->mWwsmPatcherNotification:Landroid/app/Notification;

    .line 1181
    :try_start_0
    const-string v9, "WWSM_PATCHER_NOTIFICATION_ID"

    const v10, 0x10409e2

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v10, v11}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1183
    const-string v9, "WWSM_PATCHER_NOTIFICATION_ID"

    const v10, 0x10409e2

    sget-object v11, Lcom/android/server/wifi/WifiNotificationController;->mWwsmPatcherNotification:Landroid/app/Notification;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v10, v11, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    const/4 v9, 0x1

    goto :goto_0

    .line 1186
    :catch_0
    move-exception v3

    .line 1187
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v9, "WifiNotificationController"

    const-string v10, "Runtime Exception on showWwsmPatcherNotification()"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const/4 v9, 0x0

    goto :goto_0

    .line 1157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private updateResources()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 731
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-eqz v4, :cond_0

    .line 732
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 733
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1140005

    iget v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 735
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1140006

    iget v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 737
    .local v1, "details":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 738
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 739
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 740
    const/4 v4, 0x0

    sget v5, Lcom/android/server/wifi/WifiNotificationController;->ICON_NETWORKS_AVAILABLE:I

    iget-object v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 743
    .end local v1    # "details":Ljava/lang/CharSequence;
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStatusNotiBuilder:Landroid/app/Notification$Builder;

    if-eqz v4, :cond_1

    const-string v4, "VZW"

    sget-object v5, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mVzwNotificationVisible:Z

    if-eqz v4, :cond_1

    .line 744
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v4, :cond_1

    .line 745
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    .line 746
    .local v0, "currState":Landroid/net/NetworkInfo$DetailedState;
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v4, :cond_4

    const v4, 0x108087b

    :goto_0
    invoke-direct {p0, v8, v4, v8}, Lcom/android/server/wifi/WifiNotificationController;->showWifiNotificationForVzw(ZIZ)V

    .line 749
    .end local v0    # "currState":Landroid/net/NetworkInfo$DetailedState;
    :cond_1
    const-string v4, "ATT"

    sget-object v5, Lcom/android/server/wifi/WifiNotificationController;->VendorNotificationStyle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/wifi/WifiNotificationController;->WIFI_SCREENCONNECTEDINFO:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mOngoingNotificationVisible:Z

    if-eqz v4, :cond_3

    .line 750
    invoke-direct {p0, v8}, Lcom/android/server/wifi/WifiNotificationController;->showOngoingWifiNotification(Z)V

    .line 752
    :cond_3
    return-void

    .line 746
    .restart local v0    # "currState":Landroid/net/NetworkInfo$DetailedState;
    :cond_4
    const v4, 0x108087c

    goto :goto_0
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationRepeatTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNotificationShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNumScansSinceNetworkStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    return-void
.end method
