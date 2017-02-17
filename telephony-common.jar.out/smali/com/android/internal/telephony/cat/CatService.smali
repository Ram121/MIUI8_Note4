.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_RIL_CONNECTED:I = 0x6f

.field static final EVENT_SEND_CALL_SCREEN_INTENT:I = 0x6e

.field static final EVENT_USSD_COMPLETE:I = 0x64

.field protected static final MSG_ID_ALPHA_NOTIFY:I = 0x9

.field static final MSG_ID_BIP_TERMINAL_RESPONSE:I = 0x6d

.field static final MSG_ID_CALL_CONTROL_RESULT:I = 0x69

.field protected static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_CALL_STATUS:I = 0x18

.field static final MSG_ID_EVENT:I = 0x6a

.field protected static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field protected static final MSG_ID_ICC_CHANGED:I = 0x8

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field private static final MSG_ID_ICC_REFRESH:I = 0x1e

.field static final MSG_ID_PHONE_DISCONNECT:I = 0x6b

.field protected static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RELEASE_COMPLETE_MESSAGE:I = 0x65

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SEND_DTMF_PAUSE:I = 0x6c

.field static final MSG_ID_SEND_DTMF_RESULT:I = 0x67

.field static final MSG_ID_SEND_SMS_RESULT:I = 0x68

.field protected static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field static final MSG_ID_STK_ALPHA_ID:I = 0x70

.field static final MSG_ID_TIMEOUT:I = 0x66

.field private static final NOT_IN_USE:I = 0x0

.field static final SIMNUM:Ljava/lang/String; = "simnum"

.field static final SIM_FILE_UPDATE:I = 0x0

.field static final SIM_INIT:I = 0x1

.field static final SIM_NUM1:I = 0x1

.field static final SIM_NUM2:I = 0x2

.field static final SIM_RESET:I = 0x2

.field static final SIM_RESET_FOR_SAP:I = 0x3

.field static final SIM_SLOT1:I = 0x0

.field static final SIM_SLOT2:I = 0x1

.field private static final STK2_NOTIFICATION_ID:I = 0x1bc

.field static final STK_DEFAULT:Ljava/lang/String; = "Default Message"

.field private static final STK_NOTIFICATION_ID:I = 0x14d

.field static final STK_REFRESH:Ljava/lang/String; = "default refresh..."

.field static final STK_RESET:Ljava/lang/String; = "default reset..."

.field static final STK_SENDING:Ljava/lang/String; = "null alphaId, default sending..."

.field public static final TYPE_STK:I = 0x0

.field public static final TYPE_STK2:I = 0x1

.field public static final TYPE_UTK:I = 0x2

.field public static final TYPE_UTK2:I = 0x3

.field private static final WAITING_ACTIVATE_RESULT:I = 0x6

.field private static final WAITING_ACTIVATE_RESULT_TIME:I = 0x2710

.field private static final WAITING_RELEASE_COMPLETE:I = 0x1

.field private static final WAITING_RELEASE_COMPLETE_TIME:I = 0x7530

.field static final WAITING_SEND_DTMF:I = 0x5

.field static final WAITING_SEND_DTMF_TIME:I = 0xdac

.field private static final WAITING_SETUP_CALL:I = 0x4

.field private static final WAITING_SETUP_CALL_CONNECTED_RESULT:I = 0x8

.field private static final WAITING_SETUP_CALL_CONNECTED_TIME:I = 0x7d0

.field private static final WAITING_SETUP_CALL_DISCONNECT_RESULT:I = 0x7

.field private static final WAITING_SETUP_CALL_DISCONNECT_TIME:I = 0x7d0

.field private static final WAITING_SETUP_CALL_HOLD_RESULT:I = 0x3

.field private static final WAITING_SETUP_CALL_HOLD_RESULT_TIME:I = 0x1388

.field private static final WAITING_SETUP_CALL_TIME:I = 0x2710

.field private static final WAITING_SMS_RESULT:I = 0x2

.field private static final WAITING_SMS_RESULT_TIME:I = 0xea60

.field private static final WAITING_USSD_ACTION_REQUIRE_TIME:I = 0xea60

.field private static final WAKE_LOCK_TIMEOUT:I = 0xfde8

.field private static is_stk_icon_label_update:Z

.field static mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

