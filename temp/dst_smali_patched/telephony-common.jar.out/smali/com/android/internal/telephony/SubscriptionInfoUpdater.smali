.class public Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.super Landroid/os/Handler;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    }
.end annotation


# static fields
.field public static final CURR_SUBID:Ljava/lang/String; = "curr_subid"

.field protected static final ENABLE_SURVEY_MODE:Z

.field private static final EVENT_GET_NETWORK_SELECTION_MODE_DONE:I = 0x2

.field private static final EVENT_ICC_CHANGED:I = 0xa

.field private static final EVENT_QUERY_ICCID_DONE:I = 0x1

.field private static final EVENT_RETRY_READ_ICCID:I = 0xc

.field private static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0xd

.field private static final EVENT_SET_PREFERRED_NETWORK_TYPE_DONE:I = 0xe

.field private static final EVENT_SIM_ABSENT:I = 0x4

.field private static final EVENT_SIM_ICCID_NOTI:I = 0x10

.field private static final EVENT_SIM_IO_ERROR:I = 0x6

.field private static final EVENT_SIM_LOADED:I = 0x3

.field private static final EVENT_SIM_LOCKED:I = 0x5

.field private static final EVENT_SIM_UNKNOWN:I = 0x7

.field private static final EVENT_STACK_READY:I = 0xb

.field private static final EVENT_SURVEY_LOG_WAIT:I = 0x14

.field private static final EVENT_WAIT_HOTSWAP_INSERT_FINISHED:I = 0xf

.field private static final ICCID_STRING_FOR_INVALID_ICCID:Ljava/lang/String; = "00000000000000000000"

.field private static final ICCID_STRING_FOR_NO_SIM:Ljava/lang/String; = ""

.field private static final ICCID_STRING_FOR_NV:Ljava/lang/String; = "FFFFFFFFFFFFFFFFFFFF"

.field private static final ICCID_STRING_FOR_SIM_IO_ERROR:Ljava/lang/String; = "ICCID_FOR_IO_ERROR"

.field private static final LOG_TAG:Ljava/lang/String; = "SubscriptionInfoUpdater"

.field private static final PROJECT_SIM_NUM:I

.field public static PreDefaultDataSubId:I = 0x0

.field static final SHIP_BUILD:Z

.field public static final SIM_CHANGED:I = -0x1

.field public static final SIM_NEW:I = -0x2

.field public static final SIM_NOT_CHANGE:I = 0x0

.field public static final SIM_NOT_INSERT:I = -0x63

.field public static final SIM_REPOSITION:I = -0x3

.field public static final STATUS_NO_SIM_INSERTED:I = 0x0

.field public static final STATUS_SIM1_INSERTED:I = 0x1

.field public static final STATUS_SIM2_INSERTED:I = 0x2

.field public static final STATUS_SIM3_INSERTED:I = 0x4

.field public static final STATUS_SIM4_INSERTED:I = 0x8

.field private static isCheckingCTCSim:Z

.field public static isNeededUpdateDDSChanged:Z