.field private static mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private static mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static sInstance:[Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field alpha_id_display:Ljava/lang/String;

.field private bBIPSuccess:Z

.field disabledCmdList:[Ljava/lang/String;

.field disabledProactiveCmd:Ljava/lang/String;

.field private isSetupMenuByUser:Z

.field private isTerminalResponseForSEUPMENU:Z

.field private isUsingBackUpCmd:Z

.field private mCallControlResultCode:I

.field private mCallType:I

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mConfigNetworkTypeCapability:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

.field private mGetUiccVerHandler:Landroid/os/Handler;

.field private mGetUiccVerRunnable:Ljava/lang/Runnable;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAPHandlingBip:Z

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mSendTerminalResponseExpectedByCallSetup:Z

.field private mSetupCallDisc:Z

.field private mSlotId:I

.field private mStkAppInstalled:Z

.field private mTimeoutDest:I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private stkRefreshReset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    .line 290
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 291
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/IccSmsInterfaceManager;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 296
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    .line 297
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    .line 311
    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 375
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 6
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p7, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p8, "slotId"    # I

    .prologue
    .line 464
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 300
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 301
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 306
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 307
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 309
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    .line 310
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    .line 315
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 376
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z

    .line 377
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    .line 379
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    .line 380
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    .line 381
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 382
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    .line 384
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    .line 385
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->isSetupMenuByUser:Z

    .line 386
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    .line 393
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 396
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    .line 398
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 446
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 450
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 451
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAPHandlingBip:Z

    .line 454
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mGetUiccVerHandler:Landroid/os/Handler;

    .line 455
    new-instance v3, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mGetUiccVerRunnable:Ljava/lang/Runnable;

    .line 466
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    .line 470
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Service: Input parameters must not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 473
    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    .line 474
    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    .line 475
    iput p8, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    .line 476
    new-instance v3, Landroid/os/HandlerThread;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cat Telephony service"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 477
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 479
    iput-object p7, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 483
    invoke-static {p0, p5, p8}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 484
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v3, :cond_2

    .line 485
    const-string v3, "Null RilMessageDecoder instance"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 488
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->start()V

    .line 491
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 492
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 493
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 494
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 497
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x1e

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 498
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 500
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x65

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 501
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x67

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnSendDTMFResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 502
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x68

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 503
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x69

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 504
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x6f

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 505
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v4, 0x6b

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 507
    const-string v3, "CTC"

    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "false"

    const-string v4, "ro.ril.stk_qmi_ril"

    const-string v5, "false"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 513
    :cond_3
    const/4 v3, 0x2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v3, v4, :cond_4

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 514
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v4, 0x18

    const/4 v5, 0x0

    invoke-interface {v3, p0, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallStatusResult(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 515
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallControlResult(Landroid/os/Handler;)V

    .line 516
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 518
    :cond_5
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object p3, v3, v4

    .line 519
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object p2, v3, v4

    .line 521
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_7

    .line 522
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 523
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v3

    aput-object v3, v4, v5

    .line 527
    :goto_1
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v3, v3, v4

    if-nez v3, :cond_7

    .line 528
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "mIccSms should not be null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 525
    :cond_6
    sget-object v4, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v3

    aput-object v3, v4, v5

    goto :goto_1

    .line 531
    :cond_7
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    .line 532
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->isSetupMenuByUser:Z

    .line 538
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v3, v3, v4

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForRecordsLoaded slotid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v3, v3, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 545
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 546
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 549
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->createWakelock()V

    .line 550
    new-instance v3, Lcom/android/internal/telephony/cat/CatBIPManager;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {v3, p4, p7, p0, v4}, Lcom/android/internal/telephony/cat/CatBIPManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cat/CatService;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    .line 553
    const-string v3, "true"

    const-string v4, "ro.ril.stk_qmi_ril"

    const-string v5, "true"

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 555
    const/4 v2, 0x0

    .line 556
    .local v2, "stkProp":Ljava/lang/String;
    const/4 v3, 0x2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v3, v4, :cond_9

    .line 557
    const-string v2, "gsm.UTK_SETUP_MENU"

    .line 563
    :goto_2
    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 564
    .local v0, "isRestart":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 565
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->loadBackUpProactiveCmd()Lcom/android/internal/telephony/cat/RilMessage;

    move-result-object v1

    .line 566
    .local v1, "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    if-eqz v1, :cond_8

    .line 567
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 568
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 575
    .end local v0    # "isRestart":Ljava/lang/String;
    .end local v1    # "rilMsg":Lcom/android/internal/telephony/cat/RilMessage;
    .end local v2    # "stkProp":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    .line 577
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Running CAT service on Slotid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". PackageType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". STK app installed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_DisableSimToolKitCmds"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->disabledProactiveCmd:Ljava/lang/String;

    .line 583
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->disabledProactiveCmd:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 586
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigNetworkTypeCapability"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mConfigNetworkTypeCapability:Ljava/lang/String;

    .line 587
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mConfigNetworkTypeCapability:Ljava/lang/String;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mConfigNetworkTypeCapability:Ljava/lang/String;

    const-string v4, "TMO"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_3
    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAPHandlingBip:Z

    goto/16 :goto_0

    .line 558
    .restart local v2    # "stkProp":Ljava/lang/String;
    :cond_9
    const/4 v3, 0x3

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v3, v4, :cond_a

    .line 559
    const-string v2, "gsm.UTK_SETUP_MENU2"

    goto/16 :goto_2

    .line 561
    :cond_a
    const-string v3, "gsm.STK_SETUP_MENU"

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 587
    .end local v2    # "stkProp":Ljava/lang/String;
    :cond_b
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private SetupCallFromStk(Ljava/lang/String;)V
    .locals 14
    .param p1, "dialNum"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x2710

    const/4 v12, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3782
    const-string v0, "SetupCallFromStk()"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3783
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 3784
    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3786
    .local v9, "intent":Landroid/content/Intent;
    if-nez v9, :cond_1

    .line 3787
    const-string v0, "fail to make call intent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3788
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 3838
    .end local v9    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 3791
    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v0, "simSlot"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3792
    const-string v0, "simnum"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3793
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telecom/TelecomManager;

    .line 3795
    .local v11, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v11}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    .line 3796
    .local v6, "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3797
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3799
    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 3801
    :try_start_0
    const-string v0, "*************call intent for CDMA 2"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3802
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3833
    .end local v6    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "telecomManager":Landroid/telecom/TelecomManager;
    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 3837
    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    goto :goto_0

    .line 3803
    .restart local v6    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v11    # "telecomManager":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v7

    .line 3804
    .local v7, "e":Landroid/content/ActivityNotFoundException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityNotFoundException 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3806
    .end local v6    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_4

    .line 3807
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 3809
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "tel"

    invoke-static {v1, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3810
    .restart local v9    # "intent":Landroid/content/Intent;
    if-nez v9, :cond_3

    .line 3811
    const-string v0, "fail to make call intent from stk"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3812
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 3815
    :cond_3
    const-string v0, "simSlot"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3816
    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3818
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 3819
    :catch_1
    move-exception v7

    .line 3820
    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityNotFoundException 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3825
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v8, 0x0

    .line 3826
    .local v8, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v1, 0x1040277

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .line 3827
    .local v10, "message":Ljava/lang/CharSequence;
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3828
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method private StkAppUnstall()V
    .locals 3

    .prologue
    .line 1543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StkAppUnstall on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1545
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1547
    const/4 v0, 0x0

    .line 1549
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1550
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.stk2.remove"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1555
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1556
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1557
    return-void

    .line 1552
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.stk.remove"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method static synthetic access$000()[Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    .line 284
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    return v0
.end method

.method private broadcastAlphaMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "alphaString"    # Ljava/lang/String;

    .prologue
    .line 2525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting CAT Alpha message from card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2526
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.alpha_notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2527
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2528
    const-string v1, "alpha_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2529
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2530
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2531
    return-void
.end method

.method private broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 6
    .param p1, "cardState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .param p2, "iccRefreshState"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    .line 2491
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.icc_status_change"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2492
    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v3, :cond_4

    const/4 v0, 0x1

    .line 2494
    .local v0, "cardPresent":Z
    :goto_0
    if-eqz p2, :cond_0

    .line 2496
    const-string v3, "refresh_result"

    iget v4, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending IccResult with Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2502
    :cond_0
    const-string v3, "card_status"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending Card Status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cardPresent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2506
    const-string v3, "NOT_RESTART"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NOT_RESTART"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ConfigOPstyleSIMdetectDialog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2508
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v3, :cond_3

    if-nez v0, :cond_3

    .line 2509
    const/4 v2, 0x0

    .line 2510
    .local v2, "stkProp":Ljava/lang/String;
    const-string v3, "SIM Remove or absent. STK menu removing..."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2511
    const-string v3, "gsm.STK_SETUP_MENU"

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2512
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2513
    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2515
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->StkAppUnstall()V

    .line 2519
    .end local v2    # "stkProp":Ljava/lang/String;
    :cond_3
    const-string v3, "SLOT_ID"

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2521
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2522
    return-void

    .line 2492
    .end local v0    # "cardPresent":Z
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 1499
    const/4 v0, 0x0

    .line 1501
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1502
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.stk2.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1508
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1509
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1510
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending CmdMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on slotid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PackageType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1511
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1512
    return-void

    .line 1504
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private byteToBCD(I)B
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 3970
    if-ltz p1, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    .line 3971
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Err: byteToBCD conversion Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Value has to be between 0 and 99"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3973
    const/4 v0, 0x0

    .line 3975
    :goto_0
    return v0

    :cond_1
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v1, p1, 0xa

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method private cancelTimeOut()V
    .locals 1

    .prologue
    .line 3053
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(I)V

    .line 3054
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    .line 3055
    return-void
.end method

.method private createWakelock()V
    .locals 3

    .prologue
    .line 3841
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3842
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "STKService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3843
    return-void
.end method

.method private displayChannelStatusParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    .line 3514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/android/internal/telephony/cat/GetChannelDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/GetChannelDataParams;->mChannelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3515
    return-void
.end method

.method private displayCloseChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    .line 3493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/CloseChannelParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Close Channel Mode is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/CloseChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Text Message is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3496
    return-void
.end method

.method private displayOpenChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 7
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    .line 3450
    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    .local v1, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDescription;
    move-object v5, p1

    .line 3451
    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v4, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    .line 3453
    .local v4, "transportLevel":Lcom/android/internal/telephony/cat/TransportLevel;
    if-eqz v1, :cond_1

    .line 3454
    const-string v5, "The BearerDescription is: "

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Bearer Type is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    .line 3456
    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-boolean v0, v5, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 3457
    .local v0, "bearerDefault":Z
    if-nez v0, :cond_0

    .line 3458
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Buffer Size is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Network Access Name is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3460
    const-string v5, "The Bearer Mode Parameters are :"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is On Demand : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is Auto Reconnect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is Background Mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The User Name is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3465
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The User Password is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3473
    .end local v0    # "bearerDefault":Z
    :goto_0
    if-eqz v4, :cond_3

    .line 3474
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Transport Level Protocol is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3475
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Port Number is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    .line 3476
    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v2, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    .line 3477
    .local v2, "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    if-eqz v2, :cond_2

    .line 3478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Data Destination Address Type is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    .line 3479
    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-object v3, v5, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    .line 3480
    .local v3, "dd":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Data Destination Address is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3488
    .end local v2    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    .end local v3    # "dd":[B
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Text Message is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v6, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3489
    return-void

    .line 3467
    .restart local v0    # "bearerDefault":Z
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Network Access Name for defaultbearer is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3470
    .end local v0    # "bearerDefault":Z
    :cond_1
    const-string v5, "The BearerDescription is: null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3482
    .restart local v2    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :cond_2
    const-string v5, "The Data Destination Address is: null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 3485
    .end local v2    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :cond_3
    const-string v5, "The Transport Level is: null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private displayReceiveDataParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    .line 3500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel Data Length is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget-byte v0, v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Text Message is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3503
    return-void
.end method

.method private displaySendDataParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    .line 3507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendDataParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel Data is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendDataParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Send Immediate is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/android/internal/telephony/cat/SendDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3510
    return-void
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;
    .param p4, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1822
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .line 1823
    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    .line 1824
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    .line 1841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1847
    :cond_0
    :goto_0
    return-void

    .line 1829
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    .line 1831
    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    .line 1835
    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1837
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    .line 1845
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1824
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destinationId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    .prologue
    .line 1924
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1927
    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .line 1928
    .local v8, "tag":I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1931
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1934
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1935
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1936
    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1937
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1941
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_NTTSTK"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1943
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit8 v8, v9, 0x0

    .line 1947
    :goto_0
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1948
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1949
    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1950
    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1964
    packed-switch p1, :pswitch_data_0

    .line 1980
    :goto_1
    :pswitch_0
    if-eqz p4, :cond_1

    .line 1981
    move-object v0, p4

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_1

    aget-byte v1, v0, v4

    .line 1982
    .local v1, "b":B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1981
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1946
    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    goto :goto_0

    .line 1966
    :pswitch_1
    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string v10, " Sending Idle Screen Available event download to ICC"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1969
    :pswitch_2
    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string v10, " Sending Language Selection event download to ICC"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1970
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    .line 1971
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1973
    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 1986
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 1989
    .local v7, "rawData":[B
    array-length v9, v7

    add-int/lit8 v5, v9, -0x2

    .line 1990
    .local v5, "len":I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    .line 1992
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1994
    .local v3, "hexString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ENVELOPE COMMAND: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1996
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1997
    return-void

    .line 1964
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;

    .prologue
    .line 1850
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .line 1852
    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1853
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1854
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1855
    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1856
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2006
    const/4 v1, 0x0

    .line 2007
    .local v1, "slotId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 2008
    .local v0, "sControl":Lcom/android/internal/telephony/SubscriptionController;
    if-eqz v0, :cond_0

    .line 2009
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v1

    .line 2013
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2014
    :cond_1
    const/4 v1, 0x0

    .line 2016
    :cond_2
    invoke-static {v4, v4, v4, v4, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2027
    invoke-static {v0, v0, v0, v0, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/cat/CatService;
    .locals 4
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 594
    const/4 v1, 0x0

    .line 595
    .local v1, "slotId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 596
    .local v0, "sControl":Lcom/android/internal/telephony/SubscriptionController;
    if-eqz v0, :cond_1

    .line 598
    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v1

    .line 600
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 601
    :cond_0
    const/4 v1, 0x0

    .line 605
    :cond_1
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 14
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "slotId"    # I

    .prologue
    .line 622
    const/4 v3, 0x0

    .line 623
    .local v3, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v6, 0x0

    .line 624
    .local v6, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v4, 0x0

    .line 625
    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p2, :cond_0

    .line 629
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 630
    if-eqz v3, :cond_0

    .line 631
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v6

    .line 632
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 636
    :cond_0
    if-ltz p4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    move/from16 v0, p4

    if-lt v0, v1, :cond_2

    .line 637
    :cond_1
    const/4 v1, 0x0

    .line 673
    :goto_0
    return-object v1

    .line 641
    :cond_2
    sget-object v12, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v12

    .line 642
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_3

    .line 643
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .line 644
    .local v11, "simCount":I
    new-array v1, v11, [Lcom/android/internal/telephony/cat/CatService;

    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    .line 645
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_3

    .line 646
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const/4 v2, 0x0

    aput-object v2, v1, v10

    .line 645
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 649
    .end local v10    # "i":I
    .end local v11    # "simCount":I
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p4

    if-nez v1, :cond_7

    .line 650
    if-eqz p0, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    if-eqz v6, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    .line 652
    :cond_4
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 674
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 655
    :cond_5
    :try_start_1
    sget-object v13, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    new-instance v1, Lcom/android/internal/telephony/cat/CatService;

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)V

    aput-object v1, v13, p4

    .line 673
    :cond_6
    :goto_2
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p4

    monitor-exit v12

    goto :goto_0

    .line 656
    :cond_7
    if-eqz v4, :cond_6

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p4

    if-eq v1, v4, :cond_6

    .line 657
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p4

    if-eqz v1, :cond_8

    .line 658
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 660
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p4

    if-eqz v1, :cond_9

    .line 661
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 664
    :cond_9
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v4, v1, p4

    .line 665
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v3, v1, p4

    .line 667
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p4

    const/16 v5, 0x14

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v5, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 669
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerForRecordsLoaded slotid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " instance:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p4

    const/4 v5, 0x7

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v5, v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static getPackageType(I)I
    .locals 5
    .param p0, "slot"    # I

    .prologue
    const/4 v4, 0x1

    .line 3980
    const-string v2, "ril.ICC_TYPE"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3981
    .local v0, "mIccType":Ljava/lang/String;
    move v1, p0

    .line 3982
    .local v1, "mPackageType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_9

    .line 3983
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3984
    if-nez p0, :cond_1

    .line 3985
    const/4 v1, 0x2

    .line 4029
    :cond_0
    :goto_0
    return v1

    .line 3986
    :cond_1
    if-ne p0, v4, :cond_0

    .line 3987
    const/4 v1, 0x1

    goto :goto_0

    .line 3990
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3993
    :cond_3
    if-nez p0, :cond_6

    .line 3994
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3995
    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    .line 3998
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    .line 4002
    :cond_6
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4003
    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    .line 4006
    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    .line 4011
    :cond_9
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4012
    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4013
    :cond_a
    const/4 v1, 0x0

    goto :goto_0

    .line 4014
    :cond_b
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4015
    :cond_c
    const/4 v1, 0x2

    goto :goto_0

    .line 4018
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4021
    :cond_e
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4022
    :cond_f
    const/4 v1, 0x2

    goto/16 :goto_0

    .line 4025
    :cond_10
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    .line 1861
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1863
    .local v0, "lang":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1865
    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .line 1866
    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1867
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    .line 1868
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1870
    .end local v1    # "tag":I
    :cond_0
    return-void
.end method

.method private getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 4033
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 4034
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4036
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTZOffSetByte(J)B
    .locals 9
    .param p1, "offSetVal"    # J

    .prologue
    const/4 v3, 0x1

    .line 3955
    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    move v2, v3

    .line 3963
    .local v2, "isNegative":Z
    :goto_0
    const-wide/32 v6, 0xdbba0

    div-long v4, p1, v6

    .line 3964
    .local v4, "tzOffset":J
    if-eqz v2, :cond_0

    const/4 v3, -0x1

    :cond_0
    int-to-long v6, v3

    mul-long/2addr v4, v6

    .line 3965
    long-to-int v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->byteToBCD(I)B

    move-result v0

    .line 3967
    .local v0, "bcdVal":B
    if-eqz v2, :cond_2

    or-int/lit8 v3, v0, 0x8

    int-to-byte v0, v3

    move v1, v0

    .end local v0    # "bcdVal":B
    .local v1, "bcdVal":B
    :goto_1
    return v0

    .line 3955
    .end local v1    # "bcdVal":B
    .end local v2    # "isNegative":Z
    .end local v4    # "tzOffset":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v0    # "bcdVal":B
    .restart local v2    # "isNegative":Z
    .restart local v4    # "tzOffset":J
    :cond_2
    move v1, v0

    .line 3967
    .end local v0    # "bcdVal":B
    .restart local v1    # "bcdVal":B
    goto :goto_1
.end method

.method private handleCallControlResultNoti(Ljava/lang/String;)V
    .locals 22
    .param p1, "callcontrol_result"    # Ljava/lang/String;

    .prologue
    .line 3519
    const/4 v12, 0x0

    .line 3520
    .local v12, "call_type":I
    const/4 v11, 0x0

    .line 3521
    .local v11, "callControlResultCode":I
    const/4 v9, 0x0

    .line 3522
    .local v9, "alphaidpresent":Z
    const/4 v8, 0x0

    .line 3523
    .local v8, "alphaid_len":I
    const/16 v1, 0x40

    new-array v7, v1, [B

    .line 3524
    .local v7, "alpha_id":[B
    const/4 v15, 0x0

    .line 3525
    .local v15, "length_of_mod":B
    const/16 v21, 0x0

    .line 3526
    .local v21, "voicecall_ss_modified_address":Ljava/lang/String;
    const/16 v18, 0x0

    .line 3527
    .local v18, "modified_ussd_string":Ljava/lang/String;
    const/16 v17, 0x0

    .line 3529
    .local v17, "modified_sms_dest_address":Ljava/lang/String;
    const/4 v10, 0x0

    .line 3531
    .local v10, "callControlResult":Ljava/lang/String;
    const/16 v19, 0x0

    .line 3533
    .local v19, "rawData":[B
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v19

    .line 3536
    const/4 v1, 0x0

    aget-byte v1, v19, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    .line 3537
    const/4 v1, 0x1

    aget-byte v1, v19, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    .line 3540
    const/4 v1, 0x1

    aget-byte v11, v19, v1

    .line 3541
    const/4 v1, 0x0

    aget-byte v12, v19, v1

    .line 3543
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call control result by SIM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3545
    const/4 v1, 0x2

    :try_start_0
    aget-byte v1, v19, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 3546
    const/4 v9, 0x1

    .line 3547
    const/4 v1, 0x3

    aget-byte v1, v19, v1

    if-lez v1, :cond_0

    .line 3548
    const/4 v1, 0x4

    const/4 v2, 0x3

    aget-byte v2, v19, v2

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 3549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call control result by SIM : alpha_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3555
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call control result by SIM : alphaidpresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3560
    :goto_1
    invoke-static {v11}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v1, v2, :cond_b

    .line 3561
    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .line 3562
    .local v20, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$CallType:[I

    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CallType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3657
    :goto_2
    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-eq v1, v2, :cond_1

    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_EnableNotiPopupWhenStkCallControl"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3659
    :cond_1
    const-string v1, "CLN"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KDO"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TLS"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CA"

    const-string v2, "ro.csc.countryiso_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3663
    const/4 v1, 0x1

    if-ne v9, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-nez v1, :cond_9

    .line 3698
    .end local v20    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v1, :cond_10

    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-ne v1, v2, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v1, v2, :cond_10

    .line 3701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 3702
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 3703
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 3714
    :cond_3
    :goto_4
    return-void

    .line 3552
    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 3565
    .restart local v20    # "sb":Ljava/lang/StringBuffer;
    :pswitch_0
    const/16 v1, 0x46

    :try_start_1
    aget-byte v1, v19, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 3566
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_EnableNotiPopupWhenStkCallControl"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3567
    const-string v1, "Brazil Feature - Remove \'+\' from voicecall_ss_modified_address "

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3572
    :cond_5
    :goto_5
    const/16 v1, 0x48

    aget-byte v15, v19, v1

    .line 3573
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    if-ge v14, v15, :cond_7

    .line 3574
    add-int/lit8 v1, v14, 0x49

    aget-byte v1, v19, v1

    packed-switch v1, :pswitch_data_1

    .line 3573
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 3569
    .end local v14    # "i":I
    :cond_6
    const-string v1, "+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 3598
    :catch_0
    move-exception v1

    .line 3600
    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Modified number by SIM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040906

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 3603
    .local v16, "message":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3605
    goto/16 :goto_2

    .line 3585
    .end local v16    # "message":Ljava/lang/CharSequence;
    .restart local v14    # "i":I
    :pswitch_1
    add-int/lit8 v1, v14, 0x49

    :try_start_2
    aget-byte v2, v19, v1

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, v19, v1

    .line 3586
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v14, 0x49

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 3589
    :pswitch_2
    const-string v1, "*"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    .line 3592
    :pswitch_3
    const-string v1, "#"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .line 3608
    .end local v14    # "i":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040906

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 3609
    .restart local v16    # "message":Ljava/lang/CharSequence;
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3611
    goto/16 :goto_2

    .line 3614
    .end local v16    # "message":Ljava/lang/CharSequence;
    :pswitch_5
    const/16 v1, 0x48

    aget-byte v15, v19, v1

    .line 3615
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_8
    if-ge v14, v15, :cond_8

    .line 3616
    add-int/lit8 v1, v14, 0x49

    aget-byte v1, v19, v1

    packed-switch v1, :pswitch_data_2

    .line 3615
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 3627
    :pswitch_6
    add-int/lit8 v1, v14, 0x49

    aget-byte v2, v19, v1

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, v19, v1

    .line 3628
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v14, 0x49

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 3631
    :pswitch_7
    const-string v1, "*"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 3634
    :pswitch_8
    const-string v1, "#"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    .line 3640
    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3642
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/PhoneBase;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3651
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040907

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 3652
    .restart local v16    # "message":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 3644
    .end local v16    # "message":Ljava/lang/CharSequence;
    :catch_1
    move-exception v13

    .line 3646
    .local v13, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "fail to send SS"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3647
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 3648
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_4

    .line 3665
    .end local v13    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v14    # "i":I
    :cond_9
    const/4 v1, 0x1

    if-ne v9, v1, :cond_a

    .line 3666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 3668
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v10, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 3672
    .end local v20    # "sb":Ljava/lang/StringBuffer;
    :cond_b
    invoke-static {v11}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v1, v2, :cond_e

    .line 3673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040908

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 3674
    .restart local v16    # "message":Ljava/lang/CharSequence;
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3675
    const/4 v1, 0x1

    if-ne v9, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3678
    :cond_c
    const/4 v1, 0x1

    if-ne v9, v1, :cond_d

    .line 3679
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3680
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 3681
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3684
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v10, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 3687
    .end local v16    # "message":Ljava/lang/CharSequence;
    :cond_e
    const/4 v1, 0x1

    if-ne v9, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 3690
    :cond_f
    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    .line 3691
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3692
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    .line 3693
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 3704
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v1, :cond_3

    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-ne v1, v2, :cond_3

    .line 3706
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_11

    .line 3707
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 3711
    :goto_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 3712
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    goto/16 :goto_4

    .line 3709
    :cond_11
    const-string v1, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 3556
    :catch_2
    move-exception v1

    goto/16 :goto_1

    .line 3562
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 3574
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 3616
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 24
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2585
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2937
    :cond_0
    :goto_0
    return-void

    .line 2588
    :cond_1
    const/4 v7, 0x0

    .line 2589
    .local v7, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/16 v18, 0x0

    .line 2590
    .local v18, "helpRequired":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v3

    .line 2591
    .local v3, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget v2, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v23

    .line 2595
    .local v23, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    const/4 v15, 0x0

    .line 2599
    .local v15, "calldisabledNoti":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    .line 2600
    const-string v2, "Get terminal response of ACTIVATE and cancel timer"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2601
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2605
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2607
    :pswitch_0
    const/16 v18, 0x1

    .line 2621
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_1

    .line 2930
    :cond_3
    :goto_1
    :pswitch_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:Z

    if-nez v2, :cond_24

    .line 2931
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2936
    :cond_4
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    .line 2624
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    if-eqz v2, :cond_6

    .line 2625
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    if-nez v2, :cond_5

    .line 2626
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2628
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 2629
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    .line 2630
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 2634
    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v2, v4, :cond_7

    const/16 v18, 0x1

    .line 2635
    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto/16 :goto_0

    .line 2634
    :cond_7
    const/16 v18, 0x0

    goto :goto_3

    .line 2638
    :pswitch_4
    new-instance v7, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .line 2639
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    .line 2643
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_3

    .line 2644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v19

    .line 2645
    .local v19, "input":Lcom/android/internal/telephony/cat/Input;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v2, :cond_8

    .line 2648
    if-nez v18, :cond_3

    .line 2649
    new-instance v7, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v7, v2, v4, v5}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    .line 2653
    :cond_8
    new-instance v7, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    .line 2660
    .end local v19    # "input":Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v2, v4, :cond_9

    .line 2665
    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(Z)V

    goto/16 :goto_1

    .line 2670
    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    .line 2673
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:Z

    goto/16 :goto_1

    .line 2680
    :pswitch_7
    const/4 v7, 0x0

    .line 2682
    goto/16 :goto_1

    .line 2686
    :pswitch_8
    const-string v2, "true"

    const-string v4, "ro.ril.stk_qmi_ril"

    const-string v5, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mIsAPHandlingBip:Z

    if-nez v2, :cond_a

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_a

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_a

    .line 2691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 2692
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 2696
    :cond_a
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    if-nez v2, :cond_b

    .line 2697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resMsg.mResCode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Openchannel : Sending TR :user did not accept"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2698
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2699
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-direct {v7}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    .line 2700
    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2703
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V

    goto/16 :goto_0

    .line 2708
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 2709
    const-string v2, "setup call address is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2710
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2711
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2715
    :cond_c
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    if-nez v2, :cond_e

    .line 2716
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2717
    const-string v2, "true"

    const-string v4, "ro.ril.stk_qmi_ril"

    const-string v5, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_d

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_d

    .line 2721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2723
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2727
    :cond_e
    const-string v2, "setup call in handleCmdResponse"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2729
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->hasIMSCall()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 2730
    const-string v2, "show Notification - Can\'t call by InIMScall"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2732
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x1040905

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .line 2733
    .local v21, "message":Ljava/lang/CharSequence;
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v15, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2735
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2736
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2740
    .end local v21    # "message":Ljava/lang/CharSequence;
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isInCall()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2741
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_10

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v2, v4, :cond_11

    .line 2742
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    .line 2744
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getState() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2745
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 2746
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2747
    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.intent.action.SetupCallFail"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2748
    .local v20, "intentSetupcall":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2751
    .end local v20    # "intentSetupcall":Landroid/content/Intent;
    :catch_0
    move-exception v16

    .line 2752
    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "exception happened"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2756
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_11
    const-string v2, "true"

    const-string v4, "ro.ril.stk_qmi_ril"

    const-string v5, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 2761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2759
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2765
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne v2, v4, :cond_14

    .line 2768
    const-string v2, "show Notification - Can\'t call by Incall"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x1040905

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .line 2771
    .restart local v21    # "message":Ljava/lang/CharSequence;
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v15, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2775
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2777
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2779
    .end local v21    # "message":Ljava/lang/CharSequence;
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne v2, v4, :cond_16

    .line 2781
    const-string v2, "true"

    const-string v4, "ro.ril.stk_qmi_ril"

    const-string v5, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_15

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_15

    .line 2785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2788
    :cond_15
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->switchHoldingAndActive()V

    .line 2789
    const/4 v2, 0x3

    const/16 v4, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2791
    :catch_1
    move-exception v16

    .line 2793
    .local v16, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "fail to setup call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2794
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2795
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2799
    .end local v16    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne v2, v4, :cond_1d

    .line 2801
    const-string v2, "true"

    const-string v4, "ro.ril.stk_qmi_ril"

    const-string v5, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_17

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_17

    .line 2805
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2808
    :cond_17
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    .line 2809
    .local v22, "ringing":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    .line 2810
    .local v17, "fg":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .line 2811
    .local v14, "bg":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2812
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->hangup()V

    .line 2818
    :cond_18
    :goto_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_19

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v2, v4, :cond_1c

    .line 2819
    :cond_19
    const/4 v2, 0x7

    const/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 2825
    .end local v14    # "bg":Lcom/android/internal/telephony/Call;
    .end local v17    # "fg":Lcom/android/internal/telephony/Call;
    .end local v22    # "ringing":Lcom/android/internal/telephony/Call;
    :catch_2
    move-exception v16

    .line 2827
    .restart local v16    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "fail to setup call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2828
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2829
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2813
    .end local v16    # "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v14    # "bg":Lcom/android/internal/telephony/Call;
    .restart local v17    # "fg":Lcom/android/internal/telephony/Call;
    .restart local v22    # "ringing":Lcom/android/internal/telephony/Call;
    :cond_1a
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2814
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_4

    .line 2815
    :cond_1b
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_18

    .line 2816
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_4

    .line 2823
    :cond_1c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 2834
    .end local v14    # "bg":Lcom/android/internal/telephony/Call;
    .end local v17    # "fg":Lcom/android/internal/telephony/Call;
    .end local v22    # "ringing":Lcom/android/internal/telephony/Call;
    :cond_1d
    const-string v2, "true"

    const-string v4, "ro.ril.stk_qmi_ril"

    const-string v5, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_1e

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_1e

    .line 2838
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2840
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2863
    :pswitch_a
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    if-nez v2, :cond_1f

    .line 2864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resMsg.mResCode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " CLOSE_CHANNEL : Sending TR :user did not accept"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2866
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    .line 2867
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2870
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v2, Lcom/android/internal/telephony/cat/CloseChannelParams;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V

    goto/16 :goto_0

    .line 2878
    :pswitch_b
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_20

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 2879
    :cond_20
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    .line 2880
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2881
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 2882
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    goto/16 :goto_1

    .line 2891
    :pswitch_c
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-object/from16 v0, v23

    if-eq v0, v2, :cond_21

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_22

    .line 2892
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    .line 2893
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 2896
    :cond_22
    const/4 v7, 0x0

    .line 2898
    goto/16 :goto_1

    .line 2901
    :pswitch_d
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v4, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_2

    .line 2914
    const/4 v7, 0x0

    .line 2915
    goto/16 :goto_1

    .line 2904
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_3

    .line 2905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v19

    .line 2906
    .restart local v19    # "input":Lcom/android/internal/telephony/cat/Input;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v2, :cond_23

    .line 2907
    new-instance v7, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Lcom/android/internal/telephony/cat/Duration;)V

    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    .line 2909
    :cond_23
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 2923
    .end local v19    # "input":Lcom/android/internal/telephony/cat/Input;
    :pswitch_f
    const/4 v7, 0x0

    .line 2924
    goto/16 :goto_1

    .line 2932
    :cond_24
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 2933
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfoData:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    .line 2605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch

    .line 2621
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 2901
    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 38
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .prologue
    .line 838
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 841
    if-eqz p2, :cond_0

    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_0

    .line 843
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProactiveCommand mSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cmdParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->addCardLog(Ljava/lang/String;)V

    .line 849
    :cond_0
    new-instance v19, Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 852
    .local v19, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    .line 853
    .local v34, "sessionEnd":Ljava/lang/Boolean;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 855
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 857
    .local v33, "sendIntent":Ljava/lang/Boolean;
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1470
    const-string v2, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1485
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_1
    :goto_0
    return-void

    .line 860
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_0
    const-string v2, "SetupMenu"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 861
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 866
    :cond_2
    const/16 v35, 0x0

    .line 867
    .local v35, "stkProp":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_7

    .line 868
    const-string v35, "gsm.UTK_SETUP_MENU"

    .line 875
    :goto_1
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 876
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 879
    :cond_4
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 880
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 882
    const-string v2, ""

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 889
    :cond_5
    const-string v2, "Send set up menu TR Alpha Id length ==0 ."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 891
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 892
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    .line 1475
    .end local v35    # "stkProp":Ljava/lang/String;
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_6
    :goto_2
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1476
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1477
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    .line 1479
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 1480
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    .line 1481
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    goto/16 :goto_0

    .line 869
    .restart local v35    # "stkProp":Ljava/lang/String;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_7
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_8

    .line 870
    const-string v35, "gsm.UTK_SETUP_MENU2"

    goto/16 :goto_1

    .line 872
    :cond_8
    const-string v2, "gsm.STK_SETUP_MENU"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    goto/16 :goto_1

    .line 896
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 899
    const-string v2, "Feature for is_stk_icon_label_update is enabled"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 901
    .local v27, "oldSysProp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 902
    .local v26, "newSysProp":Ljava/lang/String;
    if-eqz v26, :cond_f

    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 903
    const-string v2, ""

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 904
    const-string v2, "Condition for STK refresh detected enabling the intent to be fired"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 905
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    .line 919
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 920
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigSTKNameLength"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v23

    .line 921
    .local v23, "maxNameLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " property Setting. -AAA mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v23

    if-le v2, v0, :cond_10

    .line 923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v4, v23, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETUP_MENU setted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v35 .. v35}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -AAA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 939
    .end local v23    # "maxNameLen":I
    :goto_5
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_Support75Mode"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 943
    :cond_a
    const-string v2, "Send set up menu TR."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 945
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    .line 946
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    .line 950
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    if-nez v2, :cond_c

    const-string v2, "China"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 952
    :cond_c
    const-string v15, "android.intent.action.STK_TITLE_IS_LOADED"

    .line 953
    .local v15, "action":Ljava/lang/String;
    const/16 v29, 0x0

    .line 954
    .local v29, "pkg":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_14

    .line 955
    const-string v29, "com.sec.android.app.utk"

    .line 961
    :goto_6
    new-instance v22, Landroid/content/Intent;

    const-string v2, "package"

    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 962
    .local v22, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 907
    .end local v15    # "action":Ljava/lang/String;
    .end local v22    # "intent":Landroid/content/Intent;
    .end local v29    # "pkg":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 908
    const-string v2, "Condition for STK refresh detected enabling the intent to be fired"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    goto/16 :goto_3

    .line 912
    :cond_e
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    goto/16 :goto_3

    .line 916
    :cond_f
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    goto/16 :goto_3

    .line 925
    .restart local v23    # "maxNameLen":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 929
    .end local v23    # "maxNameLen":I
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETUP_MENU property Setting. -BBB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_12

    .line 931
    const-string v2, "UIM Toolkit"

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 932
    :cond_12
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_13

    .line 933
    const-string v2, "UIM Toolkit2"

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 935
    :cond_13
    const-string v2, "SIM Toolkit"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 956
    .restart local v15    # "action":Ljava/lang/String;
    .restart local v29    # "pkg":Ljava/lang/String;
    :cond_14
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_15

    .line 957
    const-string v29, "com.sec.android.app.utk2"

    goto/16 :goto_6

    .line 959
    :cond_15
    const-string v2, "com.android.stk"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_6

    .line 974
    .end local v15    # "action":Ljava/lang/String;
    .end local v26    # "newSysProp":Ljava/lang/String;
    .end local v27    # "oldSysProp":Ljava/lang/String;
    .end local v29    # "pkg":Ljava/lang/String;
    .end local v35    # "stkProp":Ljava/lang/String;
    :pswitch_1
    const-string v2, "DisplayText"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 975
    const-string v2, "DisplayText not supported"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 976
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 978
    :cond_16
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v2, :cond_6

    .line 980
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    .line 984
    :pswitch_2
    const-string v2, "CTC"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1007
    :cond_17
    const-string v2, "KOREA"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1008
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v34

    goto/16 :goto_2

    .line 1015
    :pswitch_3
    const-string v2, "SetupIdleModeText"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1016
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1018
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1020
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->launchIdleText()V

    .line 1021
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    .line 1036
    :pswitch_4
    const-string v2, "SetupEventList"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1037
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1038
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1039
    :cond_19
    const-string v2, "SKT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "CMC"

    const-string v3, "QCOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const-string v2, "LGT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "KOO"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1045
    :cond_1b
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 1046
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .line 1047
    .local v16, "args":Landroid/os/Bundle;
    const-string v2, "op"

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1048
    const-string v2, "cmd message"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1049
    new-instance v22, Landroid/content/Intent;

    invoke-direct/range {v22 .. v22}, Landroid/content/Intent;-><init>()V

    .line 1050
    .restart local v22    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.StkAppService"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1051
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .line 1058
    .end local v16    # "args":Landroid/os/Bundle;
    .end local v22    # "intent":Landroid/content/Intent;
    :pswitch_5
    const-string v2, "ProvideLocalInformation"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1059
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1060
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1062
    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto/16 :goto_0

    .line 1069
    :pswitch_6
    const-string v2, "LaunchBrowser"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1070
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1071
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1072
    :cond_1d
    const-string v2, "VAU"

    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isSetupWizard()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 1073
    const-string v2, "Doing Setup Wizard"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1075
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    :cond_1e
    move-object/from16 v2, p1

    .line 1077
    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1f

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1079
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404c0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 1080
    .local v24, "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 1087
    .end local v24    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_7
    const-string v2, "SelectItem"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1088
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1089
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1093
    :pswitch_8
    const-string v2, "GetInput"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1094
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1095
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1099
    :pswitch_9
    const-string v2, "GetInkey"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1100
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1101
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1106
    :pswitch_a
    const-string v2, "SendDtmf"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1107
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1111
    :cond_20
    const-string v2, "true"

    const-string v3, "ro.ril.stk_qmi_ril"

    const-string v4, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move-object/from16 v2, p1

    .line 1113
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1115
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .line 1118
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_22

    .line 1119
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1122
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    .line 1123
    .local v21, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1124
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1128
    :cond_23
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1130
    const-string v2, "Default Message"

    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1131
    const-string v2, "wakelock for Send DTMF"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    .line 1139
    .end local v21    # "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_b
    const-string v2, "SendSms"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-nez v2, :cond_25

    .line 1140
    :cond_24
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1144
    :cond_25
    const-string v2, "false"

    const-string v3, "ro.ril.stk_qmi_ril"

    const-string v4, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_STKHandlingSendSMSbyAP"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1148
    :cond_26
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_27

    .line 1149
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1154
    :cond_27
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendSMS(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object/from16 v2, p1

    .line 1156
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_29

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_29

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1159
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_28

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_6

    :cond_28
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "null alphaId, default sending..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 1162
    .restart local v24    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending sms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1167
    .end local v24    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_29
    const-string v2, "wakelock for SMS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    .line 1172
    :pswitch_c
    const-string v2, "SendSs"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1173
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1177
    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_2b

    .line 1178
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1182
    :cond_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendSS(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object/from16 v2, p1

    .line 1184
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_2c

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_2c

    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1189
    :cond_2c
    const-string v2, "wakelock for SS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    .line 1194
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_d
    const-string v2, "SendUssd"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 1195
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1199
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_2e

    .line 1200
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1204
    :cond_2e
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object/from16 v2, p1

    .line 1206
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_2f

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_2f

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    move-object/from16 v2, p1

    .line 1210
    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "null alphaId, default sending..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404bf

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 1212
    .restart local v24    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .line 1213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending ussd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1218
    .end local v24    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2f
    const-string v2, "wakelock for USSD"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    .line 1225
    :pswitch_e
    const-string v2, "PlayTone"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1226
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1227
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1233
    :pswitch_f
    const-string v2, "SetupCall"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_30

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_31

    .line 1234
    :cond_30
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1236
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 1238
    :cond_31
    const-string v2, "setup call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1240
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isInCall()Z

    move-result v2

    if-nez v2, :cond_32

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->hasIMSCall()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1241
    :cond_32
    const/16 v17, 0x0

    .line 1243
    .local v17, "calldisabledNoti":Ljava/lang/String;
    const-string v2, "phone is in call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne v2, v3, :cond_33

    .line 1246
    const-string v2, "show Notification - Can\'t call by Incall"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040905

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .line 1248
    .restart local v24    # "message":Ljava/lang/CharSequence;
    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1251
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v17    # "calldisabledNoti":Ljava/lang/String;
    .end local v24    # "message":Ljava/lang/CharSequence;
    :cond_33
    move-object/from16 v2, p1

    .line 1257
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_35

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .restart local v24    # "message":Ljava/lang/CharSequence;
    move-object/from16 v2, p1

    .line 1260
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .end local v24    # "message":Ljava/lang/CharSequence;
    :cond_34
    :goto_7
    move-object/from16 v2, p1

    .line 1267
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1269
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_35
    move-object/from16 v2, p1

    .line 1262
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_34

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_34

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_34

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404c1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v24

    .restart local v24    # "message":Ljava/lang/CharSequence;
    move-object/from16 v2, p1

    .line 1265
    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_7

    .line 1278
    .end local v24    # "message":Ljava/lang/CharSequence;
    :pswitch_10
    const-string v2, "OPEN_CHANNEL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1279
    const-string v2, "OpenChannel"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1280
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1281
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1283
    :cond_36
    const-string v2, "true"

    const-string v3, "ro.ril.stk_qmi_ril"

    const-string v4, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mIsAPHandlingBip:Z

    if-nez v2, :cond_38

    move-object/from16 v14, p1

    .line 1286
    check-cast v14, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 1287
    .local v14, "OpenChannelcmd":Lcom/android/internal/telephony/cat/OpenChannelParams;
    iget-object v2, v14, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_37

    iget-object v2, v14, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 1288
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with null alpha id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 1294
    .end local v14    # "OpenChannelcmd":Lcom/android/internal/telephony/cat/OpenChannelParams;
    :cond_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/telephony/TelephonyManager;

    .line 1295
    .local v37, "tm":Landroid/telephony/TelephonyManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tm.getNetworkType() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1296
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v36

    .line 1297
    .local v36, "subIds":[I
    const/4 v2, 0x0

    aget v2, v36, v2

    move-object/from16 v0, v37

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v25

    .local v25, "networkType":I
    move-object/from16 v28, p1

    .line 1298
    check-cast v28, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .line 1300
    .local v28, "op":Lcom/android/internal/telephony/cat/OpenChannelParams;
    if-nez v25, :cond_39

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v2

    if-nez v2, :cond_39

    .line 1301
    const-string v2, "NETWORK_TYPE_UNKNOWN "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1302
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1306
    :cond_39
    sput-object v28, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1307
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->displayOpenChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v30

    .line 1310
    .local v30, "radioTechnology":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get current radio techonology = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1311
    const/4 v2, 0x1

    move/from16 v0, v30

    if-eq v0, v2, :cond_3a

    const/4 v2, 0x2

    move/from16 v0, v30

    if-ne v0, v2, :cond_3b

    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 1312
    const-string v2, "send terminal response, TERMINAL_CRNTLY_UNABLE_TO_PROCESS, ME_CURRENTLY_BUSY_ON_CALL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1313
    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    .line 1314
    .local v7, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 1318
    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_3b
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_3c

    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 1319
    :cond_3c
    const-string v2, "no alphaID or alphaID 0 : no user confirm"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V

    .line 1321
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_RemoveToastDuringBipOperation"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1323
    move-object/from16 v0, v28

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1324
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v3, "open channel for BIP"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1332
    .end local v25    # "networkType":I
    .end local v28    # "op":Lcom/android/internal/telephony/cat/OpenChannelParams;
    .end local v30    # "radioTechnology":I
    .end local v36    # "subIds":[I
    .end local v37    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_11
    const-string v2, "CloseChannel"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3d

    .line 1333
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1334
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    :cond_3d
    move-object/from16 v20, p1

    .line 1336
    check-cast v20, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .line 1337
    .local v20, "cp":Lcom/android/internal/telephony/cat/CloseChannelParams;
    sput-object v20, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1339
    const-string v2, "LGT"

    const-string v3, "EUR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    const-string v2, "true"

    const-string v3, "ril.domesticOtaStart"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mGetUiccVerHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mGetUiccVerRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1342
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    .line 1345
    :cond_3e
    const-string v2, "true"

    const-string v3, "ro.ril.stk_qmi_ril"

    const-string v4, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mIsAPHandlingBip:Z

    if-nez v2, :cond_3f

    .line 1349
    const-string v2, "Does not send Terminal response "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_6

    goto/16 :goto_0

    .line 1355
    :cond_3f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->displayCloseChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1356
    const-string v2, "After Displaying Params Close Channel...Calling CatBIPMgr.handleCloseChannel: "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1358
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 1359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V

    goto/16 :goto_0

    .line 1366
    .end local v20    # "cp":Lcom/android/internal/telephony/cat/CloseChannelParams;
    :pswitch_12
    const-string v2, "ReceiveData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 1367
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1368
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1370
    :cond_40
    const-string v2, "true"

    const-string v3, "ro.ril.stk_qmi_ril"

    const-string v4, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mIsAPHandlingBip:Z

    if-nez v2, :cond_41

    .line 1374
    const-string v2, "Does not send Terminal response "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_41
    move-object/from16 v31, p1

    .line 1377
    check-cast v31, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .line 1378
    .local v31, "rd":Lcom/android/internal/telephony/cat/ReceiveDataParams;
    sput-object v31, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1379
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->displayReceiveDataParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1380
    const-string v2, "After Displaying Params RECEIVE_DATA...Calling CatBIPMgr.handleReceiveData: "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1381
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleReceiveData(Lcom/android/internal/telephony/cat/ReceiveDataParams;)V

    .line 1382
    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_6

    goto/16 :goto_0

    .line 1389
    .end local v31    # "rd":Lcom/android/internal/telephony/cat/ReceiveDataParams;
    :pswitch_13
    const-string v2, "SendData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 1390
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1391
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1393
    :cond_42
    const-string v2, "true"

    const-string v3, "ro.ril.stk_qmi_ril"

    const-string v4, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_43

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mIsAPHandlingBip:Z

    if-nez v2, :cond_43

    .line 1397
    const-string v2, "Does not send Terminal response "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_43
    move-object/from16 v32, p1

    .line 1400
    check-cast v32, Lcom/android/internal/telephony/cat/SendDataParams;

    .line 1401
    .local v32, "sd":Lcom/android/internal/telephony/cat/SendDataParams;
    sput-object v32, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1402
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->displaySendDataParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1403
    const-string v2, "After Displaying Params SEND_DATA...Calling CatBIPMgr.handleSendData: "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1404
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V

    .line 1405
    move-object/from16 v0, v32

    iget-object v2, v0, Lcom/android/internal/telephony/cat/SendDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_6

    goto/16 :goto_0

    .line 1414
    .end local v32    # "sd":Lcom/android/internal/telephony/cat/SendDataParams;
    :pswitch_14
    const-string v2, "GetChannelStatus"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 1415
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1416
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_0

    :cond_44
    move-object/from16 v18, p1

    .line 1418
    check-cast v18, Lcom/android/internal/telephony/cat/GetChannelDataParams;

    .line 1419
    .local v18, "cd":Lcom/android/internal/telephony/cat/GetChannelDataParams;
    sput-object v18, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1420
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->displayChannelStatusParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    .line 1421
    const-string v2, "After Displaying Params GET_CHANNEL_STATUS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto/16 :goto_0

    .line 1426
    .end local v18    # "cd":Lcom/android/internal/telephony/cat/GetChannelDataParams;
    :pswitch_15
    const-string v2, "LanguageNotification"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1427
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1428
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    .line 1438
    :pswitch_16
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 1439
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 1466
    goto/16 :goto_2

    .line 857
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
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 24
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    .line 3377
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v3, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    move/from16 v17, v0

    .line 3378
    .local v17, "commandQualifier":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provide local info command Qualifier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3380
    packed-switch v17, :pswitch_data_0

    .line 3442
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 3445
    :goto_0
    return-void

    .line 3387
    :pswitch_0
    const-string v3, "true"

    const-string v4, "ro.ril.stk_qmi_ril"

    const-string v5, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3389
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 3391
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 3395
    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 3396
    .local v16, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x0

    .line 3397
    .local v2, "res":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v16, :cond_1

    .line 3398
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 3400
    :cond_1
    const-string v3, "persist.sys.timezone"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3402
    .local v21, "tz":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v3, v4, :cond_2

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 3403
    :cond_2
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v18

    .line 3404
    .local v18, "daylight":Z
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eqz v18, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    :goto_1
    add-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v20, v3, 0x3c

    .line 3406
    .local v20, "timeZone":I
    div-int/lit8 v3, v20, 0x3c

    mul-int/lit8 v20, v3, 0x4

    .line 3407
    move/from16 v0, v20

    int-to-byte v9, v0

    .line 3416
    .end local v18    # "daylight":Z
    .end local v20    # "timeZone":I
    .local v9, "timezone":B
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " d : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hh : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ss : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " zone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AM_PM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3417
    new-instance v2, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;

    .end local v2    # "res":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x9

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_6

    const/16 v6, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    :goto_3
    const/16 v7, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v10, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;-><init>(IIIIIII)V

    .line 3428
    .restart local v2    # "res":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 3404
    .end local v9    # "timezone":B
    .restart local v18    # "daylight":Z
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 3408
    .end local v18    # "daylight":Z
    :cond_4
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3409
    const/4 v9, -0x1

    .restart local v9    # "timezone":B
    goto/16 :goto_2

    .line 3411
    .end local v9    # "timezone":B
    :cond_5
    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    .line 3412
    .local v22, "zone":Ljava/util/TimeZone;
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int v23, v3, v4

    .line 3413
    .local v23, "zoneOffset":I
    move/from16 v0, v23

    int-to-long v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getTZOffSetByte(J)B

    move-result v9

    .restart local v9    # "timezone":B
    goto/16 :goto_2

    .line 3417
    .end local v2    # "res":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v22    # "zone":Ljava/util/TimeZone;
    .end local v23    # "zoneOffset":I
    :cond_6
    const/16 v6, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    goto :goto_3

    .line 3432
    .end local v9    # "timezone":B
    .end local v16    # "calendar":Ljava/util/Calendar;
    .end local v21    # "tz":Ljava/lang/String;
    :pswitch_2
    const/4 v8, 0x0

    .line 3433
    .local v8, "response":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    .line 3434
    .local v19, "loc":Ljava/util/Locale;
    if-nez v19, :cond_7

    .line 3435
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 3437
    :cond_7
    new-instance v8, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;

    .end local v8    # "response":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;-><init>(Ljava/lang/String;)V

    .line 3438
    .restart local v8    # "response":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 3380
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 12
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xb

    const/16 v9, 0xa

    .line 3275
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DTMF String is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/cat/SendDTMFParams;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    .line 3277
    check-cast v7, Lcom/android/internal/telephony/cat/SendDTMFParams;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    const/4 v8, 0x0

    aget-byte v1, v7, v8

    .line 3278
    .local v1, "rawDataLength":I
    mul-int/lit8 v7, v1, 0x2

    new-array v3, v7, [B

    .line 3279
    .local v3, "tempDTMFString":[B
    const/4 v4, 0x0

    .line 3280
    .local v4, "tempDTMFStringLength":I
    const/4 v5, 0x0

    .line 3283
    .local v5, "workingPtr":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v6, v5

    .end local v5    # "workingPtr":I
    .local v6, "workingPtr":I
    :goto_0
    if-ge v0, v1, :cond_7

    move-object v7, p1

    .line 3284
    check-cast v7, Lcom/android/internal/telephony/cat/SendDTMFParams;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0xf

    int-to-byte v2, v7

    .line 3285
    .local v2, "temp":B
    if-ne v2, v11, :cond_1

    const/16 v2, 0x70

    .line 3289
    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "workingPtr":I
    .restart local v5    # "workingPtr":I
    aput-byte v2, v3, v6

    .line 3290
    add-int/lit8 v4, v4, 0x1

    move-object v7, p1

    .line 3291
    check-cast v7, Lcom/android/internal/telephony/cat/SendDTMFParams;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v7, v7, v8

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    int-to-byte v2, v7

    .line 3292
    const/16 v7, 0xf

    if-eq v2, v7, :cond_0

    .line 3293
    if-ne v2, v11, :cond_4

    const/16 v2, 0x70

    .line 3297
    :goto_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "workingPtr":I
    .restart local v6    # "workingPtr":I
    aput-byte v2, v3, v5

    .line 3298
    add-int/lit8 v4, v4, 0x1

    move v5, v6

    .line 3283
    .end local v6    # "workingPtr":I
    .restart local v5    # "workingPtr":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    .end local v5    # "workingPtr":I
    .restart local v6    # "workingPtr":I
    goto :goto_0

    .line 3286
    :cond_1
    if-ne v2, v9, :cond_2

    const/16 v2, 0x2a

    goto :goto_1

    .line 3287
    :cond_2
    if-ne v2, v10, :cond_3

    const/16 v2, 0x23

    goto :goto_1

    .line 3288
    :cond_3
    add-int/lit8 v7, v2, 0x30

    int-to-byte v2, v7

    goto :goto_1

    .line 3294
    .end local v6    # "workingPtr":I
    .restart local v5    # "workingPtr":I
    :cond_4
    if-ne v2, v9, :cond_5

    const/16 v2, 0x2a

    goto :goto_2

    .line 3295
    :cond_5
    if-ne v2, v10, :cond_6

    const/16 v2, 0x23

    goto :goto_2

    .line 3296
    :cond_6
    add-int/lit8 v7, v2, 0x30

    int-to-byte v2, v7

    goto :goto_2

    .line 3302
    .end local v2    # "temp":B
    .end local v5    # "workingPtr":I
    .restart local v6    # "workingPtr":I
    :cond_7
    const-string v7, "wakelock for DTMF"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3303
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v8, 0xfde8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3305
    new-instance v7, Lcom/android/internal/telephony/cat/DtmfString;

    invoke-direct {v7, v4, v3}, Lcom/android/internal/telephony/cat/DtmfString;-><init>(I[B)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    .line 3306
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService;->processDTMFString()V

    .line 3307
    return-void
.end method

.method private handleProactiveCommandSendSMS(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 7
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 3349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Smscaddress is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Sms Pdu is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3351
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v0

    if-eq v6, v0, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_STKHandlingSendSMSbyAP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3356
    :cond_0
    const-string v0, "NEW handleProactiveCommandSendSMS set"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3357
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3358
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    aput-object v0, v1, v2

    .line 3364
    :cond_1
    :goto_0
    const-string v0, "false"

    const-string v1, "ro.ril.stk_qmi_ril"

    const-string v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_STKHandlingSendSMSbyAP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3368
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 3369
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    check-cast p1, Lcom/android/internal/telephony/cat/SendSMSParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v3, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->Format:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendRawPduSat([B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 3372
    const v0, 0xea60

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 3374
    :cond_3
    return-void

    .line 3360
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_4
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method private handleProactiveCommandSendSS(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 7
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 3217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssString is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendSSParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3219
    const/4 v0, 0x2

    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 3220
    const-string v0, "ORO"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XFA"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XFM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3223
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setmMmiInitBySTK(Z)V

    .line 3229
    :cond_1
    :goto_0
    const-string v0, "false"

    const-string v1, "ro.ril.stk_qmi_ril"

    const-string v2, "true"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3231
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 3232
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast p1, Lcom/android/internal/telephony/cat/SendSSParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SendSSParams;->ssString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    .line 3233
    const/4 v0, 0x1

    const/16 v1, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 3241
    :cond_2
    :goto_1
    return-void

    .line 3225
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setmMmiInitBySTK(Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3236
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :catch_0
    move-exception v6

    .line 3238
    .local v6, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v0, "fail to send SS"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3239
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1
.end method

.method private handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 9
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/4 v8, 0x1

    .line 3244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ussdString is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    .line 3246
    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget v0, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->dcsCode:I

    .line 3248
    .local v0, "dcsCode":I
    const-string v5, "XXV"

    const-string v6, "ro.csc.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3249
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, "0"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3250
    .local v1, "operator1":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, "0"

    invoke-static {v8, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3251
    .local v2, "operator2":Ljava/lang/String;
    const-string v5, "45205"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "45205"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3252
    :cond_0
    add-int/lit8 v5, v0, 0x10

    if-nez v5, :cond_1

    .line 3253
    const-string v5, "change DCS F0 to 0F in STK Module"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3254
    const/16 v0, 0xf

    .end local v1    # "operator1":Ljava/lang/String;
    .end local v2    # "operator2":Ljava/lang/String;
    :cond_1
    move-object v5, p1

    .line 3259
    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    .line 3260
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/PhoneBase;->setmMmiInitBySTK(Z)V

    :cond_3
    move-object v5, p1

    .line 3263
    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget v3, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdLength:I

    .line 3264
    .local v3, "ussdLength":I
    check-cast p1, Lcom/android/internal/telephony/cat/SendUSSDParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v4, p1, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    .line 3265
    .local v4, "ussdString":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dcsCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3266
    const-string v5, "false"

    const-string v6, "ro.ril.stk_qmi_ril"

    const-string v7, "true"

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3268
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 3269
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v4, v3, v0}, Lcom/android/internal/telephony/PhoneBase;->sendEncodedUssd([BII)V

    .line 3270
    const/16 v5, 0x7530

    invoke-virtual {p0, v8, v5}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 3272
    :cond_4
    return-void
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 13
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 731
    if-nez p1, :cond_1

    .line 800
    :cond_0
    :goto_0
    return-void

    .line 736
    :cond_1
    const/4 v9, 0x0

    .line 737
    .local v9, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 793
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    .line 739
    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_0

    .line 740
    iget-object v9, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v9    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v9, Lcom/android/internal/telephony/cat/CommandParams;

    .line 741
    .restart local v9    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v9, :cond_0

    .line 742
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 748
    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    if-eqz v9, :cond_0

    .line 775
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_3

    .line 776
    const/4 v1, 0x1

    invoke-direct {p0, v9, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    .line 749
    :catch_0
    move-exception v10

    .line 751
    .local v10, "e":Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 760
    new-instance v2, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 761
    .local v2, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    .line 762
    .local v12, "rawData":[B
    const/4 v11, 0x0

    .line 763
    .local v11, "lengthOffset":I
    const/4 v1, 0x1

    aget-byte v1, v12, v1

    const/16 v3, -0x7f

    if-ne v1, v3, :cond_2

    .line 764
    const/4 v11, 0x1

    .line 766
    :cond_2
    add-int/lit8 v1, v11, 0x4

    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 767
    add-int/lit8 v1, v11, 0x5

    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 768
    add-int/lit8 v1, v11, 0x6

    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    .line 769
    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 781
    .end local v2    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .end local v10    # "e":Ljava/lang/ClassCastException;
    .end local v11    # "lengthOffset":I
    .end local v12    # "rawData":[B
    :cond_3
    iget-object v4, v9, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v5, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .line 787
    :pswitch_4
    iget-object v9, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v9    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v9, Lcom/android/internal/telephony/cat/CommandParams;

    .line 788
    .restart local v9    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v9, :cond_0

    .line 789
    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    .line 737
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SESSION END on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1521
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1523
    const/4 v0, 0x0

    .line 1525
    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v3, v1, :cond_0

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 1526
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.stk2.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1532
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1534
    const-string v1, "LGT"

    const-string v2, "EUR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    if-ne v1, v3, :cond_1

    .line 1535
    const-string v1, "broadcasting com.sec.android.lgt.bip.SUCCESS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1536
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.lgt.bip.SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1537
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1538
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    .line 1540
    :cond_1
    return-void

    .line 1528
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static isBIPCmdBeingProcessed()Z
    .locals 1

    .prologue
    .line 3951
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDisabledCmd(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3026
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 3027
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 3028
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3029
    const/4 v1, 0x1

    .line 3033
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 3027
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isInCall()Z
    .locals 7

    .prologue
    .line 3723
    const/4 v1, 0x0

    .line 3725
    .local v1, "callState":Z
    const/4 v2, 0x0

    .line 3726
    .local v2, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v0, 0x0

    .line 3727
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v4, 0x0

    .line 3728
    .local v4, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 3729
    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    .line 3730
    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 3731
    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3732
    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 3733
    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 3736
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is in call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3728
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3733
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 3740
    :cond_3
    return v1
.end method

.method private isSetUpMenu(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 3911
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 3912
    .local v1, "rawData":[B
    const/4 v0, 0x0

    .line 3913
    .local v0, "lengthOffset":I
    aget-byte v3, v1, v2

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_0

    .line 3914
    const/4 v0, 0x1

    .line 3916
    :cond_0
    add-int/lit8 v3, v0, 0x5

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    .line 3919
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSetupWizard()Z
    .locals 2

    .prologue
    .line 1489
    const-string v0, "isSetupWizard"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1490
    const-string v0, "FINISH"

    const-string v1, "persist.sys.setupwizard"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    const/4 v0, 0x0

    .line 1493
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isStkAppInstalled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2941
    const/4 v1, 0x0

    .line 2942
    .local v1, "intent":Landroid/content/Intent;
    iget v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v6}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v6

    if-eq v4, v6, :cond_0

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 2943
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.intent.action.stk2.command"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2949
    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 2950
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 2952
    .local v0, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_2

    move v2, v5

    .line 2954
    .local v2, "numReceiver":I
    :goto_1
    if-lez v2, :cond_3

    :goto_2
    return v4

    .line 2945
    .end local v0    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "numReceiver":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.stk.command"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 2952
    .restart local v0    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .restart local v2    # "numReceiver":I
    :cond_3
    move v4, v5

    .line 2954
    goto :goto_2
.end method

.method private isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    .line 808
    const/4 v2, 0x1

    .line 810
    .local v2, "flag":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    if-nez v5, :cond_1

    .line 811
    const-string v5, "EventList is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 812
    const/4 v2, 0x0

    .line 827
    :cond_0
    return v2

    .line 814
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v5

    iget-object v0, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 815
    .local v1, "eventVal":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 816
    packed-switch v1, :pswitch_data_0

    .line 823
    :pswitch_0
    const/4 v2, 0x0

    .line 814
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 816
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchIdleText()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 3863
    const-string v6, "launchIdleText"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3864
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .line 3866
    .local v0, "msg":Lcom/android/internal/telephony/cat/TextMessage;
    const/16 v2, 0x14d

    .line 3867
    .local v2, "notificationId":I
    iget v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ne v6, v10, :cond_0

    .line 3868
    const/16 v2, 0x1bc

    .line 3871
    :cond_0
    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v6, :cond_1

    .line 3872
    const-string v6, "REMOVE IDLE TEXT "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3873
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 3907
    :goto_0
    return-void

    .line 3874
    :cond_1
    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    .line 3875
    const-string v6, "REMOVE IDLE TEXT  due to text length is 0"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3876
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 3878
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v6, v11, v7, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 3881
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 3884
    .local v1, "notificationBuilder":Landroid/app/Notification$Builder;
    const-string v6, "gsm.STK_SETUP_MENU"

    iget v7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 3885
    .local v4, "stkProp":Ljava/lang/String;
    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3886
    .local v5, "title":Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 3887
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3892
    :goto_1
    const v6, 0x1080810

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3894
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 3895
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 3897
    iget-boolean v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v6, :cond_3

    .line 3898
    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3899
    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3902
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 3904
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 3905
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 3889
    :cond_4
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private launchSimRefreshMsgAndCancelNoti(I)V
    .locals 8
    .param p1, "refreshResult"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 4042
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4043
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4046
    :cond_0
    const/16 v1, 0x14d

    .line 4047
    .local v1, "notificationId":I
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ne v2, v6, :cond_1

    .line 4048
    const/16 v1, 0x1bc

    .line 4050
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 4052
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-eq v7, v2, :cond_2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_RemoveToastDuringStkRefresh"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4068
    :cond_2
    :goto_0
    return-void

    .line 4058
    :cond_3
    const/4 v0, 0x0

    .line 4059
    .local v0, "message":Ljava/lang/String;
    if-eq p1, v6, :cond_4

    if-nez p1, :cond_5

    .line 4060
    :cond_4
    new-instance v0, Ljava/lang/String;

    .end local v0    # "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040933

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 4067
    .restart local v0    # "message":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4061
    :cond_5
    if-ne p1, v7, :cond_2

    .line 4062
    new-instance v0, Ljava/lang/String;

    .end local v0    # "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040934

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method private loadBackUpProactiveCmd()Lcom/android/internal/telephony/cat/RilMessage;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 3938
    const-string v4, "backUpProactiveCmd"

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v5}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3939
    .local v2, "lPrefName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3940
    .local v3, "pref":Landroid/content/SharedPreferences;
    if-nez v3, :cond_0

    .line 3941
    const-string v4, "load back up SharedPreferences open error"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3942
    const/4 v4, 0x0

    .line 3947
    :goto_0
    return-object v4

    .line 3944
    :cond_0
    const-string v4, "id"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3945
    .local v1, "id":I
    const-string v4, "data"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3947
    .local v0, "data":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {v4, v1, v0}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/telephony/cat/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2558
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    .line 2565
    :goto_0
    return v1

    .line 2561
    :catch_0
    move-exception v0

    .line 2562
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    .line 2565
    goto :goto_0
.end method

.method private saveBackUpProactiveCmd(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 5
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    .line 3923
    const-string v3, "backUpProactiveCmd"

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3924
    .local v1, "lPrefName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3925
    .local v2, "pref":Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    .line 3926
    const-string v3, "save back up SharedPreferences open error"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3935
    :goto_0
    return-void

    .line 3930
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3931
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 3932
    const-string v3, "id"

    iget v4, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 3933
    const-string v4, "data"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3934
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1874
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1877
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .line 1878
    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1881
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1885
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_NTTSTK"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1887
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit8 v4, v5, 0x0

    .line 1892
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1893
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1894
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1895
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1898
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    .line 1899
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1900
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1901
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1904
    if-eqz p2, :cond_0

    .line 1905
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    .line 1906
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1907
    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1910
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1913
    .local v3, "rawData":[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 1914
    .local v2, "len":I
    int-to-byte v5, v2

    aput-byte v5, v3, v7

    .line 1916
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 1918
    .local v1, "hexString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    .line 1919
    return-void

    .line 1890
    .end local v1    # "hexString":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rawData":[B
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    goto :goto_0
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/SSReleaseCompleteNotification;Lcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "data"    # Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    .param p4, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    .line 1675
    const-string v6, " sendTerminalResponse"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1676
    if-nez p1, :cond_0

    .line 1677
    const-string v6, "(cmdDet == null) "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1817
    :goto_0
    return-void

    .line 1681
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1684
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .line 1685
    .local v5, "tag":I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_1

    .line 1686
    or-int/lit16 v5, v5, 0x80

    .line 1688
    :cond_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1689
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1690
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1691
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1692
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1694
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1695
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1696
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1697
    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1698
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1701
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 1702
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1705
    const/4 v3, 0x0

    .line 1708
    .local v3, "length":I
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_8

    .line 1709
    const-string v6, " making Send SS Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1710
    iget v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    if-eqz v6, :cond_2

    .line 1711
    iget v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    add-int/lit8 v3, v6, 0x1

    .line 1713
    :cond_2
    if-nez v3, :cond_3

    .line 1714
    const/4 v3, 0x1

    .line 1716
    :cond_3
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1718
    iget v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 1720
    const-string v6, " SS Release complete error info "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1721
    const/16 v6, 0x34

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1734
    :goto_1
    const/4 v4, 0x0

    .line 1736
    .local v4, "rawData":[B
    :try_start_0
    iget-object v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1741
    :goto_2
    if-eqz v4, :cond_4

    .line 1742
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1807
    .end local v4    # "rawData":[B
    :cond_4
    :goto_3
    if-eqz p4, :cond_5

    .line 1808
    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1811
    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 1812
    .restart local v4    # "rawData":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 1813
    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1815
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 1816
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .line 1724
    .end local v2    # "hexString":Ljava/lang/String;
    .end local v4    # "rawData":[B
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_7

    .line 1725
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getHasIcon()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    .line 1726
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1730
    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 1737
    .restart local v4    # "rawData":[B
    :catch_0
    move-exception v1

    .line 1739
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 1744
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "rawData":[B
    :cond_8
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_4

    .line 1745
    const-string v6, " making Send USSD Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1746
    iget v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    .line 1747
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1748
    const-string v6, " USSD result error "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1749
    const/16 v6, 0x37

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1750
    const/4 v4, 0x0

    .line 1752
    .restart local v4    # "rawData":[B
    :try_start_1
    iget-object v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 1758
    :goto_4
    if-eqz v4, :cond_4

    .line 1759
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_9

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v4, v6

    .line 1760
    :cond_9
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_3

    .line 1753
    :catch_1
    move-exception v1

    .line 1755
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 1763
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "rawData":[B
    :cond_a
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1766
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_b

    .line 1767
    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getHasIcon()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 1768
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1772
    :cond_b
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1773
    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1775
    const/4 v4, 0x0

    .line 1777
    .restart local v4    # "rawData":[B
    :try_start_2
    iget-object v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    .line 1782
    :goto_5
    if-eqz v4, :cond_4

    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    .line 1783
    const/4 v6, 0x1

    aget-byte v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x7f

    if-le v6, v7, :cond_c

    .line 1784
    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1786
    :cond_c
    const/4 v6, 0x1

    aget-byte v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1787
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    const/16 v7, 0x11

    if-ne v6, v7, :cond_e

    .line 1788
    const/4 v6, 0x0

    const/16 v7, 0x8

    aput-byte v7, v4, v6

    .line 1794
    :cond_d
    :goto_6
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1797
    const/4 v6, 0x2

    :try_start_3
    iget v7, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    .line 1798
    :catch_2
    move-exception v1

    .line 1800
    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "fail make ussd string"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1778
    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_3
    move-exception v1

    .line 1780
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 1789
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xf0

    if-nez v6, :cond_d

    .line 1790
    const-string v6, "CBS DCS for GSM 7bit will be changed to SMS DCS for GSM 7bit!!! "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1791
    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v4, v6

    goto :goto_6
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 10
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    .line 1563
    if-nez p1, :cond_1

    .line 1670
    :cond_0
    :goto_0
    return-void

    .line 1566
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1568
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x0

    .line 1569
    .local v1, "cmdInput":Lcom/android/internal/telephony/cat/Input;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_2

    .line 1570
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v1

    .line 1574
    :cond_2
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    .line 1575
    .local v7, "tag":I
    iget-boolean v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v8, :cond_3

    .line 1576
    or-int/lit16 v7, v7, 0x80

    .line 1578
    :cond_3
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1579
    const/4 v8, 0x3

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1580
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1581
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1582
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1593
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_NTTSTK"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1595
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8

    or-int/lit8 v7, v8, 0x0

    .line 1600
    :goto_1
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1601
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1602
    const/16 v8, 0x82

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1603
    const/16 v8, 0x81

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1608
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_4

    .line 1609
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasTextAttribute()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 1610
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1615
    :cond_4
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v8, :cond_5

    .line 1616
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v8, :cond_5

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getHasIcon()Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 1617
    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    .line 1622
    :cond_5
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    .line 1623
    iget-boolean v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v8, :cond_6

    .line 1624
    or-int/lit16 v7, v7, 0x80

    .line 1626
    :cond_6
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1627
    if-eqz p3, :cond_b

    const/4 v5, 0x2

    .line 1628
    .local v5, "length":I
    :goto_2
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1629
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1632
    if-eqz p3, :cond_7

    .line 1633
    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1637
    :cond_7
    if-eqz p5, :cond_c

    .line 1638
    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    .line 1643
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    .line 1644
    .local v6, "rawData":[B
    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1649
    .local v3, "hexString":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x0

    invoke-interface {v8, v3, v9}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    .line 1652
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 1653
    const/4 v8, 0x0

    sput-object v8, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    .line 1656
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "LGT"

    const-string v9, "EUR"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "true"

    const-string v9, "ril.domesticOtaStart"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1660
    iget v8, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    .line 1661
    .local v2, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cmdType : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1662
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resultCode : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1663
    sget-object v8, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v2, v8, :cond_8

    sget-object v8, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v2, v8, :cond_0

    :cond_8
    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    if-eq p2, v8, :cond_9

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v8, :cond_0

    .line 1666
    :cond_9
    new-instance v4, Landroid/content/Intent;

    const-string v8, "com.sec.android.sktota.usim.FAIL"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v4, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1597
    .end local v2    # "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "length":I
    .end local v6    # "rawData":[B
    :cond_a
    sget-object v8, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v7

    goto/16 :goto_1

    .line 1627
    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 1640
    .restart local v5    # "length":I
    :cond_c
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto/16 :goto_3
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2544
    const/4 v0, 0x0

    .line 2545
    .local v0, "validResponse":Z
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2547
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2548
    const/4 v0, 0x1

    .line 2553
    :cond_1
    :goto_0
    return v0

    .line 2549
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    .line 2550
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    .line 2551
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResponse for last valid cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 4

    .prologue
    .line 679
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 680
    :try_start_0
    const-string v0, "Disposing CatService object"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 684
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 687
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 688
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    .line 690
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    .line 692
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    .line 694
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;)V

    .line 695
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSendDTMFResult(Landroid/os/Handler;)V

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSendSmsResult(Landroid/os/Handler;)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallControlResult(Landroid/os/Handler;)V

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 702
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 706
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    .line 707
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    .line 710
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    .line 711
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 713
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 714
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->dispose()V

    .line 715
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v0, :cond_2

    .line 716
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 717
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    .line 722
    :cond_2
    :goto_0
    monitor-exit v1

    .line 723
    return-void

    .line 719
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error: invaild slot id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 727
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 728
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2033
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2035
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2479
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized CAT command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 2040
    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ril message arrived,slotid:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2041
    const/16 v19, 0x0

    .line 2042
    .local v19, "data":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2043
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 2044
    .local v14, "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_0

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 2046
    :try_start_0
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19    # "data":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2053
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .restart local v19    # "data":Ljava/lang/String;
    :cond_0
    const-string v2, "true"

    const-string v7, "ro.ril.stk_qmi_ril"

    const-string v8, "true"

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8}, Lcom/android/internal/telephony/cat/CatService;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2055
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->isSetUpMenu(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2056
    new-instance v2, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v19

    invoke-direct {v2, v7, v0}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->saveBackUpProactiveCmd(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 2060
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v7, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v19

    invoke-direct {v7, v8, v0}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .line 2481
    .end local v19    # "data":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 2047
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v20

    .line 2048
    .local v20, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 2063
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "e":Ljava/lang/ClassCastException;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v7, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 2066
    :sswitch_2
    const-string v2, "LGT"

    const-string v7, "EUR"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    .line 2069
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    .line 2070
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2073
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 2078
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    .line 2081
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    .line 2084
    :sswitch_5
    const-string v2, "MSG_ID_ICC_CHANGED"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2085
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->updateIccAvailability()V

    goto :goto_0

    .line 2088
    :sswitch_6
    const-string v2, "MSG_ID_ICC_REFRESH"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2089
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 2090
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 2091
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_4

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_4

    .line 2092
    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    .line 2096
    :try_start_1
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .line 2097
    .local v22, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string v2, "send refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2099
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_3

    .line 2100
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    .line 2101
    :cond_3
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->launchSimRefreshMsgAndCancelNoti(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 2102
    .end local v22    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :catch_1
    move-exception v20

    .line 2103
    .restart local v20    # "e":Ljava/lang/ClassCastException;
    const-string v2, "ClassCastException from SIM_REFRESH"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2108
    .end local v20    # "e":Ljava/lang/ClassCastException;
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icc REFRESH with exception: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2111
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :cond_5
    const-string v2, "IccRefresh Message is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2115
    :sswitch_7
    const-string v2, "Received CAT CC Alpha message from card"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2116
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_7

    .line 2117
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 2118
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_6

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_6

    .line 2119
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastAlphaMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2121
    :cond_6
    const-string v2, "CAT Alpha message: ar.result is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2124
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :cond_7
    const-string v2, "CAT Alpha message: msg.obj is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2130
    :sswitch_8
    const-string v2, "MSG_ID_PHONE_DISCONNECT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2131
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_2

    .line 2132
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z

    .line 2133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2137
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget v3, v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->event:I

    .line 2138
    .local v3, "event":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget v4, v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->sourceID:I

    .line 2139
    .local v4, "sourceId":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget v5, v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->destinationID:I

    .line 2140
    .local v5, "destinationId":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget-object v6, v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->additionalInfo:[B

    .line 2141
    .local v6, "additionalInfo":[B
    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto/16 :goto_0

    .line 2145
    .end local v3    # "event":I
    .end local v4    # "sourceId":I
    .end local v5    # "destinationId":I
    .end local v6    # "additionalInfo":[B
    :sswitch_a
    const-string v2, "handleMsg : MSG_ID_RELEASE_COMPLETE_MESSAGE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2146
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 2148
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2149
    const/16 v25, 0x0

    .line 2150
    .local v25, "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 2151
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 2152
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_8

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_8

    .line 2154
    :try_start_2
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    .end local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    check-cast v25, Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2161
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .restart local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :cond_8
    if-nez v25, :cond_9

    .line 2162
    new-instance v25, Lcom/android/internal/telephony/SSReleaseCompleteNotification;

    .end local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/SSReleaseCompleteNotification;-><init>()V

    .line 2165
    .restart local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :cond_9
    const-string v2, "got ReleaseComplete and need it"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_10

    .line 2169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCallType : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v2, v7, :cond_d

    .line 2172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSReleaseCompleteNotification.status : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2173
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_a

    .line 2174
    const/4 v2, 0x1

    const v7, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 2175
    const-string v2, " WAITING_USSD_ACTION_REQUIRE_TIME "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2155
    .end local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_2
    move-exception v20

    .line 2156
    .restart local v20    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 2177
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "e":Ljava/lang/ClassCastException;
    .restart local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :cond_a
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    const/16 v7, 0x64

    if-ne v2, v7, :cond_b

    .line 2178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2179
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    goto/16 :goto_0

    .line 2181
    :cond_b
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    if-eqz v2, :cond_c

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    const/4 v7, 0x6

    if-le v2, v7, :cond_d

    :cond_c
    const-string v2, "XSE"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "XMM6262"

    const-string v7, "ril.modem.board"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2182
    const/4 v2, 0x1

    const v7, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 2183
    const-string v2, " No need to send TR to CP "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2188
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/cat/CallType;

    if-eq v2, v7, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/cat/CallType;

    if-ne v2, v7, :cond_f

    .line 2190
    :cond_e
    const-string v2, "send fail TR "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2191
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2193
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v2, v7, v1, v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/SSReleaseCompleteNotification;Lcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2195
    :cond_10
    const-string v2, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2201
    .end local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :pswitch_2
    const-string v2, "mWaitingSetupCallHoldResult = true"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2202
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2209
    :sswitch_b
    const-string v2, "MSG_ID_TIMEOUT timeout!!!"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_11

    .line 2211
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    goto/16 :goto_0

    .line 2214
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    packed-switch v2, :pswitch_data_1

    .line 2309
    :cond_12
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    goto/16 :goto_0

    .line 2217
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x11

    if-ne v2, v7, :cond_14

    .line 2218
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_13

    .line 2219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 2221
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 2223
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v2, v7, :cond_12

    .line 2224
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_15

    .line 2225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 2227
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    .line 2232
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2235
    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_16

    .line 2236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2238
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2246
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 2247
    const-string v2, "setup call address is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2251
    :cond_17
    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2253
    .local v21, "intent":Landroid/content/Intent;
    if-nez v21, :cond_18

    .line 2254
    const-string v2, "fail to make call intent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2258
    :cond_18
    const/high16 v2, 0x10000000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2259
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 2260
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v7

    if-eq v2, v7, :cond_19

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v7

    if-ne v2, v7, :cond_1b

    .line 2261
    :cond_19
    const-string v2, "simSlot"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2262
    const-string v2, "simnum"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v7, "telecom"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telecom/TelecomManager;

    .line 2265
    .local v26, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual/range {v26 .. v26}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v13

    .line 2266
    .local v13, "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const-string v7, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2267
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_1a

    .line 2268
    const-string v2, "startTimeOut(WAITING_SETUP_CALL_CONNECTED_RESULT)"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2269
    const/16 v2, 0x8

    const/16 v7, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 2275
    :goto_2
    :try_start_3
    const-string v2, "*************call intent for CDMA 1"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2276
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 2277
    :catch_3
    move-exception v20

    .line 2278
    .local v20, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityNotFoundException 1"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2271
    .end local v20    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1a
    const-string v2, "WAITING_SETUP_CALL_DISCONNECT_RESULT startTimeOut(WAITING_SETUP_CALL)"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2272
    const/4 v2, 0x4

    const/16 v7, 0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    goto :goto_2

    .line 2282
    .end local v13    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v26    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1b
    const-string v2, "*************call intent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    .line 2286
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 2287
    :catch_4
    move-exception v20

    .line 2288
    .restart local v20    # "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityNotFoundException 2"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2293
    .end local v20    # "e":Landroid/content/ActivityNotFoundException;
    .end local v21    # "intent":Landroid/content/Intent;
    :pswitch_7
    const-string v2, "WAITING_SETUP_CALL_CONNECTED_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2295
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2296
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    goto/16 :goto_1

    .line 2301
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2306
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    .line 2312
    :sswitch_c
    const-string v2, "MSG_ID_SEND_DTMF_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2313
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2314
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2315
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 2316
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1d

    .line 2317
    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    .line 2318
    .local v18, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v7, :cond_1c

    .line 2319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2321
    :cond_1c
    const-string v2, "send DTMF Error except GENERIC_FAILURE!!!"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2325
    .end local v18    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2330
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    const-string v2, "handleMsg : MSG_ID_SEND_SMS_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2332
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    .line 2334
    const-string v2, "VOD"

    const-string v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 2335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_2

    .line 2340
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Msg ID data:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2342
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v24, v0

    .line 2343
    .local v24, "result":[I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1f

    .line 2344
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 2345
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_1f

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1f

    .line 2347
    :try_start_5
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v24, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .line 2354
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :cond_1f
    const/4 v2, 0x0

    aget v2, v24, v2

    sparse-switch v2, :sswitch_data_1

    .line 2388
    const-string v2, "SMS SEND GENERIC FAIL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2389
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_24

    .line 2390
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2348
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_5
    move-exception v20

    .line 2349
    .local v20, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 2356
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "e":Ljava/lang/ClassCastException;
    :sswitch_e
    const-string v2, "SMS SEND OK"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2357
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_20

    .line 2358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2360
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2364
    :sswitch_f
    const-string v2, "SMS SEND FAIL - MEMORY NOT AVAILABLE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2365
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_21

    .line 2366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2368
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2372
    :sswitch_10
    const-string v2, "SMS SEND FAIL RETRY"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2373
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_22

    .line 2374
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2376
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2380
    :sswitch_11
    const-string v2, "NO RP-ACK"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2381
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_23

    .line 2382
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2384
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2392
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2399
    .end local v24    # "result":[I
    :sswitch_12
    const-string v2, "handleMsg : MSG_ID_CALL_CONTROL_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2400
    const/4 v15, 0x0

    .line 2401
    .local v15, "callcontrol_result":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_25

    .line 2402
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 2403
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_25

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_25

    .line 2405
    :try_start_6
    iget-object v15, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v15    # "callcontrol_result":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    .line 2411
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .restart local v15    # "callcontrol_result":Ljava/lang/String;
    :cond_25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call control result data"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2412
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/cat/CatService;->handleCallControlResultNoti(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2406
    .end local v15    # "callcontrol_result":Ljava/lang/String;
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_6
    move-exception v20

    .line 2407
    .restart local v20    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 2415
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "e":Ljava/lang/ClassCastException;
    :sswitch_13
    const-string v2, "pause 3 secs"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2416
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->processDTMFString()V

    goto/16 :goto_0

    .line 2419
    :sswitch_14
    const/16 v23, 0x0

    .line 2420
    .local v23, "res":Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_2

    .line 2421
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "res":Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
    check-cast v23, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .line 2422
    .restart local v23    # "res":Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v23

    iget-boolean v10, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .line 2426
    .end local v23    # "res":Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
    :sswitch_15
    const-string v2, "Send InCallScreen Intent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2428
    :try_start_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    .line 2429
    :catch_7
    move-exception v20

    .line 2430
    .local v20, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityNotFoundException"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2435
    .end local v20    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_16
    const-string v2, "handleMsg : MSG_ID_CALL_STATUS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2436
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_2

    .line 2437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Msg ID data:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2438
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 2439
    .local v17, "callstatus":[I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_26

    .line 2440
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .line 2441
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_26

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_26

    .line 2443
    :try_start_8
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v17, v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    .line 2449
    .end local v14    # "ar":Landroid/os/AsyncResult;
    :cond_26
    const/4 v2, 0x0

    aget v16, v17, v2

    .line 2450
    .local v16, "callstat":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call status result data"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2451
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v2, :cond_27

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CallStatus;->fromInt(I)Lcom/android/internal/telephony/cat/CallStatus;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_CONNECTED:Lcom/android/internal/telephony/cat/CallStatus;

    if-ne v2, v7, :cond_27

    .line 2454
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2455
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 2456
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 2458
    :cond_27
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v2, :cond_2

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CallStatus;->fromInt(I)Lcom/android/internal/telephony/cat/CallStatus;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_RELEASED:Lcom/android/internal/telephony/cat/CallStatus;

    if-ne v2, v7, :cond_2

    .line 2461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 2462
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    .line 2463
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    goto/16 :goto_0

    .line 2444
    .end local v16    # "callstat":I
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_8
    move-exception v20

    .line 2445
    .local v20, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .line 2470
    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "callstatus":[I
    .end local v20    # "e":Ljava/lang/ClassCastException;
    :sswitch_17
    const-string v2, "Ril Connected so we send Stk Running Request"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2474
    :sswitch_18
    const-string v2, "SIM ready. Reporting STK service running now..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2035
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x7 -> :sswitch_18
        0x8 -> :sswitch_5
        0x9 -> :sswitch_7
        0xa -> :sswitch_3
        0x14 -> :sswitch_2
        0x18 -> :sswitch_16
        0x1e -> :sswitch_6
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_d
        0x69 -> :sswitch_12
        0x6a -> :sswitch_9
        0x6b -> :sswitch_8
        0x6c -> :sswitch_13
        0x6d -> :sswitch_14
        0x6e -> :sswitch_15
        0x6f -> :sswitch_17
    .end sparse-switch

    .line 2146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2214
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 2354
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_e
        0x8016 -> :sswitch_f
        0x802a -> :sswitch_10
        0x806f -> :sswitch_11
    .end sparse-switch
.end method

.method public hasIMSCall()Z
    .locals 14

    .prologue
    .line 3745
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 3746
    .local v6, "defaultPhone":Lcom/android/internal/telephony/Phone;
    const/4 v10, 0x0

    .line 3748
    .local v10, "retValue":Z
    if-eqz v6, :cond_2

    .line 3749
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3750
    .local v0, "activeCall":Lcom/android/internal/telephony/Call;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 3751
    .local v7, "holdCall":Lcom/android/internal/telephony/Call;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .line 3753
    .local v11, "ringingCall":Lcom/android/internal/telephony/Call;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3755
    .local v3, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3756
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3757
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3759
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .line 3760
    .local v1, "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    .line 3761
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    .line 3763
    .local v5, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .line 3764
    .local v4, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_1

    .line 3765
    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    .line 3766
    .local v2, "callDetails":Lcom/android/internal/telephony/CallDetails;
    if-eqz v2, :cond_1

    iget v12, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    .line 3768
    const/4 v10, 0x1

    .line 3769
    goto :goto_0

    .line 3776
    .end local v0    # "activeCall":Lcom/android/internal/telephony/Call;
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    .end local v3    # "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v5    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v7    # "holdCall":Lcom/android/internal/telephony/Call;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasIMSCall : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3777
    return v10
.end method

.method public isAirplaneMode()Z
    .locals 2

    .prologue
    .line 3858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhone.mCM.getRadioState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3859
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    .line 2535
    monitor-enter p0

    if-nez p1, :cond_0

    .line 2541
    :goto_0
    monitor-exit p0

    return-void

    .line 2539
    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2540
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2535
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V
    .locals 2
    .param p1, "eventMsg"    # Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    .prologue
    .line 3065
    monitor-enter p0

    :try_start_0
    const-string v1, "onEventDownload()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3066
    if-nez p1, :cond_0

    .line 3072
    :goto_0
    monitor-exit p0

    return-void

    .line 3070
    :cond_0
    const/16 v1, 0x6a

    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3071
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3065
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method processDTMFString()V
    .locals 4

    .prologue
    const/16 v3, 0x70

    .line 3311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dtmfStringLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    DTMFString : <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3312
    const/4 v0, 0x0

    .line 3313
    .local v0, "countP":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_0

    .line 3314
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3315
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->sendDtmfLastRequest(C)V

    .line 3334
    :cond_0
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    mul-int/lit16 v2, v2, 0xdac

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    .line 3335
    :goto_1
    return-void

    .line 3319
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3

    .line 3320
    add-int/lit8 v0, v0, 0x1

    .line 3321
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    .line 3323
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3325
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3326
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3327
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    goto :goto_1

    .line 3330
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->sendDtmfRequest(C)V

    .line 3332
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    goto/16 :goto_0
.end method

.method public registerPhone(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 3037
    const-string v0, "CatService phone reloaded!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3039
    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 3040
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 3041
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerPhone(Lcom/android/internal/telephony/PhoneBase;)V

    .line 3049
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 3043
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 3044
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 3045
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 3046
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerPhone(Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0
.end method

.method sendDtmfLastRequest(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 3344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfLastRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3345
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 3346
    return-void
.end method

.method sendDtmfRequest(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    .line 3339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3340
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    .line 3341
    return-void
.end method

.method public declared-synchronized sendEnvelopeToTriggerBip()V
    .locals 7

    .prologue
    .line 3075
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3078
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd6

    .line 3079
    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3082
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3085
    const/16 v4, 0x19

    .line 3086
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3087
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3088
    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3091
    const/16 v4, 0x82

    .line 3092
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3093
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3094
    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3095
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3098
    const/4 v4, 0x5

    .line 3099
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3101
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 3104
    .local v3, "rawData":[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .line 3105
    .local v2, "len":I
    const/4 v5, 0x1

    int-to-byte v6, v2

    aput-byte v6, v3, v5

    .line 3107
    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 3109
    .local v1, "hexString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendEnvelopeToTriggerBip cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3111
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3112
    monitor-exit p0

    return-void

    .line 3075
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "hexString":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rawData":[B
    .end local v4    # "tag":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized sendEnvelopeToTriggerBipforOTA(Z)V
    .locals 7
    .param p1, "unreg"    # Z

    .prologue
    .line 3116
    monitor-enter p0

    const/16 v5, 0x25

    :try_start_0
    new-array v3, v5, [B

    fill-array-data v3, :array_0

    .line 3126
    .local v3, "sms_tpdu":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3129
    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd1

    .line 3130
    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3133
    const/16 v5, 0x34

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3136
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3137
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3138
    const/16 v5, 0x83

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3139
    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3142
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3143
    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3144
    const/16 v5, 0x98

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3145
    const/16 v5, 0x33

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3146
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3147
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3148
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3149
    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3152
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3153
    const/16 v5, 0x26

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3154
    const/4 v5, 0x0

    const/16 v6, 0x25

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3155
    if-eqz p1, :cond_0

    .line 3156
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3160
    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 3161
    .local v2, "rawData":[B
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .line 3163
    .local v1, "hexString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendEnvelopeToTriggerBipforOTA cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3165
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3166
    monitor-exit p0

    return-void

    .line 3158
    .end local v1    # "hexString":Ljava/lang/String;
    .end local v2    # "rawData":[B
    :cond_0
    const/4 v5, 0x5

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3116
    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "sms_tpdu":[B
    .end local v4    # "tag":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    nop

    :array_0
    .array-data 1
        -0x1ct
        0xat
        -0x68t
        0x33t
        0x11t
        0x11t
        0x11t
        0x11t
        0x7ft
        0x16t
        0xct
        0x1t
        0x9t
        0x15t
        0x57t
        0x32t
        0x36t
        0x14t
        0x2t
        0x70t
        0x0t
        0x0t
        0xft
        0xdt
        0x0t
        0x1t
        0x20t
        0x20t
        -0x50t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public declared-synchronized sendEnvelopeforSMSPPdownload([B[B)V
    .locals 9
    .param p1, "addr"    # [B
    .param p2, "tpdu"    # [B

    .prologue
    const/4 v7, 0x0

    .line 3169
    monitor-enter p0

    if-eqz p2, :cond_0

    const/4 v8, 0x0

    :try_start_0
    aget-byte v6, p2, v8

    .line 3171
    .local v6, "tpdu_len":I
    :goto_0
    if-gtz v6, :cond_1

    .line 3172
    const-string v7, "sendEnvelopeforSMSPPdownload : tpdu is not exist!"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3214
    :goto_1
    monitor-exit p0

    return-void

    .end local v6    # "tpdu_len":I
    :cond_0
    move v6, v7

    .line 3169
    goto :goto_0

    .line 3176
    .restart local v6    # "tpdu_len":I
    :cond_1
    if-eqz p1, :cond_4

    const/4 v8, 0x0

    :try_start_1
    aget-byte v0, p1, v8

    .line 3177
    .local v0, "addr_len":I
    :goto_2
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, 0x2

    :cond_2
    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v6, 0x2

    add-int v2, v7, v8

    .line 3181
    .local v2, "data_len":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3184
    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xd1

    .line 3185
    .local v5, "tag":I
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3188
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3191
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3192
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3193
    const/16 v7, 0x83

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3194
    const/16 v7, 0x81

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3197
    if-lez v0, :cond_3

    .line 3198
    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3199
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3200
    const/4 v7, 0x1

    invoke-virtual {v1, p1, v7, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3204
    :cond_3
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3205
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 3206
    const/4 v7, 0x1

    invoke-virtual {v1, p2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 3208
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 3209
    .local v4, "rawData":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 3211
    .local v3, "hexString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendEnvelopeforSMSPPdownload cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3213
    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3169
    .end local v0    # "addr_len":I
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data_len":I
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v4    # "rawData":[B
    .end local v5    # "tag":I
    .end local v6    # "tpdu_len":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v6    # "tpdu_len":I
    :cond_4
    move v0, v7

    .line 3176
    goto :goto_2
.end method

.method public sendSessionEndTerminalResponseForAirplaneMode()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 3717
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    .line 3718
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .line 3720
    :cond_0
    return-void
.end method

.method public declared-synchronized sentTerminalResponseForSetupMenu(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3846
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3847
    monitor-exit p0

    return-void

    .line 3846
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEventListChannelStatus(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 3850
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    iput-boolean p1, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorChannelStatusEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3851
    monitor-exit p0

    return-void

    .line 3850
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEventListDataAvailable(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    .line 3854
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    iput-boolean p1, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorDataDownloadEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3855
    monitor-exit p0

    return-void

    .line 3854
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startTimeOut(II)V
    .locals 4
    .param p1, "timeDest"    # I
    .param p2, "duration"    # I

    .prologue
    .line 3058
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    .line 3059
    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    .line 3060
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3061
    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 6
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    .line 2959
    const/4 v0, 0x0

    .line 2960
    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .line 2962
    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p3, :cond_0

    .line 2966
    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 2967
    if-eqz v0, :cond_0

    .line 2968
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    .line 2972
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2973
    if-eqz v1, :cond_3

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    if-eq v2, v1, :cond_3

    .line 2974
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    .line 2975
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 2978
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    if-eqz v2, :cond_2

    .line 2979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterForReady slotid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "instance : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2980
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 2982
    :cond_2
    const-string v2, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2984
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object v1, v2, v4

    .line 2985
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object v0, v2, v4

    .line 2988
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2990
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForRecordsLoaded slotid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " instance:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2994
    :cond_3
    monitor-exit v3

    .line 2995
    return-void

    .line 2994
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method updateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2998
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_1

    .line 3022
    :cond_0
    :goto_0
    return-void

    .line 3002
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 3003
    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 3004
    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_2

    .line 3005
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    .line 3007
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 3008
    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .line 3009
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Old Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3010
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v3, :cond_3

    .line 3012
    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_0

    .line 3013
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_4

    .line 3016
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0

    .line 3017
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_0

    .line 3019
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    .line 3020
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    goto :goto_0
.end method