.field private static isSimReset:[Z

.field private static mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private static mContext:Landroid/content/Context;

.field private static mCurrentSimPlugInSlot:I

.field private static mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private static mHotSwapDisable:Z

.field private static mHotSwapRemoved:Z

.field private static mIccId:[Ljava/lang/String;

.field private static mInsertSimState:[I

.field private static mMainStackSubId:I

.field private static mPhone:[Lcom/android/internal/telephony/Phone;

.field private static final mPhoneOnKey:[Ljava/lang/String;

.field private static mPrefNwMode:[I

.field private static mSimHotPlugIn:Z

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field private static mWaitFinishFlag:Z

.field private static mWaitOtherSlot:Z

.field private static sCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private static sPreferredNetworkMode:I

.field private static sPreferredNetworkSlot:I

.field private static sRetryReadIccIdCount:I


# instance fields
.field private isNVSubAvailable:Z

.field private mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private mCurrentlyActiveUserId:I

.field private mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsSystemShutdown:Z

.field private mNeedUpdate:Z

.field private mOldSilentResetCnt:I

.field private mPackageManager:Landroid/content/pm/IPackageManager;

.field private mReason:Ljava/lang/String;

.field private mSlotId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final nwModeObserver:Landroid/database/ContentObserver;

.field private final phoneOn1Observer:Landroid/database/ContentObserver;

.field private final phoneOn2Observer:Landroid/database/ContentObserver;

.field private final sReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "phone1_on"

    aput-object v1, v0, v3

    const-string v1, "phone2_on"

    aput-object v1, v0, v5

    const/4 v1, 0x2

    const-string v2, "phone3_on"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "phone4_on"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "phone5_on"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOnKey:[Ljava/lang/String;

    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sput-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccFileHandler;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z

    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PreDefaultDataSubId:I

    const-string v0, "true"

    const-string v1, "ro.product_ship"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->SHIP_BUILD:Z

    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNeededUpdateDDSChanged:Z

    sput v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkSlot:I

    sput v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sPreferredNetworkMode:I

    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    sput-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSimHotPlugIn:Z

    sput v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimPlugInSlot:I

    sput-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->ENABLE_SURVEY_MODE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/Phone;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v7, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    iput v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlotId:I

    iput-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReason:Ljava/lang/String;

    iput v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    iput-object v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->nwModeObserver:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$2;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->phoneOn1Observer:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->phoneOn2Observer:Landroid/database/ContentObserver;

    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$5;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "Constructor invoked"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sput-object p1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    sput-object p2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    sput-object p3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1, p3}, Lcom/android/internal/telephony/SubscriptionHelper;->init(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/SubscriptionHelper;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, p0, v3, v6}, Lcom/android/internal/telephony/ModemStackController;->registerForStackReady(Landroid/os/Handler;ILjava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    :cond_0
    const-string v2, "persist.radio.silent-reset"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v7, :cond_3

    const-string v2, "CN"

    const-string v3, "ro.csc.countryiso_code"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "HK"

    const-string v3, "ro.csc.countryiso_code"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TW"

    const-string v3, "ro.csc.countryiso_code"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->nwModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v7, :cond_4

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone1_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->phoneOn1Observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "phone2_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->phoneOn2Observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_5

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v3, 0x10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->registerForSimIccIdNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v7, :cond_7

    const/4 v0, 0x0

    :goto_3
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v3, 0xa

    invoke-virtual {v2, p0, v3, v6}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_7
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.internal_sim_state_changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.stk.icc_status_change"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->initializeCarrierApps()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateNwModesInSubIdTable(Z)V

    return-void
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    return v0
.end method

.method static synthetic access$1100()[I
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-object v0
.end method

.method static synthetic access$1302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlotId:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Landroid/content/Context;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Landroid/content/pm/IPackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    return p1
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/SubscriptionInfoUpdater;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    return-void
.end method

.method static synthetic access$900()[Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z

    return-object v0
.end method

.method private broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "state"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "phoneName"

    const-string v2, "Phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ss"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "reason"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    const-string v1, "CTC"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ICC_TYPE"

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    invoke-static {v0, p1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for mCardIndex : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method private cancelTimeOut()V
    .locals 1

    .prologue
    const-string v0, "cancelTimeOut()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->removeMessages(I)V

    return-void
.end method

.method public static getMainStackSubId()I
    .locals 3

    .prologue
    const/4 v2, -0x1

    sget v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    .local v0, "subId":I
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    if-le v1, v2, :cond_0

    sput v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    :cond_0
    return v0
.end method

.method private handleSimAbsent(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v0, p1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hot plug out"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, p1

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    :cond_1
    const-string v0, "ABSENT"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    return-void
.end method

.method private handleSimIoError(I)V
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimIoError: slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, "ICCID_FOR_IO_ERROR"

    aput-object v1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    :cond_0
    return-void
.end method

.method private handleSimLoaded(I)V
    .locals 26
    .param p1, "slotId"    # I

    .prologue
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "handleSimStateLoadedInternal: slotId: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v21, v21, p1

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/IccCard;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v13

    .local v13, "records":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v13, :cond_0

    const-string v21, "onRecieve: IccRecords null"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v21

    if-nez v21, :cond_1

    const-string v21, "onRecieve: IccID null"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v21, v21, p1

    if-nez v21, :cond_2

    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/IccRecords;->getIccId()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v21, p1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v21

    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v21, v0

    if-eqz v21, :cond_3

    sget-boolean v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    if-nez v21, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    :cond_3
    const v17, 0x7fffffff

    .local v17, "subId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v18

    .local v18, "subIds":[I
    if-eqz v18, :cond_4

    const/16 v21, 0x0

    aget v17, v18, v21

    :cond_4
    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v21

    if-eqz v21, :cond_d

    invoke-virtual {v13}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    .local v12, "operator":Ljava/lang/String;
    if-eqz v12, :cond_b

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v21

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-static {v0, v12, v1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/android/internal/telephony/SubscriptionController;->setMccMnc(Ljava/lang/String;I)I

    :goto_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    .local v20, "tm":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "msisdn":Ljava/lang/String;
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .local v6, "contentResolver":Landroid/content/ContentResolver;
    if-eqz v8, :cond_6

    new-instance v11, Landroid/content/ContentValues;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v11, v0}, Landroid/content/ContentValues;-><init>(I)V

    .local v11, "number":Landroid/content/ContentValues;
    const-string v21, "number"

    move-object/from16 v0, v21

    invoke-virtual {v11, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v21, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "_id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v6, v0, v11, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v11    # "number":Landroid/content/ContentValues;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v19

    .local v19, "subInfo":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForSubscription(I)Ljava/lang/String;

    move-result-object v14

    .local v14, "simCarrierName":Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-direct {v9, v0}, Landroid/content/ContentValues;-><init>(I)V

    .local v9, "name":Landroid/content/ContentValues;
    if-eqz v19, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_c

    move-object v10, v14

    .local v10, "nameToSet":Ljava/lang/String;
    :goto_2
    const-string v21, "display_name"

    move-object/from16 v0, v21

    invoke-virtual {v9, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "sim name = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v21, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "_id="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v6, v0, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v10    # "nameToSet":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v21

    if-nez v21, :cond_8

    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-static/range {v21 .. v21}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .local v15, "sp":Landroid/content/SharedPreferences;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "curr_subid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v15, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v16

    .local v16, "storedSubId":I
    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_8

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .local v7, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "curr_subid"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->apply()V

    .end local v7    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "sp":Landroid/content/SharedPreferences;
    .end local v16    # "storedSubId":I
    :cond_8
    const-string v21, "1"

    const-string v22, "ril.isIccChanged"

    const-string v23, "0"

    move-object/from16 v0, v22

    move/from16 v1, p1

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v21, v21, p1

    const/16 v22, 0x2

    new-instance v23, Ljava/lang/Integer;

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    invoke-interface/range {v21 .. v22}, Lcom/android/internal/telephony/Phone;->getNetworkSelectionMode(Landroid/os/Message;)V

    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v9    # "name":Landroid/content/ContentValues;
    .end local v12    # "operator":Ljava/lang/String;
    .end local v14    # "simCarrierName":Ljava/lang/String;
    .end local v19    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v20    # "tm":Landroid/telephony/TelephonyManager;
    :cond_9
    :goto_3
    sget-boolean v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->ENABLE_SURVEY_MODE:Z

    if-eqz v21, :cond_a

    const-string v21, "Start timer EVENT_SURVEY_LOG_WAIT 60seconds"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v21, 0x14

    const/16 v22, -0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, p1

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const-wide/32 v22, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a
    sget-object v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    move/from16 v24, v0

    invoke-static/range {v21 .. v24}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    const-string v21, "LOADED"

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    const-string v21, "LOADED"

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .restart local v12    # "operator":Ljava/lang/String;
    :cond_b
    const-string v21, "EVENT_RECORDS_LOADED Operator name is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v6    # "contentResolver":Landroid/content/ContentResolver;
    .restart local v8    # "msisdn":Ljava/lang/String;
    .restart local v9    # "name":Landroid/content/ContentValues;
    .restart local v14    # "simCarrierName":Ljava/lang/String;
    .restart local v19    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .restart local v20    # "tm":Landroid/telephony/TelephonyManager;
    :cond_c
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "CARD "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    add-int/lit8 v22, p1, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "nameToSet":Ljava/lang/String;
    goto/16 :goto_2

    .end local v6    # "contentResolver":Landroid/content/ContentResolver;
    .end local v8    # "msisdn":Ljava/lang/String;
    .end local v9    # "name":Landroid/content/ContentValues;
    .end local v10    # "nameToSet":Ljava/lang/String;
    .end local v12    # "operator":Ljava/lang/String;
    .end local v14    # "simCarrierName":Ljava/lang/String;
    .end local v19    # "subInfo":Landroid/telephony/SubscriptionInfo;
    .end local v20    # "tm":Landroid/telephony/TelephonyManager;
    :cond_d
    const-string v21, "Invalid subId, could not update ContentResolver"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private handleSimLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimStateLockedInternal: slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v0, v1, p1

    .local v0, "iccId":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "QCOM"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "LOCKED"

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    const-string v1, "LOCKED"

    invoke-direct {p0, p1, v1, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleSimUnknown(I)V
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z

    aget-boolean v5, v5, p1

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isSimReset:[Z

    aput-boolean v7, v5, p1

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v5

    if-eqz v5, :cond_0

    sget v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-le v5, v8, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "CTC"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-le v5, v8, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "persist.radio.silent-reset"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .local v3, "newSilentResetCnt":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOldSilentResetCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newSilentResetCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    if-le v3, v5, :cond_3

    const-string v5, "ril.rildreset"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const-string v5, "cp silent reset heppen, update Sub Activation"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    iput v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mOldSilentResetCnt:I

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    invoke-virtual {v5, v6, v8}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto :goto_0

    .end local v3    # "newSilentResetCnt":I
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v5, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .local v2, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v4

    .local v4, "numApps":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_DETECTED:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v5, v6, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_DISABLED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v5, v6, :cond_4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initializeCarrierApps()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$4;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    iput v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentlyActiveUserId:I

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/CarrierAppUtils;->disableCarrierAppsUntilPrivileged(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/telephony/TelephonyManager;I)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t get current user ID; guessing it\'s 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private insertLogforSimInfo(I)V
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .local v0, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const-string v1, "ril.ICC_TYPE"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "iccType":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "plmn":Ljava/lang/String;
    const-string v1, "3"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "gsm.sim.cdmaoperator.numeric"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"SLOTID\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"PLMN\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "extra":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertLogforSimInfo slotId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " plmn :  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const-string v1, "com.android.internal.telephony"

    const-string v2, "SIMI"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/SubscriptionController;->insertLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    .end local v3    # "extra":Ljava/lang/String;
    :cond_1
    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private isAllIccIdQueryDone()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_3

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " IccId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return v1

    :cond_1
    const-string v2, "0"

    const-string v3, "ril.ICC_TYPE"

    const-string v4, "0"

    invoke-static {v0, v3, v4}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v1, "All IccIds query complete"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v1, 0x1

    goto :goto_1
.end method

.method private isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "iccId"    # Ljava/lang/String;
    .param p2, "oldIccId"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .local v1, "newSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newSim = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const-string v0, "SubscriptionInfoUpdater"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private queryIccId(I)V
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(ILjava/lang/String;)V

    return-void
.end method

.method private queryIccId(ILjava/lang/String;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryIccId: slotid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v2, v2, p1

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hot plug in"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v0, v2, p1

    iput-boolean v5, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    if-nez v2, :cond_1

    .local v0, "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :goto_0
    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v1, v2, p1

    .local v1, "iccId":Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v2, "Querying IccId"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v2, 0x2fe2

    new-instance v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    invoke-direct {v3, p2, p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    :goto_1
    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    .end local v1    # "iccId":Ljava/lang/String;
    :goto_2
    return-void

    .end local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "fileHandler":Lcom/android/internal/telephony/uicc/IccFileHandler;
    .restart local v1    # "iccId":Ljava/lang/String;
    :cond_2
    sget-boolean v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->SHIP_BUILD:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT Querying IccId its already set mIccId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]= XXX"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT Querying IccId its already set mIccId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "iccId":Ljava/lang/String;
    :cond_4
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sFh["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null, so retry to read IccId after 100ms, sRetryReadIccIdCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    const/16 v2, 0xc

    const/4 v3, -0x1

    invoke-virtual {p0, v2, p1, v3, p2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    :cond_5
    const-string v2, "retry to read iccid FAIL, sRetryReadIccIdCount set 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sput v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sRetryReadIccIdCount:I

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v3, v2, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sFh["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] is null, ignore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private setPreferredNetworkForCmcc()V
    .locals 33

    .prologue
    const/16 v17, 0x0

    .local v17, "isSimUpdate":Z
    const/16 v16, 0x0

    .local v16, "isNewCmccSim":Z
    const/16 v26, 0x0

    .local v26, "setnetworkmode":Z
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v29, v0

    .local v29, "subIds":[I
    sget v15, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .local v15, "insertedSimCount":I
    const/4 v3, 0x0

    .local v3, "cmccUsimCount":I
    const/4 v5, 0x0

    .local v5, "cuUsimCount":I
    const/4 v8, 0x0

    .local v8, "defaultNwSimCount":I
    const/16 v25, -0x1

    .local v25, "setnetworkSlot":I
    const/4 v4, -0x1

    .local v4, "cmccUsimSlotId":I
    const/4 v6, -0x1

    .local v6, "cuUsimSlotId":I
    const/16 v24, -0x1

    .local v24, "otherSlotId":I
    const/4 v9, -0x1

    .local v9, "defaultNwSlotId":I
    const/4 v11, 0x0

    .local v11, "gsmOnlySimCount":I
    const/16 v19, 0x0

    .local v19, "lteAutoSimCount":I
    const/4 v2, 0x0

    .local v2, "activeSlotCount":I
    const/16 v18, 0x0

    .local v18, "lteAutoModeCount":I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v23, v0

    .local v23, "nwModeinSubIdTable":[I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v22, v0

    .local v22, "nwModeInDb":[I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v14, v0, [I

    .local v14, "iccType":[I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v28

    .local v28, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v2

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "phone1_on"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .local v20, "mPhoneOnMode1":I
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "phone2_on"

    const/16 v32, 0x1

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    .local v21, "mPhoneOnMode2":I
    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v7

    .local v7, "ddsSubId":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v12, v0, :cond_b

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v12

    if-eqz v30, :cond_0

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v12

    const/16 v31, -0x63

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    const/16 v17, 0x1

    :cond_0
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v12

    const/16 v31, -0x63

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1

    add-int/lit8 v15, v15, -0x1

    move/from16 v24, v12

    :cond_1
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: mInsertSimState["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v31, v31, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :try_start_0
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    const-string v31, "preferred_network_mode"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v12}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    aput v30, v22, v12
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    aget v30, v22, v12

    const/16 v31, 0x9

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    aget v30, v22, v12

    if-nez v30, :cond_3

    :cond_2
    add-int/lit8 v18, v18, 0x1

    :cond_3
    const/4 v13, 0x0

    .local v13, "iccIdInt":I
    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v30

    const/16 v31, 0x0

    aget v30, v30, v31

    aput v30, v29, v12

    aget v30, v29, v12

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(I)I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_4

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: not acitve slot: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move/from16 v24, v12

    :cond_4
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v30, v30, v12

    if-eqz v30, :cond_5

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v30, v30, v12

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_5

    :try_start_1
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v30, v30, v12

    const/16 v31, 0x0

    const/16 v32, 0x6

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    :cond_5
    :goto_2
    sparse-switch v13, :sswitch_data_0

    move/from16 v24, v12

    :cond_6
    :goto_3
    const-string v30, "ril.ICC_TYPE"

    const-string v31, "0"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v12, v1}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    aput v30, v14, v12

    aget v30, v29, v12

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v30

    aput v30, v23, v12

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: subIds["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v29, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " icctype: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v14, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " nwModeInDb: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v22, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " nwModeinSubIdTable: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v23, v12

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " iccIdInt: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    aget v30, v23, v12

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_7

    aget v30, v22, v12

    aput v30, v23, v12

    add-int/lit8 v8, v8, 0x1

    move v9, v12

    :cond_7
    aget v30, v23, v12

    const/16 v31, 0x9

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_8

    aget v30, v23, v12

    if-nez v30, :cond_a

    :cond_8
    add-int/lit8 v19, v19, 0x1

    :cond_9
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .end local v13    # "iccIdInt":I
    :catch_0
    move-exception v27

    .local v27, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    sget v30, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    aput v30, v22, v12

    goto/16 :goto_1

    .end local v27    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .restart local v13    # "iccIdInt":I
    :catch_1
    move-exception v10

    .local v10, "e":Ljava/lang/NumberFormatException;
    const/4 v13, 0x0

    goto/16 :goto_2

    .end local v10    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    move v4, v12

    aget v30, v23, v12

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    const/16 v16, 0x1

    const-string v30, "setPreferredNetworkForCmcc: is isNewCmccSim"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    aget v30, v23, v12

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .end local v13    # "iccIdInt":I
    :cond_b
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: lteAutoSimCount :"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " gsmOnlySimCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " defaultNwSimCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " insertedSimCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " lteAutoModeCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "updateNetworkMode: mPhoneOnMode1: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", mPhoneOnMode2:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", ddsSubId:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v2, v0, :cond_c

    if-nez v20, :cond_e

    const/16 v30, 0x1

    aget v30, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    const/16 v30, 0x1

    aget v30, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    const/16 v30, 0x1

    aget v30, v29, v30

    sput v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    :cond_c
    :goto_5
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v15, v0, :cond_11

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/16 v19, 0x1

    const/4 v12, 0x0

    :goto_6
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v12, v0, :cond_11

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v12

    const/16 v31, -0x63

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_10

    const/16 v30, 0x1

    aput v30, v23, v12

    :cond_d
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_e
    if-nez v21, :cond_f

    const/16 v30, 0x0

    aget v30, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    const/16 v30, 0x0

    aget v30, v29, v30

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    const/16 v30, 0x0

    aget v30, v29, v30

    sput v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    goto :goto_5

    :cond_f
    sput v7, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    goto :goto_5

    :cond_10
    aget v30, v29, v12

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    aget v30, v29, v12

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    aget v30, v29, v12

    sput v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    aget v30, v23, v12

    const/16 v31, 0x9

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_d

    const/16 v30, 0x9

    aput v30, v23, v12

    const/16 v17, 0x1

    goto :goto_7

    :cond_11
    if-nez v17, :cond_12

    if-eqz v8, :cond_13

    :cond_12
    if-nez v2, :cond_14

    :cond_13
    const-string v30, "setPreferredNetworkForCmcc: No sim or Not changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSubId(I)V

    :goto_8
    return-void

    :cond_14
    const/16 v30, 0x2

    move/from16 v0, v19

    move/from16 v1, v30

    if-eq v0, v1, :cond_15

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v8, v0, :cond_19

    :cond_15
    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    :cond_16
    :goto_9
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "setPreferredNetworkForCmcc: cmccUsimCount: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " cmccUsimSlotId:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " cuUsimCount: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " cuUsimSlotId: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " otherSlotId:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v3, v0, :cond_1d

    if-lez v8, :cond_1b

    const/16 v30, 0x0

    aget v30, v14, v30

    const/16 v31, 0x1

    aget v31, v14, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1b

    const/16 v30, 0x0

    aget v30, v14, v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1a

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v31, v23, v30

    const/16 v30, 0x1

    const/16 v31, 0x9

    aput v31, v23, v30

    :cond_17
    :goto_a
    if-nez v20, :cond_20

    const/16 v30, 0x1

    const/16 v31, 0x9

    aput v31, v23, v30

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v31, v23, v30

    :cond_18
    :goto_b
    const/4 v12, 0x0

    :goto_c
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v12, v0, :cond_21

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v31, v23, v12

    aput v31, v30, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_19
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v8, v0, :cond_16

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v11, v0, :cond_16

    const/16 v30, 0x9

    aput v30, v23, v9

    goto/16 :goto_9

    :cond_1a
    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    goto :goto_a

    :cond_1b
    const/16 v30, 0x2

    move/from16 v0, v30

    if-eq v11, v0, :cond_1c

    if-lez v8, :cond_17

    :cond_1c
    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    goto :goto_a

    :cond_1d
    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v3, v0, :cond_1e

    const/16 v30, 0x9

    aput v30, v23, v4

    const/16 v30, 0x1

    aput v30, v23, v24

    goto :goto_a

    :cond_1e
    if-lez v8, :cond_17

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v15, v0, :cond_17

    const/16 v30, 0x0

    aget v30, v14, v30

    const/16 v31, 0x1

    aget v31, v14, v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_17

    const/16 v30, 0x0

    aget v30, v14, v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1f

    const/16 v30, 0x0

    const/16 v31, 0x1

    aput v31, v23, v30

    const/16 v30, 0x1

    const/16 v31, 0x9

    aput v31, v23, v30

    goto/16 :goto_a

    :cond_1f
    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    goto/16 :goto_a

    :cond_20
    if-nez v21, :cond_18

    const/16 v30, 0x1

    const/16 v31, 0x1

    aput v31, v23, v30

    const/16 v30, 0x0

    const/16 v31, 0x9

    aput v31, v23, v30

    goto/16 :goto_b

    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNetworkType()V

    goto/16 :goto_8

    :sswitch_data_0
    .sparse-switch
        0xdb628 -> :sswitch_0
        0xdb62a -> :sswitch_0
        0xdb62f -> :sswitch_0
    .end sparse-switch
.end method

.method private setPreferredNetworkType()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredNetworkType:  mPrefNwMode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-static {v1, v2, v0, v3}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_2
    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v1, v1, v0

    if-ne v1, v5, :cond_3

    const/16 v1, 0xd

    const/4 v2, 0x3

    new-array v2, v2, [I

    aput v0, v2, v4

    aput v4, v2, v5

    const/4 v3, 0x2

    aput v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private setPreferredNetworkTypeDone(Landroid/os/Message;)Z
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v12, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v7, 0x1

    .local v7, "success":Z
    const/4 v3, 0x0

    .local v3, "finish":Z
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v8, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v8, [I

    move-object v1, v8

    check-cast v1, [I

    .local v1, "arg":[I
    aget v5, v1, v10

    .local v5, "phoneId":I
    aget v4, v1, v9

    .local v4, "nextPhoneCount":I
    aget v6, v1, v12

    .local v6, "retryCount":I
    const/16 v2, 0x7d0

    .local v2, "delay":I
    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v8, v8, Lcom/android/internal/telephony/CommandException;

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPreferredNetworkTypeDone(SUB"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "): Fail, retryCount:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    if-ge v6, v12, :cond_0

    const/4 v7, 0x0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    :goto_0
    if-eqz v7, :cond_1

    if-nez v5, :cond_3

    move v5, v9

    :goto_1
    add-int/lit8 v4, v4, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    :cond_1
    sget v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v4, v8, :cond_4

    const/16 v8, 0xd

    const/4 v11, 0x3

    new-array v11, v11, [I

    aput v5, v11, v10

    aput v4, v11, v9

    aput v6, v11, v12

    invoke-virtual {p0, v8, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    int-to-long v10, v2

    invoke-virtual {p0, v8, v10, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_2
    return v3

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPreferredNetworkTypeDone(SUB"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, "): Success"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v5, v10

    goto :goto_1

    :cond_4
    const-string v8, "setPreferredNetworkTypeDone Finish"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v3, 0x1

    goto :goto_2
.end method

.method private startTimeOut()V
    .locals 4

    .prologue
    const-string v0, "startTimeOut()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cancelTimeOut()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x7d0

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    const/4 v3, 0x1

    aput v3, v2, v0

    goto :goto_1

    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private updateCarrierServices(ILjava/lang/String;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "simState"    # Ljava/lang/String;

    .prologue
    sget-object v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .local v0, "configManager":Landroid/telephony/CarrierConfigManager;
    invoke-virtual {v0, p1, p2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    return-void
.end method

.method private updateCtcSimOn()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubInfoCount(Ljava/lang/String;)I

    move-result v0

    .local v0, "insertedSlotCount":I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    if-eqz v3, :cond_0

    sput-boolean v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "IS_CTC"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, "isctc1":I
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "IS_CTC2"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, "isctc2":I
    sget-boolean v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSimHotPlugIn:Z

    if-eqz v3, :cond_0

    sput-boolean v5, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSimHotPlugIn:Z

    if-ne v1, v6, :cond_0

    if-ne v2, v6, :cond_0

    sget v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimPlugInSlot:I

    if-nez v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v1    # "isctc1":I
    .end local v2    # "isctc2":I
    :cond_0
    :goto_0
    return-void

    .restart local v1    # "isctc1":I
    .restart local v2    # "isctc2":I
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone2_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v3, v3, v5

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    sget-object v3, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone1_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public static updateDDSChangeProperty()V
    .locals 3

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNeededUpdateDDSChanged:Z

    if-eqz v0, :cond_1

    const-string v0, "false"

    const-string v1, "persist.radio.defdataSIMchange"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v0

    sget v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PreDefaultDataSubId:I

    if-eq v0, v1, :cond_0

    const-string v0, "persist.radio.defdataSIMchange"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNeededUpdateDDSChanged:Z

    :cond_1
    return-void
.end method

.method private updateIccAvailability()V
    .locals 14

    .prologue
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "updateIccAvailability: Enter"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/SubscriptionHelper;->proceedToHandleIccEvent()Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "updateIccAvailability: radio is OFF/unavailable, ignore "

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    .local v9, "slotId":I
    :goto_1
    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v9, v11, :cond_0

    const/4 v4, 0x0

    .local v4, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v10, 0x0

    .local v10, "validApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .local v5, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v11, v9}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v3

    .local v3, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v6

    .local v6, "numApps":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v6, :cond_3

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v11, v12, :cond_8

    move-object v10, v0

    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .end local v2    # "i":I
    .end local v6    # "numApps":I
    :cond_4
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v11, v11, v9

    if-eq v11, v4, :cond_6

    const-string v11, "mIccRecords changed. Reregestering."

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v11, v11, v9

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v11, v11, v9

    invoke-virtual {v11, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForIccIdReady(Landroid/os/Handler;)V

    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v4, v11, v9

    :cond_6
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aget-object v7, v11, v9

    .local v7, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    aput-object v5, v11, v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Slot["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: New Card State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "Old Card State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v11

    if-nez v11, :cond_10

    iget-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    if-eqz v11, :cond_9

    const-string v11, "SubscriptionInfoUpdater"

    const-string v12, "updateIccAvailability: Returning NV mode "

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v7    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .restart local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v2    # "i":I
    .restart local v6    # "numApps":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "i":I
    .end local v6    # "numApps":I
    .restart local v7    # "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    :cond_9
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v11, v11, v9

    if-eqz v11, :cond_d

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v11, v11, v9

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIM"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hot plug out"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    const-string v11, "QCOM"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    :cond_a
    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_b

    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    if-nez v11, :cond_b

    const-string v11, "mHotSwapRemoved set true for hot plug out"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    :cond_b
    const-string v11, "ro.csc.countryiso_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "countryISO":Ljava/lang/String;
    const-string v11, "CN"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "HK"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "TW"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    :cond_c
    const-string v11, "QCOM"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    if-nez v11, :cond_d

    const-string v11, "mHotSwapDisable set true for hot plug out"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    .end local v1    # "countryISO":Ljava/lang/String;
    :cond_d
    const-string v11, "gsm.sim.state"

    const-string v12, "NOT_READY"

    invoke-static {v9, v11, v12}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "simState":Ljava/lang/String;
    const-string v11, "NOT_READY"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_e

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v12, ""

    aput-object v12, v11, v9

    :goto_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "New Card State = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", but simState:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", continue"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_e
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v11, v9

    goto :goto_4

    :cond_f
    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mFh:[Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v12, 0x0

    aput-object v12, v11, v9

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v12, ""

    aput-object v12, v11, v9

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    if-eqz v11, :cond_7

    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    if-nez v11, :cond_7

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto/16 :goto_3

    .end local v8    # "simState":Ljava/lang/String;
    :cond_10
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v11

    if-nez v11, :cond_7

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result v11

    if-eqz v11, :cond_7

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v11, v11, v9

    if-eqz v11, :cond_14

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v11, v11, v9

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SIM"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " hot plug in"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v12, v11, v9

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    const/4 v11, 0x1

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSimHotPlugIn:Z

    sput v9, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCurrentSimPlugInSlot:I

    const-string v11, "QCOM"

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_11

    const-string v11, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    :cond_11
    sget v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_14

    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_15

    const-string v11, "mHotSwapRemoved set false for hot plug in"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v11, v12, :cond_12

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v11, v12, :cond_13

    :cond_12
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->startTimeOut()V

    :cond_13
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v11

    if-nez v11, :cond_14

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/SubscriptionController;->setCalledUpdateUserPrefs(Z)V

    :cond_14
    :goto_5
    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(I)V

    goto/16 :goto_3

    :cond_15
    sget-boolean v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_16

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->cancelTimeOut()V

    goto :goto_5

    :cond_16
    const-string v11, "without hotswap & normal booting Case"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v11, v12, :cond_17

    sget-object v11, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCardState:[Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    sget-object v12, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v11, v12, :cond_14

    :cond_17
    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->startTimeOut()V

    goto :goto_5
.end method

.method private updateNetworkModeForChina()V
    .locals 34

    .prologue
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .local v27, "subStatus":[I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .local v18, "newNwMode":[I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .local v25, "subIds":[I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .local v19, "nwMode":[I
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    new-array v13, v0, [I

    .local v13, "isCTC":[I
    const/16 v28, -0x1

    .local v28, "updateSlot":I
    const/16 v29, 0x0

    .local v29, "updateSlotCount":I
    const/4 v4, 0x0

    .local v4, "activeSlotCount":I
    const/4 v15, 0x1

    .local v15, "isSimNotChange":Z
    const-string v30, "CHM"

    const-string v31, "ro.csc.sales_code"

    invoke-static/range {v31 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .local v14, "isCmcc":Z
    const/16 v16, 0x0

    .local v16, "needSetDefaultSubId":Z
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v24

    .local v24, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/16 v30, -0x1

    sput v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->syncPreferredNwModeFromDB()V

    const/4 v5, 0x0

    .local v5, "defaultSlot":I
    const/16 v21, 0x0

    .local v21, "primaryStackSlot":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v8, v0, :cond_3

    const/16 v30, 0x0

    aput v30, v13, v8

    const/16 v30, -0x1

    aput v30, v25, v8

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    sget-object v31, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v31, v31, v8

    const/16 v32, 0x0

    invoke-static/range {v30 .. v32}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v30

    aput v30, v27, v8

    const/16 v30, -0x1

    aput v30, v18, v8

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v30, v30, v8

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_0

    move v5, v8

    :cond_0
    aget v30, v27, v8

    if-eqz v30, :cond_1

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v8

    if-eqz v30, :cond_2

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v30, v30, v8

    const/16 v31, -0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v15, 0x0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v26

    .local v26, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v26, :cond_5

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/SubscriptionInfo;

    .local v23, "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v30

    aget v30, v27, v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v23    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_7
    if-eqz v4, :cond_4

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/telephony/SubscriptionInfo;

    .restart local v23    # "sub":Landroid/telephony/SubscriptionInfo;
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v22

    .local v22, "slotId":I
    const/4 v10, 0x0

    .local v10, "iccIdInt":I
    const/16 v17, 0x0

    .local v17, "needUpdateSlot":Z
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getNwMode()I

    move-result v30

    aput v30, v19, v22

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v30

    aput v30, v25, v22

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v4, v0, :cond_9

    const/16 v17, 0x1

    :cond_9
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_a

    :try_start_0
    invoke-virtual/range {v23 .. v23}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v30

    const/16 v31, 0x0

    const/16 v32, 0x6

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :cond_a
    :goto_4
    sparse-switch v10, :sswitch_data_0

    :cond_b
    :goto_5
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[updateNetworkModeForChina] "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ":"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", subId:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v25, v22

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", nwMode:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v19, v22

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", phoneOn:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v27, v22

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", isCTC:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v13, v22

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", isSimNotChange:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    aget v30, v27, v22

    if-eqz v30, :cond_8

    if-nez v15, :cond_8

    if-eqz v17, :cond_8

    add-int/lit8 v29, v29, 0x1

    move/from16 v28, v22

    goto/16 :goto_3

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/NumberFormatException;
    const/4 v10, 0x0

    goto :goto_4

    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :sswitch_0
    if-eqz v14, :cond_b

    const/16 v17, 0x1

    const/16 v16, 0x1

    goto :goto_5

    :sswitch_1
    if-eqz v14, :cond_b

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Common_SupportWcdmaFddLte"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_b

    const/16 v30, 0x1

    aput v30, v18, v22

    const/16 v17, 0x0

    goto/16 :goto_5

    :sswitch_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_b

    const-string v30, "ril.ICC_TYPE"

    const-string v31, "0"

    move/from16 v0, v22

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "iccType":Ljava/lang/String;
    const-string v30, "3"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_c

    const-string v30, "4"

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_d

    :cond_c
    const/16 v17, 0x1

    const/16 v30, 0x1

    aput v30, v13, v22

    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_b

    const/16 v30, 0x1

    move/from16 v0, v30

    if-le v4, v0, :cond_b

    const/16 v17, 0x0

    goto/16 :goto_5

    .end local v10    # "iccIdInt":I
    .end local v11    # "iccType":Ljava/lang/String;
    .end local v17    # "needUpdateSlot":Z
    .end local v22    # "slotId":I
    .end local v23    # "sub":Landroid/telephony/SubscriptionInfo;
    :cond_e
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_11

    const/4 v8, 0x0

    :goto_6
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v8, v0, :cond_11

    if-nez v8, :cond_10

    const-string v3, "IS_CTC"

    .local v3, "CtcKey":Ljava/lang/String;
    :goto_7
    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v30

    aget v31, v13, v8

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v30, "ril.isctc"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    aget v32, v13, v8

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, ""

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v8, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    aget v30, v13, v8

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_f

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v30, v30, v8

    const/16 v31, 0x0

    invoke-interface/range {v30 .. v31}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .end local v3    # "CtcKey":Ljava/lang/String;
    :cond_10
    const-string v3, "IS_CTC2"

    goto :goto_7

    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_12

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_RIL_Support75Mode"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_12

    const-string v30, "1"

    const/16 v31, 0x0

    const-string v32, "persist.radio.multisim.stackid"

    const-string v33, "0"

    invoke-static/range {v31 .. v33}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_16

    const/16 v21, 0x1

    :goto_8
    move/from16 v5, v21

    :cond_12
    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_15

    const/16 v28, -0x1

    const/4 v7, 0x0

    .local v7, "gsmOnlyCount":I
    const/4 v8, 0x0

    :goto_9
    move/from16 v0, v29

    if-ge v8, v0, :cond_13

    aget v30, v19, v8

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_17

    move/from16 v28, v8

    const/4 v7, 0x1

    :cond_13
    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v7, v0, :cond_14

    move/from16 v28, v5

    :cond_14
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[updateNetworkModeForChina] Step1, updateSlot:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", updateSlotCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .end local v7    # "gsmOnlyCount":I
    :cond_15
    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_20

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v4, v0, :cond_20

    if-nez v15, :cond_20

    const/4 v7, 0x0

    .restart local v7    # "gsmOnlyCount":I
    const/4 v8, 0x0

    :goto_a
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v8, v0, :cond_1a

    aget v30, v18, v8

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .end local v7    # "gsmOnlyCount":I
    :cond_16
    const/16 v21, 0x0

    goto :goto_8

    .restart local v7    # "gsmOnlyCount":I
    :cond_17
    aget v30, v19, v8

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_18

    add-int/lit8 v7, v7, 0x1

    :cond_18
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_19
    move/from16 v28, v8

    :cond_1a
    if-nez v7, :cond_1f

    const/4 v8, 0x0

    :goto_b
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v8, v0, :cond_1e

    aget v30, v25, v8

    invoke-virtual/range {v24 .. v24}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v31

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1b

    move v5, v8

    :cond_1b
    aget v30, v19, v8

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1c

    aget v30, v19, v8

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_1d

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    :goto_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    :cond_1d
    move/from16 v28, v8

    goto :goto_c

    :cond_1e
    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v7, v0, :cond_1f

    move/from16 v28, v5

    :cond_1f
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[updateNetworkModeForChina] Step2, updateSlot:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", gsmOnlyCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", defaultSlot:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .end local v7    # "gsmOnlyCount":I
    :cond_20
    const/16 v30, -0x1

    move/from16 v0, v28

    move/from16 v1, v30

    if-le v0, v1, :cond_24

    aget v30, v19, v28

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_21

    aget v30, v19, v28

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_22

    :cond_21
    const/16 v30, 0x9

    aput v30, v18, v28

    :cond_22
    if-nez v28, :cond_28

    const/16 v20, 0x1

    .local v20, "otherSlot":I
    :goto_d
    const/16 v30, 0x1

    aput v30, v18, v20

    if-eqz v16, :cond_23

    if-eqz v14, :cond_23

    aget v30, v25, v28

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSubId(I)V

    aget v30, v25, v28

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setDefaultSmsSubId(I)V

    :cond_23
    aget v30, v25, v28

    sput v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    aget v30, v13, v28

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_24

    move/from16 v0, v28

    move/from16 v1, v21

    if-eq v0, v1, :cond_24

    new-instance v12, Landroid/content/Intent;

    const-string v30, "com.samsung.intent.action.ACTION_CROSS_MAPPING"

    move-object/from16 v0, v30

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, "intent":Landroid/content/Intent;
    const-string v30, "state"

    add-int/lit8 v31, v28, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    move-object/from16 v0, v30

    invoke-virtual {v0, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v30, "[updateNetworkModeForChina] Send Intent: com.samsung.intent.action.ACTION_CROSS_MAPPING"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    .end local v12    # "intent":Landroid/content/Intent;
    .end local v20    # "otherSlot":I
    :cond_24
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[updateNetworkModeForChina] activeSlotCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", updateSlotCount:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", updateSlot:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, ", DataSubId:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget v31, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mMainStackSubId:I

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_e
    sget v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v30

    if-ge v8, v0, :cond_29

    aget v30, v25, v8

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-le v0, v1, :cond_26

    aget v30, v18, v8

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_25

    aget v30, v19, v8

    aput v30, v18, v8

    :cond_25
    aget v30, v18, v8

    aget v31, v19, v8

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_26

    aget v30, v25, v8

    aget v31, v18, v8

    move-object/from16 v0, v24

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    :cond_26
    aget v30, v18, v8

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_27

    sget-object v30, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v31, v18, v8

    aput v31, v30, v8

    :cond_27
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "[updateNetworkModeForChina] newNwMode["

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "]:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    aget v31, v18, v8

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_28
    const/16 v20, 0x0

    goto/16 :goto_d

    :cond_29
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNetworkType()V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xdb5e2 -> :sswitch_2
        0xdb628 -> :sswitch_0
        0xdb629 -> :sswitch_1
        0xdb62a -> :sswitch_0
        0xdb62b -> :sswitch_2
        0xdb62d -> :sswitch_2
        0xdb62e -> :sswitch_1
        0xdb62f -> :sswitch_0
        0xdb633 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateNwModesInSubIdTable(Z)V
    .locals 9
    .param p1, "override"    # Z

    .prologue
    const/4 v8, 0x0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v4

    .local v4, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v0, v6, :cond_2

    invoke-virtual {v4, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v5

    .local v5, "subIdList":[I
    if-eqz v5, :cond_1

    aget v6, v5, v8

    if-lez v6, :cond_1

    :try_start_0
    sget-object v6, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "preferred_network_mode"

    invoke-static {v6, v7, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "nwModeInDb":I
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateNwModesInSubIdTable: subIdList["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v5, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nwModeInDb:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    aget v6, v5, v8

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v2

    .local v2, "nwModeinSubIdTable":I
    if-nez p1, :cond_0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    :cond_0
    aget v6, v5, v8

    invoke-virtual {v4, v6, v1}, Lcom/android/internal/telephony/SubscriptionController;->setNwMode(II)V

    .end local v1    # "nwModeInDb":I
    .end local v2    # "nwModeinSubIdTable":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    sget v1, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .restart local v1    # "nwModeInDb":I
    goto :goto_1

    .end local v1    # "nwModeInDb":I
    .end local v3    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    .end local v5    # "subIdList":[I
    :cond_2
    return-void
.end method

.method private updateSimOnOff()V
    .locals 18

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v11

    .local v11, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v14, 0x0

    const-string v15, "gsm.sim.state"

    const-string v16, "ABSENT"

    invoke-static/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "telephonySimState":Ljava/lang/String;
    const/4 v14, 0x1

    const-string v15, "gsm.sim.state"

    const-string v16, "ABSENT"

    invoke-static/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "telephonySimState2":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone1_on"

    const/16 v16, -0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .local v5, "simDBvalue0":I
    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone2_on"

    const/16 v16, -0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .local v6, "simDBvalue1":I
    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "IS_CTC"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, "isctc":I
    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "IS_CTC2"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .local v4, "isctc2":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSimOnOff State1="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "State2="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simDBvalue0="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "simDBvalue1="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isctc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "isctc2="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const-string v14, "READY"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "READY"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    if-nez v5, :cond_0

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    const-string v14, "[IccCardProxy]slot1 card off"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :cond_0
    if-nez v6, :cond_1

    const/4 v14, 0x1

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    const-string v14, "[IccCardProxy]slot2 card off"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v14

    const-string v15, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v14, v15}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_2
    const/4 v14, 0x1

    if-ne v3, v14, :cond_7

    const/4 v14, 0x1

    if-ne v4, v14, :cond_7

    const-string v14, "READY"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    const-string v14, "READY"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    if-nez v5, :cond_5

    :cond_4
    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    :cond_5
    const/4 v14, 0x0

    const-string v15, "persist.radio.multisim.stackid"

    const-string v16, "-1"

    invoke-static/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .local v10, "stackid":I
    const-string v14, "1"

    const/4 v15, 0x1

    const-string v16, "persist.radio.multisim.stackid"

    const-string v17, "0"

    invoke-static/range {v15 .. v17}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v9, 0x1

    .local v9, "slot":I
    :goto_0
    const/4 v14, 0x1

    if-ne v10, v14, :cond_b

    const/4 v14, 0x0

    const-string v15, "gsm.sim.sixmode.slave"

    const-string v16, "true"

    invoke-static/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x1

    const-string v15, "gsm.sim.sixmode.slave"

    const-string v16, "false"

    invoke-static/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    sget-boolean v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    if-nez v14, :cond_7

    const/4 v14, 0x1

    if-ne v5, v14, :cond_7

    const/4 v14, 0x1

    if-ne v6, v14, :cond_7

    const/4 v14, 0x0

    const-string v15, "gsm.sim.sixmode.slave"

    const-string v16, "false"

    invoke-static/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "sixmodeslave":Ljava/lang/String;
    const/4 v14, 0x1

    const-string v15, "gsm.sim.sixmode.slave"

    const-string v16, "false"

    invoke-static/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "sixmodeslave2":Ljava/lang/String;
    const-string v14, "true"

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone1_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone2_on"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_6
    :goto_2
    new-instance v2, Landroid/content/Intent;

    const-string v14, "com.samsung.intent.action.ACTION_SIM_OFF"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const-string v14, "slot"

    invoke-virtual {v2, v14, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v14, 0x1

    sput-boolean v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isCheckingCTCSim:Z

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "sixmodeslave":Ljava/lang/String;
    .end local v8    # "sixmodeslave2":Ljava/lang/String;
    .end local v9    # "slot":I
    .end local v10    # "stackid":I
    :cond_7
    const/4 v14, 0x0

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v11, v14, v5}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    const/4 v14, 0x1

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v11, v14, v6}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    sget v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    if-ge v1, v14, :cond_d

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v15, 0x0

    aget v14, v14, v15

    const/16 v15, -0x63

    if-ne v14, v15, :cond_8

    if-nez v6, :cond_8

    const-string v14, "sim2only, sim2 off"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v14, 0x1

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone2_on"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    const/16 v15, -0x63

    if-ne v14, v15, :cond_9

    if-nez v5, :cond_9

    const-string v14, "sim1only, sim1 off"

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone1_on"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "i":I
    .restart local v10    # "stackid":I
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_0

    .restart local v9    # "slot":I
    :cond_b
    const/4 v14, 0x1

    const-string v15, "gsm.sim.sixmode.slave"

    const-string v16, "true"

    invoke-static/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v14, 0x0

    const-string v15, "gsm.sim.sixmode.slave"

    const-string v16, "false"

    invoke-static/range {v14 .. v16}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .restart local v7    # "sixmodeslave":Ljava/lang/String;
    .restart local v8    # "sixmodeslave2":Ljava/lang/String;
    :cond_c
    const-string v14, "true"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone2_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v14, 0x1

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-static {v14}, Landroid/telephony/SubscriptionManager;->deactivateSubId(I)V

    sget-object v14, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "phone1_on"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .end local v7    # "sixmodeslave":Ljava/lang/String;
    .end local v8    # "sixmodeslave2":Ljava/lang/String;
    .end local v9    # "slot":I
    .end local v10    # "stackid":I
    .restart local v1    # "i":I
    :cond_d
    return-void
.end method

.method private declared-synchronized updateSubscriptionInfoByIccId()V
    .locals 30

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v27, "ro.csc.countryiso_code"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "countryISO":Ljava/lang/String;
    const-string v27, "CN"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    const-string v27, "HK"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_0

    const-string v27, "TW"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1

    :cond_0
    sget-boolean v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_1

    const-string v27, "mHotSwapDisable = true return! so it can\'t update subscriptioninfo"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v27, "updateSubscriptionInfoByIccId:+ Start"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SubscriptionManager;->clearSubscriptionInfo()V

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v27

    if-ge v6, v0, :cond_2

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v28, 0x0

    aput v28, v27, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sget v8, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    .local v8, "insertedSimCount":I
    const/4 v9, 0x0

    .local v9, "insertedSimStatus":I
    const/4 v6, 0x0

    :goto_2
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v27

    if-ge v6, v0, :cond_4

    const-string v27, ""

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v28, v28, v6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_3

    add-int/lit8 v8, v8, -0x1

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v28, -0x63

    aput v28, v27, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    packed-switch v6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    or-int/lit8 v9, v9, 0x1

    goto :goto_3

    :pswitch_1
    or-int/lit8 v9, v9, 0x2

    goto :goto_3

    :pswitch_2
    or-int/lit8 v9, v9, 0x4

    goto :goto_3

    :cond_4
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "insertedSimCount = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const-string v27, "QCOM"

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    const-string v27, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v28

    const-string v29, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual/range {v28 .. v29}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    :cond_5
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_7

    const-string v27, "2"

    const-string v28, "1"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_7

    sget-boolean v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    if-eqz v27, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v27

    if-eqz v27, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubStatusForHotswapRemove([I)V

    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    new-instance v10, Landroid/content/Intent;

    const-string v27, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, "intent":Landroid/content/Intent;
    const-string v27, "android.permission.READ_PHONE_STATE"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .end local v5    # "countryISO":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v8    # "insertedSimCount":I
    .end local v9    # "insertedSimStatus":I
    .end local v10    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v27

    monitor-exit p0

    throw v27

    .restart local v5    # "countryISO":Ljava/lang/String;
    .restart local v6    # "i":I
    .restart local v8    # "insertedSimCount":I
    .restart local v9    # "insertedSimStatus":I
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v27

    sput v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PreDefaultDataSubId:I

    const/4 v7, 0x0

    .local v7, "index":I
    const/4 v6, 0x0

    :goto_4
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v27

    if-ge v6, v0, :cond_b

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v27, v27, v6

    const/16 v28, -0x63

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_9

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_9
    const/4 v7, 0x2

    add-int/lit8 v11, v6, 0x1

    .local v11, "j":I
    :goto_5
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v27

    if-ge v11, v0, :cond_8

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v27, v27, v11

    if-nez v27, :cond_a

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v27, v27, v6

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v28, v28, v11

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v28, 0x1

    aput v28, v27, v6

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aput v7, v27, v11

    add-int/lit8 v7, v7, 0x1

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .end local v11    # "j":I
    :cond_b
    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .local v4, "contentResolver":Landroid/content/ContentResolver;
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, "oldIccId":[Ljava/lang/String;
    const/4 v6, 0x0

    :goto_6
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v27

    if-ge v6, v0, :cond_10

    const/16 v27, 0x0

    aput-object v27, v16, v6

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    const/16 v28, 0x0

    sget-object v29, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v27

    move/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSubInfoUsingSlotIdWithCheck(IZLjava/lang/String;)Ljava/util/List;

    move-result-object v17

    .local v17, "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v17, :cond_e

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v27

    aput-object v27, v16, v6

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateSubscriptionInfoByIccId: oldSubId = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v27

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v27, v27, v6

    if-nez v27, :cond_c

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v27, v27, v6

    aget-object v28, v16, v6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_c

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v28, -0x1

    aput v28, v27, v6

    :cond_c
    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v27, v27, v6

    if-eqz v27, :cond_d

    new-instance v26, Landroid/content/ContentValues;

    const/16 v27, 0x1

    invoke-direct/range {v26 .. v27}, Landroid/content/ContentValues;-><init>(I)V

    .local v26, "value":Landroid/content/ContentValues;
    const-string v27, "sim_id"

    const/16 v28, -0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v26 .. v28}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v28, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "_id="

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/telephony/SubscriptionInfo;

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v29

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v26    # "value":Landroid/content/ContentValues;
    :cond_d
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6

    :cond_e
    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v27, v27, v6

    if-nez v27, :cond_f

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v28, -0x1

    aput v28, v27, v6

    :cond_f
    const-string v27, ""

    aput-object v27, v16, v6

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateSubscriptionInfoByIccId: No SIM in slot "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " last time"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_7

    .end local v17    # "oldSubInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_10
    const/4 v6, 0x0

    :goto_8
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v27

    if-ge v6, v0, :cond_12

    sget-boolean v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->SHIP_BUILD:Z

    if-eqz v27, :cond_11

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "oldIccId["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] = XXX, mIccId["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] = XXX"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_11
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "oldIccId["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-object v28, v16, v6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", mIccId["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v28, v28, v6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_9

    :cond_12
    const/4 v13, 0x0

    .local v13, "nNewCardCount":I
    const/4 v14, 0x0

    .local v14, "nNewSimStatus":I
    const/4 v6, 0x0

    :goto_a
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v27

    if-ge v6, v0, :cond_16

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateSubscriptionInfoByIccId: mInsertSimState["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v28, v28, v6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v27, v27, v6

    const/16 v28, -0x63

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_14

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateSubscriptionInfoByIccId: No SIM inserted in slot "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " this time"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    :cond_13
    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_14
    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v27, v27, v6

    if-lez v27, :cond_15

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v29, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v29, v29, v6

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    sget-object v29, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v29, v29, v6

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/SubscriptionController;->addSubInfoRecord(Ljava/lang/String;I)I

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "SUB"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    add-int/lit8 v28, v6, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " has invalid IccId"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :goto_c
    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v27, v27, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNewSim(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_13

    add-int/lit8 v13, v13, 0x1

    packed-switch v6, :pswitch_data_1

    :goto_d
    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v28, -0x2

    aput v28, v27, v6

    goto :goto_b

    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v28, v28, v6

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/SubscriptionController;->addSubInfoRecord(Ljava/lang/String;I)I

    goto :goto_c

    :pswitch_3
    or-int/lit8 v14, v14, 0x1

    goto :goto_d

    :pswitch_4
    or-int/lit8 v14, v14, 0x2

    goto :goto_d

    :pswitch_5
    or-int/lit8 v14, v14, 0x4

    goto :goto_d

    :cond_16
    const/16 v27, 0x1

    sput-boolean v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNeededUpdateDDSChanged:Z

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v27

    if-nez v27, :cond_17

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v21

    .local v21, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v22

    .local v22, "subId":I
    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "phone1_on"

    const/16 v29, -0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    .local v20, "phoneOnState":I
    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    const/16 v27, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v23

    .local v23, "subId2":I
    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string v28, "phone2_on"

    const/16 v29, -0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .local v18, "phone2OnState":I
    move-object/from16 v0, v21

    move/from16 v1, v23

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "slot1 subid is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " phone1 state is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "slot2 subid is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " phone2 state is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->setCalledUpdateUserPrefs(Z)V

    .end local v18    # "phone2OnState":I
    .end local v20    # "phoneOnState":I
    .end local v21    # "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    .end local v22    # "subId":I
    .end local v23    # "subId2":I
    :cond_17
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->refreshSubInfo()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_18

    const-string v27, "CTC"

    const-string v28, "ro.csc.sales_code"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_18

    const/16 v27, 0x1

    move/from16 v0, v27

    if-ne v8, v0, :cond_18

    const/16 v19, -0x1

    .local v19, "phoneId":I
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "insertedSimStatus = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    and-int/lit8 v27, v9, 0x1

    if-eqz v27, :cond_1b

    const/16 v19, 0x0

    :goto_e
    const/16 v27, -0x1

    move/from16 v0, v19

    move/from16 v1, v27

    if-le v0, v1, :cond_18

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "mPhoneOnKey["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] Set ON"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOnKey:[Ljava/lang/String;

    aget-object v28, v28, v19

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v19    # "phoneId":I
    :cond_18
    const/4 v6, 0x0

    :goto_f
    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v27

    if-ge v6, v0, :cond_1e

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v27, v27, v6

    const/16 v28, -0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_19

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v28, -0x3

    aput v28, v27, v6

    :cond_19
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateSubscriptionInfoByIccId: mInsertSimState["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "] = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    aget v28, v28, v6

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v27

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_1a

    const-string v27, "CTC"

    const-string v28, "ro.csc.sales_code"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_1a

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v22

    .local v22, "subId":[I
    const-string v27, "UNKNOWN"

    const-string v28, "gsm.sim.state"

    const-string v29, "UNKNOWN"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v0, v6, v1}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1d

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    const/16 v28, 0x0

    aget v28, v22, v28

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/SubscriptionController;->setSubState(II)I

    .end local v22    # "subId":[I
    :cond_1a
    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_f

    .restart local v19    # "phoneId":I
    :cond_1b
    and-int/lit8 v27, v9, 0x2

    if-eqz v27, :cond_1c

    const/16 v19, 0x1

    goto/16 :goto_e

    :cond_1c
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "else, insertedSimStatus = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    .end local v19    # "phoneId":I
    .restart local v22    # "subId":[I
    :cond_1d
    const-string v27, "PROPERTY_SIM_STATE UNKNOWN, ignore"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_10

    .end local v22    # "subId":[I
    :cond_1e
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v27

    if-eqz v27, :cond_28

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_20

    const-string v27, "CN"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1f

    const-string v27, "HK"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_1f

    const-string v27, "TW"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_20

    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateNetworkModeForChina()V

    :cond_20
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v27

    const-string v28, "CscFeature_RIL_SupportQcomCrossMapping"

    invoke-virtual/range {v27 .. v28}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCtcSimOn()V

    sget-boolean v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapRemoved:Z

    if-eqz v27, :cond_21

    sget-boolean v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mHotSwapDisable:Z

    if-nez v27, :cond_25

    const-string v27, "2"

    const-string v28, "1"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_25

    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/SubscriptionHelper;->updateNwMode()V

    :goto_11
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ModemStackController;->isStackReady()Z

    move-result v27

    if-eqz v27, :cond_22

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_22

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    :cond_22
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v24

    .local v24, "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-nez v24, :cond_2b

    const/4 v15, 0x0

    .local v15, "nSubCount":I
    :goto_13
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "updateSubscriptionInfoByIccId: nSubCount = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->isEnabled()Z

    move-result v27

    if-nez v27, :cond_23

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_23

    sget-object v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhoneOnKey:[Ljava/lang/String;

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_23
    const/4 v6, 0x0

    :goto_14
    if-ge v6, v15, :cond_2c

    move-object/from16 v0, v24

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/SubscriptionInfo;

    .local v25, "temp":Landroid/telephony/SubscriptionInfo;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v27

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v12

    .local v12, "msisdn":Ljava/lang/String;
    if-eqz v12, :cond_24

    new-instance v26, Landroid/content/ContentValues;

    const/16 v27, 0x1

    invoke-direct/range {v26 .. v27}, Landroid/content/ContentValues;-><init>(I)V

    .restart local v26    # "value":Landroid/content/ContentValues;
    const-string v27, "number"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v27, Landroid/telephony/SubscriptionManager;->CONTENT_URI:Landroid/net/Uri;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "_id="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v29

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .end local v26    # "value":Landroid/content/ContentValues;
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .end local v12    # "msisdn":Ljava/lang/String;
    .end local v15    # "nSubCount":I
    .end local v24    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    .end local v25    # "temp":Landroid/telephony/SubscriptionInfo;
    :cond_25
    const-string v27, "HotSwapRemoved State so it skip updateNwMode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_26
    const-string v27, "CTC"

    const-string v28, "ro.csc.sales_code"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_27

    const-string v27, "CTC don\'t need updateSubActivation in SubInfoRecordUpdater"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_27
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v29, 0x0

    invoke-virtual/range {v27 .. v29}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_12

    :cond_28
    const-string v27, "CTC"

    const-string v28, "ro.csc.sales_code"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_22

    sget v27, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_22

    const-string v27, "CN"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_29

    const-string v27, "HK"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_29

    const-string v27, "TW"

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_22

    :cond_29
    const-string v27, "CHM"

    const-string v28, "ro.csc.sales_code"

    invoke-static/range {v28 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2a

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNetworkForCmcc()V

    goto/16 :goto_12

    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateNetworkModeForChina()V

    goto/16 :goto_12

    .restart local v24    # "subInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_2b
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v15

    goto/16 :goto_13

    .restart local v15    # "nSubCount":I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v28, v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/SubscriptionController;->notifySubscriptionInfoChanged()V

    new-instance v10, Landroid/content/Intent;

    const-string v27, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    move-object/from16 v0, v27

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v10    # "intent":Landroid/content/Intent;
    const-string v27, "android.permission.READ_PHONE_STATE"

    const/16 v28, -0x1

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-static {v10, v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    const-string v27, "updateSubscriptionInfoByIccId:- SsubscriptionInfo update complete"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const-string v0, "[dispose]"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v0, "SubscriptionInfoUpdater:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    :pswitch_0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unknown msg:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .local v6, "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;

    .local v21, "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    move/from16 v20, v0

    .local v20, "slotId":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    add-int/lit8 v23, v20, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " reason = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_7

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [B

    move-object/from16 v9, v22

    check-cast v9, [B

    .local v9, "data":[B
    const-string v22, ""

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v23, v23, v20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mIccId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] is Null so iccid will be update. mNeedUpdate setted true"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    :cond_1
    const-string v22, "ro.csc.countryiso_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "countryISO":Ljava/lang/String;
    const-string v22, "ro.csc.sales_code"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .local v19, "salesCode":Ljava/lang/String;
    const-string v22, "CN"

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    const-string v22, "OPS"

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    :cond_2
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/16 v23, 0x0

    array-length v0, v9

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v9, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v22, v20

    .end local v8    # "countryISO":Ljava/lang/String;
    .end local v9    # "data":[B
    .end local v19    # "salesCode":Ljava/lang/String;
    :goto_1
    sget-boolean v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->SHIP_BUILD:Z

    if-eqz v22, :cond_8

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mIccId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] = XXX"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    :goto_2
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mNeedUpdate = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "mWaitOtherSlot = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-boolean v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    sget-boolean v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    if-nez v22, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    :cond_3
    if-eqz v21, :cond_0

    const-string v22, ""

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    sget-boolean v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    if-nez v22, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Delayed Broadcasting for waiting another SIM card during ICC Query. slot : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlotId:I

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReason:Ljava/lang/String;

    new-instance v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$6;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    const-wide/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    const-string v22, ""

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v23, v23, v20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    const-string v22, "LOCKED"

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    .restart local v8    # "countryISO":Ljava/lang/String;
    .restart local v9    # "data":[B
    .restart local v19    # "salesCode":Ljava/lang/String;
    :cond_4
    array-length v0, v9

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v9, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->isIccIdHasChar([BI)I

    move-result v22

    const/16 v23, 0xff

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/16 v23, 0x0

    array-length v0, v9

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v9, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->ICCIDbcdToString([BII)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v22, v20

    goto/16 :goto_1

    :cond_5
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/16 v23, 0x0

    array-length v0, v9

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-static {v9, v0, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v22, v20

    goto/16 :goto_1

    .end local v8    # "countryISO":Ljava/lang/String;
    .end local v9    # "data":[B
    .end local v19    # "salesCode":Ljava/lang/String;
    :cond_6
    const-string v22, "Null ar"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v23, ""

    aput-object v23, v22, v20

    goto/16 :goto_1

    :cond_7
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const/16 v23, 0x0

    aput-object v23, v22, v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Query IccId fail: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " so Retry read ICCID after 1s"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v22, 0xc

    const/16 v23, -0x1

    const-string v24, ""

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v20

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v22

    const-wide/16 v24, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mIccId["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aget-object v23, v23, v20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v22, "LOCKED"

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlotId:I

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReason:Ljava/lang/String;

    new-instance v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater$7;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater$7;-><init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V

    const-wide/16 v24, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_3

    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "slotId":I
    .end local v21    # "uObj":Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
    :pswitch_2
    const-string v22, "EVENT_ICC_CHANGED"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "mIsSystemShutdown: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIsSystemShutdown:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", ignore EVENT_ICC_CHANGED"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateIccAvailability()V

    goto/16 :goto_0

    :pswitch_3
    const-string v22, "EVENT_STACK_READY"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v22

    if-eqz v22, :cond_0

    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionHelper;->getInstance()Lcom/android/internal/telephony/SubscriptionHelper;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mInsertSimState:[I

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/android/internal/telephony/SubscriptionHelper;->updateSubActivation([IZ)V

    goto/16 :goto_0

    :pswitch_4
    const-string v22, "EVENT_GET_NETWORK_SELECTION_MODE_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/AsyncResult;

    .restart local v6    # "ar":Landroid/os/AsyncResult;
    iget-object v0, v6, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    .local v20, "slotId":Ljava/lang/Integer;
    iget-object v0, v6, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    if-nez v22, :cond_c

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    iget-object v0, v6, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    move-object/from16 v14, v22

    check-cast v14, [I

    .local v14, "modes":[I
    const/16 v22, 0x0

    aget v22, v14, v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_0

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v23

    aget-object v22, v22, v23

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v14    # "modes":[I
    :cond_c
    const-string v22, "EVENT_GET_NETWORK_SELECTION_MODE_DONE: error getting network mode."

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "slotId":Ljava/lang/Integer;
    :pswitch_5
    const-string v22, "EVENT_SIM_LOADED"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLoaded(I)V

    goto/16 :goto_0

    :pswitch_6
    const-string v22, "EVENT_SIM_ABSENT"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimAbsent(I)V

    goto/16 :goto_0

    :pswitch_7
    const-string v22, "EVENT_SIM_LOCKED"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimLocked(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const-string v22, "EVENT_SIM_UNKNOWN"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimUnknown(I)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const-string v23, "UNKNOWN"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v22, "EVENT_SIM_IO_ERROR"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleSimIoError(I)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    const-string v23, "CARD_IO_ERROR"

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateCarrierServices(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleMessage : <EVENT_QUERY_ICCID_DONE> SIM "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->queryIccId(ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    const-string v22, "handleMessage : <EVENT_SIM_ICCID_NOTI> SIM "

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .local v13, "lResult":Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .local v11, "index":I
    if-ltz v11, :cond_0

    sget v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->PROJECT_SIM_NUM:I

    move/from16 v0, v22

    if-ge v11, v0, :cond_0

    iget-object v12, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    .local v12, "lIccId":Ljava/lang/String;
    const-string v22, "00000000000000000000"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    aput-object v12, v22, v11

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto/16 :goto_0

    .end local v11    # "index":I
    .end local v12    # "lIccId":Ljava/lang/String;
    .end local v13    # "lResult":Landroid/os/AsyncResult;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, [I

    move-object/from16 v7, v22

    check-cast v7, [I

    .local v7, "arg":[I
    const/16 v22, 0x0

    aget v16, v7, v22

    .local v16, "phoneId":I
    const/16 v22, 0x1

    aget v15, v7, v22

    .local v15, "nextPhoneCount":I
    const/16 v22, 0x2

    aget v18, v7, v22

    .local v18, "retryCount":I
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "setPreferredNetworkType(SUB"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") nwMode:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v23, v23, v16

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", cmdSendCount:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", retryCount:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v22, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .local v17, "resp":Landroid/os/Message;
    sget-object v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->sCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v22, v22, v16

    sget-object v23, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mPrefNwMode:[I

    aget v23, v23, v16

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v7    # "arg":[I
    .end local v15    # "nextPhoneCount":I
    .end local v16    # "phoneId":I
    .end local v17    # "resp":Landroid/os/Message;
    .end local v18    # "retryCount":I
    :pswitch_d
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->setPreferredNetworkTypeDone(Landroid/os/Message;)Z

    move-result v10

    .local v10, "finish":Z
    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/SubscriptionController;->updateUserPrefs(Z)V

    goto/16 :goto_0

    .end local v10    # "finish":Z
    :pswitch_e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "EVENT_WAIT_HOTSWAP_INSERT_FINISHED mNeedUpdate: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    const/16 v22, 0x0

    sput-boolean v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitOtherSlot:Z

    const/16 v22, 0x1

    sput-boolean v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mWaitFinishFlag:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    move/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    goto/16 :goto_0

    :pswitch_f
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "handleMessage : <EVENT_SURVEY_LOG_WAIT> SIM "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x1

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    sget-boolean v22, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->ENABLE_SURVEY_MODE:Z

    if-eqz v22, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->insertLogforSimInfo(I)V

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v22

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/internal/telephony/SubscriptionController;->insertLogforDataSubId(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
    .end packed-switch
.end method

.method public setDisplayNameForNewSub(Ljava/lang/String;II)V
    .locals 8
    .param p1, "newSubName"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "newNameSource"    # I

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .local v2, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getNameSource()I

    move-result v0

    .local v0, "oldNameSource":I
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "oldSubName":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[setDisplayNameForNewSub] subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldSimName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newSubName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newNameSource = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    int-to-long v6, p3

    invoke-virtual {v3, p1, v4, v6, v7}, Landroid/telephony/SubscriptionManager;->setDisplayName(Ljava/lang/String;IJ)I

    .end local v0    # "oldNameSource":I
    .end local v1    # "oldSubName":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SubInfo not created yet"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSubIdForNV(I)V
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x1

    sget-object v0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mIccId:[Ljava/lang/String;

    const-string v1, "FFFFFFFFFFFFFFFFFFFF"

    aput-object v1, v0, p1

    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mNeedUpdate:Z

    const-string v0, "[updateSubIdForNV]+ Start"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isAllIccIdQueryDone()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[updateSubIdForNV]+ updating"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateSubscriptionInfoByIccId()V

    iput-boolean v2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->isNVSubAvailable:Z

    :cond_0
    return-void
.end method
